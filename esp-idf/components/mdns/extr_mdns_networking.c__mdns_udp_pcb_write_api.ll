; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__mdns_udp_pcb_write_api.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_networking.c__mdns_udp_pcb_write_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.tcpip_api_call_data = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i8*, i32, i32, i32 }
%struct.netif = type { i32 }

@_mdns_server = common dso_local global %struct.TYPE_8__* null, align 8
@ERR_IF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tcpip_api_call_data*)* @_mdns_udp_pcb_write_api to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_mdns_udp_pcb_write_api(%struct.tcpip_api_call_data* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tcpip_api_call_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  store %struct.tcpip_api_call_data* %0, %struct.tcpip_api_call_data** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = load %struct.tcpip_api_call_data*, %struct.tcpip_api_call_data** %3, align 8
  %9 = bitcast %struct.tcpip_api_call_data* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @_mdns_server, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %21
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @_mdns_get_esp_netif(i64 %25)
  %27 = call i8* @esp_netif_get_netif_impl(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pbuf_free(i32 %33)
  %35 = load i8*, i8** @ERR_IF, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @ERR_IF, align 8
  store i8* %38, i8** %2, align 8
  br label %63

39:                                               ; preds = %1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = bitcast i8* %52 to %struct.netif*
  %54 = call i8* @udp_sendto_if(i32 %42, i32 %45, i32 %48, i32 %51, %struct.netif* %53)
  store i8* %54, i8** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pbuf_free(i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %39, %30
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
}

declare dso_local i8* @esp_netif_get_netif_impl(i32) #1

declare dso_local i32 @_mdns_get_esp_netif(i64) #1

declare dso_local i32 @pbuf_free(i32) #1

declare dso_local i8* @udp_sendto_if(i32, i32, i32, i32, %struct.netif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
