; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_end_processing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkq_end_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkq = type { i32 }
%struct.kqrequest = type { i32, i32 }

@KQR_WAKEUP = common dso_local global i32 0, align 4
@KEVENT_FLAG_PARKING = common dso_local global i32 0, align 4
@KQWQAE_END_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kqworkq*, %struct.kqrequest*, i32)* @kqworkq_end_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kqworkq_end_processing(%struct.kqworkq* %0, %struct.kqrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqworkq*, align 8
  %6 = alloca %struct.kqrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kqworkq* %0, %struct.kqworkq** %5, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %10 = getelementptr inbounds %struct.kqworkq, %struct.kqworkq* %9, i32 0, i32 0
  %11 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %12 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kqueue_queue_empty(i32* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %18 = call i32 @kq_req_lock(%struct.kqworkq* %17)
  %19 = load i32, i32* @KQR_WAKEUP, align 4
  %20 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %21 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %25 = call i32 @kq_req_unlock(%struct.kqworkq* %24)
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @KEVENT_FLAG_PARKING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.kqworkq*, %struct.kqworkq** %5, align 8
  %33 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @KQWQAE_END_PROCESSING, align 4
  %36 = call i32 @kqworkq_acknowledge_events(%struct.kqworkq* %32, %struct.kqrequest* %33, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %42

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %26
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @kqueue_queue_empty(i32*, i32) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkq*) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkq*) #1

declare dso_local i32 @kqworkq_acknowledge_events(%struct.kqworkq*, %struct.kqrequest*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
