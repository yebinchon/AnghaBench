; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_thread.c_osi_thread_run.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_thread.c_osi_thread_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osi_thread_start_arg = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i64, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32)* }

@OSI_SEM_MAX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @osi_thread_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osi_thread_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.osi_thread_start_arg*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.osi_thread_start_arg*
  store %struct.osi_thread_start_arg* %8, %struct.osi_thread_start_arg** %3, align 8
  %9 = load %struct.osi_thread_start_arg*, %struct.osi_thread_start_arg** %3, align 8
  %10 = getelementptr inbounds %struct.osi_thread_start_arg, %struct.osi_thread_start_arg* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.osi_thread_start_arg*, %struct.osi_thread_start_arg** %3, align 8
  %13 = getelementptr inbounds %struct.osi_thread_start_arg, %struct.osi_thread_start_arg* %12, i32 0, i32 0
  %14 = call i32 @osi_sem_give(i32* %13)
  br label %15

15:                                               ; preds = %1, %64
  store i32 0, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* @OSI_SEM_MAX_TIMEOUT, align 4
  %19 = call i32 @osi_sem_take(i32* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %65

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %63, %50, %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ false, %26 ], [ %36, %31 ]
  br i1 %38, label %39, label %64

39:                                               ; preds = %37
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_5__* @fixed_queue_dequeue(i32 %46, i32 0)
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %39
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = call i32 @osi_free(%struct.TYPE_5__* %58)
  store i32 0, i32* %5, align 4
  br label %26

60:                                               ; preds = %39
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60
  br label %26

64:                                               ; preds = %37
  br label %15

65:                                               ; preds = %24
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = call i32 @osi_sem_give(i32* %69)
  %71 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @osi_sem_give(i32*) #1

declare dso_local i32 @osi_sem_take(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @fixed_queue_dequeue(i32, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_5__*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
