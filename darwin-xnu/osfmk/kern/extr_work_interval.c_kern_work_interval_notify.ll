; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_kern_work_interval_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_work_interval.c_kern_work_interval_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.work_interval* }
%struct.work_interval = type { i64, i64, i64 }
%struct.kern_work_interval_args = type { i64, i32 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_work_interval_notify(%struct.TYPE_6__* %0, %struct.kern_work_interval_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.kern_work_interval_args*, align 8
  %6 = alloca %struct.work_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.kern_work_interval_args* %1, %struct.kern_work_interval_args** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call %struct.TYPE_6__* (...) @current_thread()
  %13 = icmp eq %struct.TYPE_6__* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.kern_work_interval_args*, %struct.kern_work_interval_args** %5, align 8
  %17 = getelementptr inbounds %struct.kern_work_interval_args, %struct.kern_work_interval_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.work_interval*, %struct.work_interval** %23, align 8
  store %struct.work_interval* %24, %struct.work_interval** %6, align 8
  %25 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %26 = icmp eq %struct.work_interval* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %29 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.kern_work_interval_args*, %struct.kern_work_interval_args** %5, align 8
  %32 = getelementptr inbounds %struct.kern_work_interval_args, %struct.kern_work_interval_args* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27, %2
  %36 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %27
  %38 = call i32 (...) @current_task()
  store i32 %38, i32* %7, align 4
  %39 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %40 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @get_task_uniqueid(i32 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load %struct.work_interval*, %struct.work_interval** %6, align 8
  %47 = getelementptr inbounds %struct.work_interval, %struct.work_interval* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @get_task_version(i32 %49)
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45, %37
  %53 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %53, i32* %3, align 4
  br label %66

54:                                               ; preds = %45
  %55 = call i32 (...) @splsched()
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = call i32 @thread_get_urgency(%struct.TYPE_6__* %56, i32* %9, i32* %10)
  %58 = load %struct.kern_work_interval_args*, %struct.kern_work_interval_args** %5, align 8
  %59 = getelementptr inbounds %struct.kern_work_interval_args, %struct.kern_work_interval_args* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @splx(i32 %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = load %struct.kern_work_interval_args*, %struct.kern_work_interval_args** %5, align 8
  %64 = call i32 @machine_work_interval_notify(%struct.TYPE_6__* %62, %struct.kern_work_interval_args* %63)
  %65 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %54, %52, %35
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @current_thread(...) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i64 @get_task_uniqueid(i32) #1

declare dso_local i64 @get_task_version(i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_get_urgency(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @machine_work_interval_notify(%struct.TYPE_6__*, %struct.kern_work_interval_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
