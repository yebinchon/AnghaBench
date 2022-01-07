; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpoutput_segments.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcpoutput_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcpseg = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.uip_tcp_pcb = type { i64, i64, i64, i32, i32, i32, i32, i32, i64, i32 }
%struct.uip_netif = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"uip_tcpoutput_segments: no route found.\00", align 1
@uip_tcp_ticks = common dso_local global i64 0, align 8
@UIP_PROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uip_tcpseg*, %struct.uip_tcp_pcb*)* @uip_tcpoutput_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uip_tcpoutput_segments(%struct.uip_tcpseg* %0, %struct.uip_tcp_pcb* %1) #0 {
  %3 = alloca %struct.uip_tcpseg*, align 8
  %4 = alloca %struct.uip_tcp_pcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uip_netif*, align 8
  store %struct.uip_tcpseg* %0, %struct.uip_tcpseg** %3, align 8
  store %struct.uip_tcp_pcb* %1, %struct.uip_tcp_pcb** %4, align 8
  %7 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %8 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @htonl(i32 %9)
  %11 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %12 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %10, i32* %14, align 8
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %16 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %19 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %24 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %29 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @htons(i64 %30)
  %32 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %33 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %31, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %22
  %37 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %38 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %37, i32 0, i32 6
  %39 = call i64 @ip_addr_isany(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %43 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %42, i32 0, i32 5
  %44 = call %struct.uip_netif* @uip_iproute(i32* %43)
  store %struct.uip_netif* %44, %struct.uip_netif** %6, align 8
  %45 = load %struct.uip_netif*, %struct.uip_netif** %6, align 8
  %46 = icmp eq %struct.uip_netif* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %151

49:                                               ; preds = %41
  %50 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %51 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %50, i32 0, i32 6
  %52 = load %struct.uip_netif*, %struct.uip_netif** %6, align 8
  %53 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %52, i32 0, i32 0
  %54 = call i32 @ip_addr_set(i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %49, %36
  %56 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %57 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %59 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %55
  %63 = load i64, i64* @uip_tcp_ticks, align 8
  %64 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %65 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %67 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ntohl(i32 %70)
  %72 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %73 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %62, %55
  %75 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %76 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = bitcast %struct.TYPE_4__* %77 to i32*
  %79 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %80 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = bitcast %struct.TYPE_4__* %83 to i32*
  %85 = ptrtoint i32* %78 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %91 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %89
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %100 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = sub nsw i64 %104, %98
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %108 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %111 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store %struct.TYPE_4__* %109, %struct.TYPE_4__** %113, align 8
  %114 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %115 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %119 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %122 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %121, i32 0, i32 6
  %123 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %124 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %123, i32 0, i32 5
  %125 = load i32, i32* @UIP_PROTO_TCP, align 4
  %126 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %127 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @uip_chksum_pseudo(%struct.TYPE_5__* %120, i32* %122, i32* %124, i32 %125, i32 %130)
  %132 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %133 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  %136 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %137 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %140 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %139, i32 0, i32 6
  %141 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %142 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %141, i32 0, i32 5
  %143 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %144 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %147 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @UIP_PROTO_TCP, align 4
  %150 = call i32 @uip_ipoutput(%struct.TYPE_5__* %138, i32* %140, i32* %142, i32 %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %74, %47
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i64 @ip_addr_isany(i32*) #1

declare dso_local %struct.uip_netif* @uip_iproute(i32*) #1

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local i32 @ip_addr_set(i32*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @uip_chksum_pseudo(%struct.TYPE_5__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uip_ipoutput(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
