; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_ctx_skipatime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vfs_ctx_skipatime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@P_LRAGE_VNODES = common dso_local global i32 0, align 4
@UT_RAGE_VNODES = common dso_local global i32 0, align 4
@UT_ATIME_UPDATE = common dso_local global i32 0, align 4
@P_VFS_IOPOLICY_ATIME_UPDATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_ctx_skipatime(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.uthread*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_3__* @vfs_context_proc(i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @vfs_context_thread(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = call %struct.uthread* @get_bsdthread_info(i64 %17)
  store %struct.uthread* %18, %struct.uthread** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @P_LRAGE_VNODES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %50

26:                                               ; preds = %16
  %27 = load %struct.uthread*, %struct.uthread** %4, align 8
  %28 = icmp ne %struct.uthread* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.uthread*, %struct.uthread** %4, align 8
  %31 = getelementptr inbounds %struct.uthread, %struct.uthread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UT_RAGE_VNODES, align 4
  %34 = load i32, i32* @UT_ATIME_UPDATE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %50

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @P_VFS_IOPOLICY_ATIME_UPDATES, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %50

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %13, %1
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %38, %25
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @vfs_context_proc(i32) #1

declare dso_local i64 @vfs_context_thread(i32) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
