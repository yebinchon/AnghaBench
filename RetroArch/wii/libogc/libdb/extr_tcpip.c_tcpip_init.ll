; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbginterface = type { i32, i32, i32, i32, i32, i32 }
%struct.uip_ip_addr = type { i32 }
%struct.uip_netif = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@tcpip_socks = common dso_local global i32 0, align 4
@UIP_TCPIP_SOCKS = common dso_local global i32 0, align 4
@netif = common dso_local global i32 0, align 4
@uip_bba_init = common dso_local global i32 0, align 4
@uip_ipinput = common dso_local global i32 0, align 4
@listensock = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@netif_device = common dso_local global %struct.dbginterface zeroinitializer, align 4
@waittcpip = common dso_local global i32 0, align 4
@opentcpip = common dso_local global i32 0, align 4
@closetcpip = common dso_local global i32 0, align 4
@readtcpip = common dso_local global i32 0, align 4
@writetcpip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dbginterface* @tcpip_init(%struct.uip_ip_addr* %0, %struct.uip_ip_addr* %1, %struct.uip_ip_addr* %2, i32 %3) #0 {
  %5 = alloca %struct.dbginterface*, align 8
  %6 = alloca %struct.uip_ip_addr*, align 8
  %7 = alloca %struct.uip_ip_addr*, align 8
  %8 = alloca %struct.uip_ip_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.uip_netif*, align 8
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca i32, align 4
  store %struct.uip_ip_addr* %0, %struct.uip_ip_addr** %6, align 8
  store %struct.uip_ip_addr* %1, %struct.uip_ip_addr** %7, align 8
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 4, i32* %13, align 4
  %14 = call i32 (...) @memr_init()
  %15 = call i32 (...) @uip_ipinit()
  %16 = call i32 (...) @uip_pbuf_init()
  %17 = call i32 (...) @uip_netif_init()
  %18 = call i32 (...) @uip_tcp_init()
  %19 = load i32, i32* @tcpip_socks, align 4
  %20 = load i32, i32* @UIP_TCPIP_SOCKS, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call i32 @UIP_MEMSET(i32 %19, i32 0, i32 %23)
  %25 = call i32 @uip_bba_create(i32* @netif)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %6, align 8
  %27 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %7, align 8
  %28 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @uip_bba_init, align 4
  %31 = load i32, i32* @uip_ipinput, align 4
  %32 = call %struct.uip_netif* @uip_netif_add(i32* @netif, %struct.uip_ip_addr* %26, %struct.uip_ip_addr* %27, %struct.uip_ip_addr* %28, i32 %29, i32 %30, i32 %31)
  store %struct.uip_netif* %32, %struct.uip_netif** %11, align 8
  %33 = load %struct.uip_netif*, %struct.uip_netif** %11, align 8
  %34 = icmp ne %struct.uip_netif* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %4
  %36 = load %struct.uip_netif*, %struct.uip_netif** %11, align 8
  %37 = call i32 @uip_netif_setdefault(%struct.uip_netif* %36)
  %38 = call i32 (...) @tcpip_socket()
  store i32 %38, i32* @listensock, align 4
  %39 = load i32, i32* @listensock, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.dbginterface* null, %struct.dbginterface** %5, align 8
  br label %72

42:                                               ; preds = %35
  %43 = load i32, i32* @INADDR_ANY, align 4
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @AF_INET, align 4
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @listensock, align 4
  %52 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %53 = call i64 @tcpip_bind(i32 %51, %struct.sockaddr* %52, i32* %13)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load i32, i32* @listensock, align 4
  %57 = call i32 @tcpip_close(i32 %56)
  store i32 -1, i32* @listensock, align 4
  store %struct.dbginterface* null, %struct.dbginterface** %5, align 8
  br label %72

58:                                               ; preds = %42
  %59 = load i32, i32* @listensock, align 4
  %60 = call i64 @tcpip_listen(i32 %59, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @listensock, align 4
  %64 = call i32 @tcpip_close(i32 %63)
  store i32 -1, i32* @listensock, align 4
  store %struct.dbginterface* null, %struct.dbginterface** %5, align 8
  br label %72

65:                                               ; preds = %58
  store i32 -1, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 0), align 4
  %66 = load i32, i32* @waittcpip, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 5), align 4
  %67 = load i32, i32* @opentcpip, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 4), align 4
  %68 = load i32, i32* @closetcpip, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 3), align 4
  %69 = load i32, i32* @readtcpip, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 2), align 4
  %70 = load i32, i32* @writetcpip, align 4
  store i32 %70, i32* getelementptr inbounds (%struct.dbginterface, %struct.dbginterface* @netif_device, i32 0, i32 1), align 4
  store %struct.dbginterface* @netif_device, %struct.dbginterface** %5, align 8
  br label %72

71:                                               ; preds = %4
  store %struct.dbginterface* null, %struct.dbginterface** %5, align 8
  br label %72

72:                                               ; preds = %71, %65, %62, %55, %41
  %73 = load %struct.dbginterface*, %struct.dbginterface** %5, align 8
  ret %struct.dbginterface* %73
}

declare dso_local i32 @memr_init(...) #1

declare dso_local i32 @uip_ipinit(...) #1

declare dso_local i32 @uip_pbuf_init(...) #1

declare dso_local i32 @uip_netif_init(...) #1

declare dso_local i32 @uip_tcp_init(...) #1

declare dso_local i32 @UIP_MEMSET(i32, i32, i32) #1

declare dso_local i32 @uip_bba_create(i32*) #1

declare dso_local %struct.uip_netif* @uip_netif_add(i32*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, i32, i32, i32) #1

declare dso_local i32 @uip_netif_setdefault(%struct.uip_netif*) #1

declare dso_local i32 @tcpip_socket(...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @tcpip_bind(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @tcpip_close(i32) #1

declare dso_local i64 @tcpip_listen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
