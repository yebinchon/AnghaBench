; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_ctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_bsdthread_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.bsdthread_ctl_args = type { i32, i64, i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsdthread_ctl(%struct.proc* %0, %struct.bsdthread_ctl_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.bsdthread_ctl_args*, align 8
  %7 = alloca i32*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.bsdthread_ctl_args* %1, %struct.bsdthread_ctl_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %9 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %84 [
    i32 130, label %11
    i32 132, label %24
    i32 133, label %38
    i32 131, label %51
    i32 128, label %55
    i32 134, label %69
    i32 129, label %82
    i32 136, label %82
    i32 135, label %82
  ]

11:                                               ; preds = %3
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %14 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %17 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %21 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bsdthread_add_explicit_override(%struct.proc* %12, i32 %15, i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %86

24:                                               ; preds = %3
  %25 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %26 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ENSURE_UNUSED(i32 %27)
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %31 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %34 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @bsdthread_remove_explicit_override(%struct.proc* %29, i32 %32, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %86

38:                                               ; preds = %3
  %39 = load %struct.proc*, %struct.proc** %5, align 8
  %40 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %41 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %44 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %48 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @workq_thread_add_dispatch_override(%struct.proc* %39, i32 %42, i32 %46, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %86

51:                                               ; preds = %3
  %52 = load %struct.proc*, %struct.proc** %5, align 8
  %53 = call i32 (...) @current_thread()
  %54 = call i32 @workq_thread_reset_dispatch_override(%struct.proc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %86

55:                                               ; preds = %3
  %56 = load %struct.proc*, %struct.proc** %5, align 8
  %57 = call i32 (...) @current_thread()
  %58 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %59 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %62 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %66 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bsdthread_set_self(%struct.proc* %56, i32 %57, i32 %60, i32 %64, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %86

69:                                               ; preds = %3
  %70 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %71 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ENSURE_UNUSED(i32 %72)
  %74 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %75 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bsdthread_ctl_args*, %struct.bsdthread_ctl_args** %6, align 8
  %78 = getelementptr inbounds %struct.bsdthread_ctl_args, %struct.bsdthread_ctl_args* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @bsdthread_get_max_parallelism(i32 %76, i64 %79, i32* %80)
  store i32 %81, i32* %4, align 4
  br label %86

82:                                               ; preds = %3, %3, %3
  %83 = load i32, i32* @ENOTSUP, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %3
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %82, %69, %55, %51, %38, %24, %11
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @bsdthread_add_explicit_override(%struct.proc*, i32, i32, i32) #1

declare dso_local i32 @ENSURE_UNUSED(i32) #1

declare dso_local i32 @bsdthread_remove_explicit_override(%struct.proc*, i32, i32) #1

declare dso_local i32 @workq_thread_add_dispatch_override(%struct.proc*, i32, i32, i32) #1

declare dso_local i32 @workq_thread_reset_dispatch_override(%struct.proc*, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @bsdthread_set_self(%struct.proc*, i32, i32, i32, i32) #1

declare dso_local i32 @bsdthread_get_max_parallelism(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
