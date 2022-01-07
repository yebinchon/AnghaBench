; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_icmp.c_uip_icmp_destunreach.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_icmp.c_uip_icmp_destunreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32, %struct.uip_ip_hdr* }
%struct.uip_ip_hdr = type { i32, i64 }
%struct.uip_icmp_dur_hdr = type { i32, i64 }

@UIP_PBUF_IP = common dso_local global i32 0, align 4
@UIP_IP_HLEN = common dso_local global i64 0, align 8
@UIP_PBUF_RAM = common dso_local global i32 0, align 4
@UIP_ICMP_DUR = common dso_local global i32 0, align 4
@UIP_ICMP_TTL = common dso_local global i32 0, align 4
@UIP_PROTO_ICMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_icmp_destunreach(%struct.uip_pbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uip_pbuf*, align 8
  %6 = alloca %struct.uip_ip_hdr*, align 8
  %7 = alloca %struct.uip_icmp_dur_hdr*, align 8
  store %struct.uip_pbuf* %0, %struct.uip_pbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @UIP_PBUF_IP, align 4
  %9 = load i64, i64* @UIP_IP_HLEN, align 8
  %10 = add i64 16, %9
  %11 = add i64 %10, 8
  %12 = load i32, i32* @UIP_PBUF_RAM, align 4
  %13 = call %struct.uip_pbuf* @uip_pbuf_alloc(i32 %8, i64 %11, i32 %12)
  store %struct.uip_pbuf* %13, %struct.uip_pbuf** %5, align 8
  %14 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %14, i32 0, i32 1
  %16 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %15, align 8
  store %struct.uip_ip_hdr* %16, %struct.uip_ip_hdr** %6, align 8
  %17 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %18 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %17, i32 0, i32 1
  %19 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %18, align 8
  %20 = bitcast %struct.uip_ip_hdr* %19 to %struct.uip_icmp_dur_hdr*
  store %struct.uip_icmp_dur_hdr* %20, %struct.uip_icmp_dur_hdr** %7, align 8
  %21 = load %struct.uip_icmp_dur_hdr*, %struct.uip_icmp_dur_hdr** %7, align 8
  %22 = bitcast %struct.uip_icmp_dur_hdr* %21 to %struct.uip_ip_hdr*
  %23 = load i32, i32* @UIP_ICMP_DUR, align 4
  %24 = call i32 @UIP_ICMPH_TYPE_SET(%struct.uip_ip_hdr* %22, i32 %23)
  %25 = load %struct.uip_icmp_dur_hdr*, %struct.uip_icmp_dur_hdr** %7, align 8
  %26 = bitcast %struct.uip_icmp_dur_hdr* %25 to %struct.uip_ip_hdr*
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @UIP_ICMPH_CODE_SET(%struct.uip_ip_hdr* %26, i32 %27)
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %30 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %29, i32 0, i32 1
  %31 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %30, align 8
  %32 = bitcast %struct.uip_ip_hdr* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 16
  %34 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %35 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %34, i32 0, i32 1
  %36 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %35, align 8
  %37 = load i64, i64* @UIP_IP_HLEN, align 8
  %38 = add nsw i64 %37, 8
  %39 = call i32 @UIP_MEMCPY(i32* %33, %struct.uip_ip_hdr* %36, i64 %38)
  %40 = load %struct.uip_icmp_dur_hdr*, %struct.uip_icmp_dur_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.uip_icmp_dur_hdr, %struct.uip_icmp_dur_hdr* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.uip_icmp_dur_hdr*, %struct.uip_icmp_dur_hdr** %7, align 8
  %43 = bitcast %struct.uip_icmp_dur_hdr* %42 to %struct.uip_ip_hdr*
  %44 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %45 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @uip_ipchksum(%struct.uip_ip_hdr* %43, i32 %46)
  %48 = load %struct.uip_icmp_dur_hdr*, %struct.uip_icmp_dur_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.uip_icmp_dur_hdr, %struct.uip_icmp_dur_hdr* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %51 = load %struct.uip_ip_hdr*, %struct.uip_ip_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.uip_ip_hdr, %struct.uip_ip_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* @UIP_ICMP_TTL, align 4
  %54 = load i32, i32* @UIP_PROTO_ICMP, align 4
  %55 = call i32 @uip_ipoutput(%struct.uip_pbuf* %50, i32* null, i32* %52, i32 %53, i32 0, i32 %54)
  %56 = load %struct.uip_pbuf*, %struct.uip_pbuf** %5, align 8
  %57 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %56)
  ret void
}

declare dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @UIP_ICMPH_TYPE_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @UIP_ICMPH_CODE_SET(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @UIP_MEMCPY(i32*, %struct.uip_ip_hdr*, i64) #1

declare dso_local i64 @uip_ipchksum(%struct.uip_ip_hdr*, i32) #1

declare dso_local i32 @uip_ipoutput(%struct.uip_pbuf*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
