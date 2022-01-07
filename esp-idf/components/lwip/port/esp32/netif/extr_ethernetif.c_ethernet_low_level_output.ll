; ModuleID = '/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernet_low_level_output.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/lwip/port/esp32/netif/extr_ethernetif.c_ethernet_low_level_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.pbuf = type { i32, i32, i32*, i32*, i32, i32* }

@ESP_FAIL = common dso_local global i64 0, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"corresponding esp-netif is NULL: netif=%p pbuf=%p len=%d\0A\00", align 1
@ERR_IF = common dso_local global i32 0, align 4
@PBUF_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"low_level_output: pbuf is a list, application may has bug\00", align 1
@PBUF_RAW_TX = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ERR_ABRT = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netif*, %struct.pbuf*)* @ethernet_low_level_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethernet_low_level_output(%struct.netif* %0, %struct.pbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netif*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.netif* %0, %struct.netif** %4, align 8
  store %struct.pbuf* %1, %struct.pbuf** %5, align 8
  %9 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  store %struct.pbuf* %9, %struct.pbuf** %6, align 8
  %10 = load %struct.netif*, %struct.netif** %4, align 8
  %11 = call i32* @esp_netif_get_handle_from_netif_impl(%struct.netif* %10)
  store i32* %11, i32** %7, align 8
  %12 = load i64, i64* @ESP_FAIL, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @NETIF_DEBUG, align 4
  %17 = load %struct.netif*, %struct.netif** %4, align 8
  %18 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %19 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @LWIP_DEBUGF(i32 %16, i8* %23)
  %25 = load i32, i32* @ERR_IF, align 4
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %2
  %27 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 5
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @esp_netif_transmit(i32* %32, i32 %35, i32 %38)
  store i64 %39, i64* %8, align 8
  br label %68

40:                                               ; preds = %26
  %41 = load i32, i32* @PBUF_DEBUG, align 4
  %42 = call i32 @LWIP_DEBUGF(i32 %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @PBUF_RAW_TX, align 4
  %44 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PBUF_RAM, align 4
  %48 = call %struct.pbuf* @pbuf_alloc(i32 %43, i32 %46, i32 %47)
  store %struct.pbuf* %48, %struct.pbuf** %6, align 8
  %49 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %50 = icmp ne %struct.pbuf* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %53 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %54 = call i32 @pbuf_copy(%struct.pbuf* %52, %struct.pbuf* %53)
  br label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @ERR_MEM, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %51
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @esp_netif_transmit(i32* %58, i32 %61, i32 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %67 = call i32 @pbuf_free(%struct.pbuf* %66)
  br label %68

68:                                               ; preds = %57, %31
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @ESP_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @ERR_ABRT, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ERR_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72, %55, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32* @esp_netif_get_handle_from_netif_impl(%struct.netif*) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @esp_netif_transmit(i32*, i32, i32) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @pbuf_copy(%struct.pbuf*, %struct.pbuf*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
