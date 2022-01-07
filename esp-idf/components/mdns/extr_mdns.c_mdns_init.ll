; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@ESP_OK = common dso_local global i32 0, align 4
@_mdns_server = common dso_local global %struct.TYPE_8__* null, align 8
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@MDNS_ACTION_QUEUE_LEN = common dso_local global i32 0, align 4
@WIFI_EVENT = common dso_local global i32 0, align 4
@ESP_EVENT_ANY_ID = common dso_local global i32 0, align 4
@event_handler = common dso_local global i32 0, align 4
@IP_EVENT = common dso_local global i32 0, align 4
@MDNS_IF_MAX = common dso_local global i64 0, align 8
@MDNS_IP_PROTOCOL_V6 = common dso_local global i32 0, align 4
@MDNS_IP_PROTOCOL_V4 = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@ETH_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = load i32, i32* @ESP_OK, align 4
  store i32 %6, i32* %2, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %136

11:                                               ; preds = %0
  %12 = call i64 @malloc(i32 8)
  %13 = inttoptr i64 %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** @_mdns_server, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %18 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %18, i32* %1, align 4
  br label %136

19:                                               ; preds = %11
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %21 = bitcast %struct.TYPE_8__* %20 to i64*
  %22 = call i32 @memset(i64* %21, i32 0, i32 8)
  %23 = call i32 (...) @xSemaphoreCreateMutex()
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %31, i32* %2, align 4
  br label %132

32:                                               ; preds = %19
  %33 = load i32, i32* @MDNS_ACTION_QUEUE_LEN, align 4
  %34 = call i32 @xQueueCreate(i32 %33, i32 8)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %42, i32* %2, align 4
  br label %127

43:                                               ; preds = %32
  %44 = load i32, i32* @WIFI_EVENT, align 4
  %45 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %46 = call i32 @esp_event_handler_register(i32 %44, i32 %45, i32* @event_handler, i32* null)
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @ESP_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %116

50:                                               ; preds = %43
  %51 = load i32, i32* @IP_EVENT, align 4
  %52 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %53 = call i32 @esp_event_handler_register(i32 %51, i32 %52, i32* @event_handler, i32* null)
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* @ESP_OK, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %116

57:                                               ; preds = %50
  store i64 0, i64* %3, align 8
  br label %58

58:                                               ; preds = %90, %57
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @MDNS_IF_MAX, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %93

62:                                               ; preds = %58
  %63 = load i64, i64* %3, align 8
  %64 = call i32 @_mdns_get_esp_netif(i64 %63)
  %65 = call i32 @esp_netif_get_ip6_linklocal(i32 %64, i32* %4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @_ipv6_address_is_zero(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %74 = call i32 @_mdns_enable_pcb(i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %67, %62
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @_mdns_get_esp_netif(i64 %76)
  %78 = call i32 @esp_netif_get_ip_info(i32 %77, %struct.TYPE_9__* %5)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i64, i64* %3, align 8
  %87 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %88 = call i32 @_mdns_enable_pcb(i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80, %75
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %3, align 8
  br label %58

93:                                               ; preds = %58
  %94 = call i64 (...) @_mdns_service_task_start()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @ESP_FAIL, align 4
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @ESP_OK, align 4
  store i32 %99, i32* %1, align 4
  br label %136

100:                                              ; preds = %96
  store i64 0, i64* %3, align 8
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @MDNS_IF_MAX, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i64, i64* %3, align 8
  %107 = load i32, i32* @MDNS_IP_PROTOCOL_V6, align 4
  %108 = call i32 @_mdns_disable_pcb(i64 %106, i32 %107)
  %109 = load i64, i64* %3, align 8
  %110 = load i32, i32* @MDNS_IP_PROTOCOL_V4, align 4
  %111 = call i32 @_mdns_disable_pcb(i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %105
  %113 = load i64, i64* %3, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %101

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115, %56, %49
  %117 = load i32, i32* @WIFI_EVENT, align 4
  %118 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %119 = call i32 @esp_event_handler_unregister(i32 %117, i32 %118, i32* @event_handler)
  %120 = load i32, i32* @IP_EVENT, align 4
  %121 = load i32, i32* @ESP_EVENT_ANY_ID, align 4
  %122 = call i32 @esp_event_handler_unregister(i32 %120, i32 %121, i32* @event_handler)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @vQueueDelete(i32 %125)
  br label %127

127:                                              ; preds = %116, %41
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @vSemaphoreDelete(i32 %130)
  br label %132

132:                                              ; preds = %127, %30
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %134 = call i32 @free(%struct.TYPE_8__* %133)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @_mdns_server, align 8
  %135 = load i32, i32* %2, align 4
  store i32 %135, i32* %1, align 4
  br label %136

136:                                              ; preds = %132, %98, %16, %9
  %137 = load i32, i32* %1, align 4
  ret i32 %137
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @xSemaphoreCreateMutex(...) #1

declare dso_local i32 @xQueueCreate(i32, i32) #1

declare dso_local i32 @esp_event_handler_register(i32, i32, i32*, i32*) #1

declare dso_local i32 @esp_netif_get_ip6_linklocal(i32, i32*) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local i32 @_ipv6_address_is_zero(i32) #1

declare dso_local i32 @_mdns_enable_pcb(i64, i32) #1

declare dso_local i32 @esp_netif_get_ip_info(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @_mdns_service_task_start(...) #1

declare dso_local i32 @_mdns_disable_pcb(i64, i32) #1

declare dso_local i32 @esp_event_handler_unregister(i32, i32, i32*) #1

declare dso_local i32 @vQueueDelete(i32) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
