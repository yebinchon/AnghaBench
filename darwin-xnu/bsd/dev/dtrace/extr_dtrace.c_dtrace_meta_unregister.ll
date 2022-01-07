; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_meta_unregister.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_meta_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_meta_pid = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"attempt to unregister non-existent dtrace meta-provider %p\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_meta_unregister(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  %8 = call i32 @lck_mtx_lock(i32* @dtrace_meta_lock)
  %9 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dtrace_meta_pid, align 8
  %12 = icmp eq %struct.TYPE_4__* %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_4__** @dtrace_meta_pid, %struct.TYPE_4__*** %4, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = bitcast %struct.TYPE_4__* %15 to i8*
  %17 = call i32 @panic(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %25 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  %26 = load i32, i32* @EBUSY, align 4
  store i32 %26, i32* %2, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dtrace_strunref(i32 %31)
  %33 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %34 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i32 @kmem_free(%struct.TYPE_4__* %35, i32 16)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %27, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @panic(i8*, i8*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_strunref(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
