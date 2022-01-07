; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_openeth.c_emac_opencores_rx_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth_mac_openeth.c_emac_opencores_rx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*, i64)* }

@pdFALSE = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ETH_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @emac_opencores_rx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_opencores_rx_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %1, %49
  %9 = load i32, i32* @pdFALSE, align 4
  %10 = load i32, i32* @portMAX_DELAY, align 4
  %11 = call i64 @ulTaskNotifyTake(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13, %47
  %15 = load i64, i64* @ETH_MAX_PACKET_SIZE, align 8
  %16 = call i64 @malloc(i64 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %4, align 8
  %18 = load i64, i64* @ETH_MAX_PACKET_SIZE, align 8
  store i64 %18, i64* %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @emac_opencores_receive(i32* %20, i32* %21, i64* %5)
  %23 = load i64, i64* @ESP_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %14
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_4__*, i32*, i64)*, i32 (%struct.TYPE_4__*, i32*, i64)** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 %33(%struct.TYPE_4__* %36, i32* %37, i64 %38)
  br label %43

40:                                               ; preds = %25
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @free(i32* %41)
  br label %43

43:                                               ; preds = %40, %28
  br label %47

44:                                               ; preds = %14
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @free(i32* %45)
  br label %48

47:                                               ; preds = %43
  br label %14

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %8
  br label %8
}

declare dso_local i64 @ulTaskNotifyTake(i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @emac_opencores_receive(i32*, i32*, i64*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
