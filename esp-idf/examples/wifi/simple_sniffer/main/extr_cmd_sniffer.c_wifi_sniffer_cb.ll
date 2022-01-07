; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_wifi_sniffer_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_wifi_sniffer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@WIFI_PKT_MISC = common dso_local global i64 0, align 8
@SNIFFER_PAYLOAD_FCS_LEN = common dso_local global i64 0, align 8
@snf_rt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SNIFFER_PROCESS_PACKET_TIMEOUT_MS = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@SNIFFER_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sniffer work queue full\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No enough memory for promiscuous packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @wifi_sniffer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_sniffer_cb(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = udiv i32 %13, 1000000
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = urem i32 %19, 1000000
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @WIFI_PKT_MISC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @SNIFFER_PAYLOAD_FCS_LEN, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %37
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @malloc(i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %36
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i8* %49, i32 %52, i32 %54)
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @snf_rt, i32 0, i32 0), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %48
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @snf_rt, i32 0, i32 0), align 8
  %62 = load i32, i32* @SNIFFER_PROCESS_PACKET_TIMEOUT_MS, align 4
  %63 = call i32 @pdMS_TO_TICKS(i32 %62)
  %64 = call i64 @xQueueSend(i64 %61, %struct.TYPE_8__* %5, i32 %63)
  %65 = load i64, i64* @pdTRUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @SNIFFER_TAG, align 4
  %69 = call i32 @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  br label %71

71:                                               ; preds = %70, %48
  br label %75

72:                                               ; preds = %36
  %73 = load i32, i32* @SNIFFER_TAG, align 4
  %74 = call i32 @ESP_LOGE(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %75, %30, %2
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @xQueueSend(i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
