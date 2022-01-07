; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_intr_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_intr_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@SLC = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@context = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@qe = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"intr_recv: Give\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdio_intr_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_intr_recv(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SLC, i32 0, i32 1, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SLC, i32 0, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %17, %6
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 1), align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 1), align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %27

17:                                               ; preds = %15
  %18 = call i32 (...) @critical_enter_recv()
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 1), align 8
  %20 = load i32, i32* @qe, align 4
  %21 = call %struct.TYPE_10__* @STAILQ_NEXT(%struct.TYPE_10__* %19, i32 %20)
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 1), align 8
  %22 = call i32 (...) @critical_exit_recv()
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_EARLY_LOGV(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 0), align 8
  %26 = call i32 @xSemaphoreGiveFromISR(i32 %25, i64* %3)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SLC, i32 0, i32 0, i32 0), align 8
  br label %7

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i64, i64* %3, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @portYIELD_FROM_ISR()
  br label %33

33:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @critical_enter_recv(...) #1

declare dso_local %struct.TYPE_10__* @STAILQ_NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @critical_exit_recv(...) #1

declare dso_local i32 @ESP_EARLY_LOGV(i32, i8*) #1

declare dso_local i32 @xSemaphoreGiveFromISR(i32, i64*) #1

declare dso_local i32 @portYIELD_FROM_ISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
