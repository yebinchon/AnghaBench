; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_iterate_panic_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_iterate_panic_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_iterate_panic_hook = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"mp = %p, phys = %p, prev (%p: %p-%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"mp = %p, phys = %p, prev (!)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"vp = %p, phys = %p, prev (%p: %p-%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"vp = %p, phys = %p, prev (!)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vnode_iterate_panic_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnode_iterate_panic_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vnode_iterate_panic_hook*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32* %6 to %struct.vnode_iterate_panic_hook*
  store %struct.vnode_iterate_panic_hook* %7, %struct.vnode_iterate_panic_hook** %3, align 8
  %8 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %9 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @panic_phys_range_before(i64 %10, i32* %5, %struct.TYPE_3__* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %15 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %23, %25
  %27 = call i32 (i8*, i64, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i32 %19, i64 %21, i64 %26)
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %30 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i64, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %13
  %35 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %36 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @panic_phys_range_before(i64 %37, i32* %5, %struct.TYPE_3__* %4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %42 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %50, %52
  %54 = call i32 (i8*, i64, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %43, i32 %44, i32 %46, i64 %48, i64 %53)
  br label %61

55:                                               ; preds = %34
  %56 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %57 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i8*, i64, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %40
  %62 = load %struct.vnode_iterate_panic_hook*, %struct.vnode_iterate_panic_hook** %3, align 8
  %63 = getelementptr inbounds %struct.vnode_iterate_panic_hook, %struct.vnode_iterate_panic_hook* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = sub nsw i32 %65, 4096
  %67 = and i32 %66, -4096
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @panic_dump_mem(i8* %69, i32 12288)
  ret void
}

declare dso_local i64 @panic_phys_range_before(i64, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @paniclog_append_noflush(i8*, i64, i32, ...) #1

declare dso_local i32 @panic_dump_mem(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
