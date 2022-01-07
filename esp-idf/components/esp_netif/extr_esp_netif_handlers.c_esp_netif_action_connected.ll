; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_netif/extr_esp_netif_handlers.c_esp_netif_action_connected.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_netif/extr_esp_netif_handlers.c_esp_netif_action_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"esp_netif action connected with netif%p from event_id=%d\00", align 1
@ESP_NETIF_DHCP_INIT = common dso_local global i64 0, align 8
@ESP_NETIF_DHCP_STOPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"esp_event_send_internal in esp_netif_action_connected\00", align 1
@IP_EVENT = common dso_local global i32 0, align 4
@ESP_NETIF_IP_EVENT_GOT_IP = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"static ip: ip changed=%d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid static ip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_netif_action_connected(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @TAG, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %13, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @esp_netif_up(i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @esp_netif_dhcpc_get_status(i8* %20, i64* %9)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @ESP_NETIF_DHCP_INIT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @esp_netif_dhcpc_start(i8* %26)
  br label %70

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ESP_NETIF_DHCP_STOPPED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @esp_netif_get_ip_info(i8* %33, i32* %10)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @esp_netif_get_old_ip_info(i8* %35, i32* %11)
  %37 = call i64 @esp_netif_is_valid_static_ip(i32* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %41 = load i8*, i8** %5, align 8
  store i8* %41, i8** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 -1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  store i32 0, i32* %44, align 8
  %45 = call i64 @memcmp(i32* %10, i32* %11, i32 4)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %51 = call i32 @memcpy(i32* %50, i32* %10, i32 4)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @esp_netif_set_old_ip_info(i8* %52, i32* %10)
  %54 = load i32, i32* @IP_EVENT, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @ESP_NETIF_IP_EVENT_GOT_IP, align 4
  %57 = call i32 @esp_netif_get_event_id(i8* %55, i32 %56)
  %58 = call i32 @esp_event_send_internal(i32 %54, i32 %57, %struct.TYPE_3__* %12, i32 24, i32 0)
  %59 = load i32, i32* @ESP_OK, align 4
  %60 = call i32 @ESP_NETIF_CALL_CHECK(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @TAG, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @ESP_LOGD(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %68

65:                                               ; preds = %32
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @ESP_LOGE(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %49
  br label %69

69:                                               ; preds = %68, %28
  br label %70

70:                                               ; preds = %69, %25
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, ...) #1

declare dso_local i32 @esp_netif_up(i8*) #1

declare dso_local i32 @esp_netif_dhcpc_get_status(i8*, i64*) #1

declare dso_local i32 @esp_netif_dhcpc_start(i8*) #1

declare dso_local i32 @esp_netif_get_ip_info(i8*, i32*) #1

declare dso_local i32 @esp_netif_get_old_ip_info(i8*, i32*) #1

declare dso_local i64 @esp_netif_is_valid_static_ip(i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @esp_netif_set_old_ip_info(i8*, i32*) #1

declare dso_local i32 @ESP_NETIF_CALL_CHECK(i8*, i32, i32) #1

declare dso_local i32 @esp_event_send_internal(i32, i32, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @esp_netif_get_event_id(i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
