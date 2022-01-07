; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_stream.c__ccv_nnc_stream_schedule_try.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_stream.c__ccv_nnc_stream_schedule_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@_ccv_nnc_stream_schedule_main = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @_ccv_nnc_stream_schedule_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_stream_schedule_try(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %6 = call i32 @pthread_mutex_lock(i32* %5)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = call i32 @pthread_mutex_unlock(i32* %13)
  br label %79

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %78, %15
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  br label %79

34:                                               ; preds = %23, %18
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp eq %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 6
  %42 = load i32, i32* @_ccv_nnc_stream_schedule_main, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = call i32 @pthread_create(i32* %41, i32 0, i32 %42, %struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = call i32 @pthread_mutex_unlock(i32* %46)
  br label %79

48:                                               ; preds = %34
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %3, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @_ccv_nnc_stream_scheduler_delete_task(%struct.TYPE_9__* %52, %struct.TYPE_8__* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = call i32 @swapcontext(i32* %59, i32* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = call i32 @pthread_mutex_lock(i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %48
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = call i32 @_ccv_nnc_stream_task_done(%struct.TYPE_8__* %76)
  br label %78

78:                                               ; preds = %75, %48
  br label %18

79:                                               ; preds = %11, %39, %28
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @_ccv_nnc_stream_scheduler_delete_task(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @swapcontext(i32*, i32*) #1

declare dso_local i32 @_ccv_nnc_stream_task_done(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
