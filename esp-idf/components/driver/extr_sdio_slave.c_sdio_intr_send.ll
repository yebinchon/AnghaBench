; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_intr_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_intr_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"intr_send\00", align 1
@pdFALSE = common dso_local global i64 0, align 8
@SLC = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@STATE_SENDING = common dso_local global i64 0, align 8
@STATE_WAIT_FOR_START = common dso_local global i64 0, align 8
@context = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdio_intr_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_intr_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @TAG, align 4
  %5 = call i32 @ESP_EARLY_LOGV(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @pdFALSE, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SLC, i32 0, i32 1, i32 1), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SLC, i32 0, i32 2, i32 0), align 8
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SLC, i32 0, i32 1, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @SLC, i32 0, i32 0, i32 0), align 8
  %14 = call i64 (...) @send_get_state()
  %15 = load i64, i64* @STATE_SENDING, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @send_isr_eof(i64* %3)
  br label %20

20:                                               ; preds = %13, %10
  %21 = call i64 (...) @send_get_state()
  %22 = load i64, i64* @STATE_WAIT_FOR_START, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 0), align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @send_isr_check_new_pkt(i64* %3)
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @context, i32 0, i32 0), align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @send_isr_new_packet()
  br label %34

34:                                               ; preds = %32, %29
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @portYIELD_FROM_ISR()
  br label %40

40:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @ESP_EARLY_LOGV(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @send_get_state(...) #1

declare dso_local i32 @send_isr_eof(i64*) #1

declare dso_local i32 @send_isr_check_new_pkt(i64*) #1

declare dso_local i32 @send_isr_new_packet(...) #1

declare dso_local i32 @portYIELD_FROM_ISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
