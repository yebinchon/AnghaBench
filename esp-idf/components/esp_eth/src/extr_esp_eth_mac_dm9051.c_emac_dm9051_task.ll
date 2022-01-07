; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_emac_dm9051_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_dm9051.c_emac_dm9051_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__, i64 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32*, i64)* }
%struct.TYPE_8__ = type { i64 (%struct.TYPE_8__*, i32*, i64*)* }

@pdFALSE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@DM9051_ISR = common dso_local global i32 0, align 4
@ISR_PR = common dso_local global i32 0, align 4
@ETH_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emac_dm9051_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_dm9051_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %1, %70
  %10 = load i32, i32* @pdFALSE, align 4
  %11 = load i32, i32* @portMAX_DELAY, align 4
  %12 = call i32 @ulTaskNotifyTake(i32 %10, i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i32, i32* @DM9051_ISR, align 4
  %15 = call i32 @dm9051_register_read(%struct.TYPE_6__* %13, i32 %14, i32* %4)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load i32, i32* @DM9051_ISR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dm9051_register_write(%struct.TYPE_6__* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ISR_PR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %64, %24
  %26 = load i64, i64* @ETH_MAX_PACKET_SIZE, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %29 = call i64 @heap_caps_malloc(i64 %27, i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_8__*, i32*, i64*)*, i64 (%struct.TYPE_8__*, i32*, i64*)** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 %34(%struct.TYPE_8__* %36, i32* %37, i64* %6)
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %25
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_7__*, i32*, i64)*, i32 (%struct.TYPE_7__*, i32*, i64)** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 %49(%struct.TYPE_7__* %52, i32* %53, i64 %54)
  br label %59

56:                                               ; preds = %41
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @free(i32* %57)
  br label %59

59:                                               ; preds = %56, %44
  br label %63

60:                                               ; preds = %25
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @free(i32* %61)
  br label %63

63:                                               ; preds = %60, %59
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %25, label %69

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %9
  br label %9
}

declare dso_local i32 @ulTaskNotifyTake(i32, i32) #1

declare dso_local i32 @dm9051_register_read(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @dm9051_register_write(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @heap_caps_malloc(i64, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
