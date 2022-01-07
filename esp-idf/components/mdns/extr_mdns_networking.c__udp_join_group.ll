; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_join_group.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__udp_join_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ip4_addr = type { i32 }

@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@MDNS_IP_PROTOCOL_V4 = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @_udp_join_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_udp_join_group(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netif*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.netif* null, %struct.netif** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @_mdns_get_esp_netif(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @esp_netif_is_netif_up(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.netif* @esp_netif_get_netif_impl(i32* %20)
  store %struct.netif* %21, %struct.netif** %8, align 8
  %22 = load %struct.netif*, %struct.netif** %8, align 8
  %23 = call i32 @assert(%struct.netif* %22)
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @MDNS_IP_PROTOCOL_V4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %19
  %28 = call i32 @IP_ADDR4(%struct.TYPE_6__* %10, i32 224, i32 0, i32 0, i32 251)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.netif*, %struct.netif** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to %struct.ip4_addr*
  %36 = call i64 @igmp_joingroup_netif(%struct.netif* %32, %struct.ip4_addr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %31
  br label %51

41:                                               ; preds = %27
  %42 = load %struct.netif*, %struct.netif** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = bitcast i32* %44 to %struct.ip4_addr*
  %46 = call i64 @igmp_leavegroup_netif(%struct.netif* %42, %struct.ip4_addr* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %49, i32* %4, align 4
  br label %79

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %40
  br label %77

52:                                               ; preds = %19
  %53 = call i64 @IPADDR6_INIT(i32 767, i32 0, i32 0, i32 -83886080)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %55 = bitcast %struct.TYPE_5__* %54 to i64*
  store i64 %53, i64* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.netif*, %struct.netif** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i64 @mld6_joingroup_netif(%struct.netif* %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %58
  br label %76

67:                                               ; preds = %52
  %68 = load %struct.netif*, %struct.netif** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i64 @mld6_leavegroup_netif(%struct.netif* %68, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %66
  br label %77

77:                                               ; preds = %76, %51
  %78 = load i32, i32* @ESP_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %73, %64, %48, %38, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32* @_mdns_get_esp_netif(i32) #1

declare dso_local i32 @esp_netif_is_netif_up(i32*) #1

declare dso_local %struct.netif* @esp_netif_get_netif_impl(i32*) #1

declare dso_local i32 @assert(%struct.netif*) #1

declare dso_local i32 @IP_ADDR4(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i64 @igmp_joingroup_netif(%struct.netif*, %struct.ip4_addr*) #1

declare dso_local i64 @igmp_leavegroup_netif(%struct.netif*, %struct.ip4_addr*) #1

declare dso_local i64 @IPADDR6_INIT(i32, i32, i32, i32) #1

declare dso_local i64 @mld6_joingroup_netif(%struct.netif*, i32*) #1

declare dso_local i64 @mld6_leavegroup_netif(%struct.netif*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
