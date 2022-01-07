; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/ipv4/extr_icmp.c_icmp_dest_unreach.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/ipv4/extr_icmp.c_icmp_dest_unreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pbuf = type { i32, %struct.ip_hdr* }
%struct.ip_hdr = type { i32, i64 }
%struct.icmp_dur_hdr = type { i32, i64 }

@PBUF_IP = common dso_local global i32 0, align 4
@IP_HLEN = common dso_local global i64 0, align 8
@PBUF_RAM = common dso_local global i32 0, align 4
@ICMP_DUR = common dso_local global i32 0, align 4
@icmp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ICMP_TTL = common dso_local global i32 0, align 4
@IP_PROTO_ICMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @icmp_dest_unreach(%struct.pbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.pbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca %struct.ip_hdr*, align 8
  %7 = alloca %struct.icmp_dur_hdr*, align 8
  store %struct.pbuf* %0, %struct.pbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @PBUF_IP, align 4
  %9 = load i64, i64* @IP_HLEN, align 8
  %10 = add nsw i64 8, %9
  %11 = add nsw i64 %10, 8
  %12 = load i32, i32* @PBUF_RAM, align 4
  %13 = call %struct.pbuf* @pbuf_alloc(i32 %8, i64 %11, i32 %12)
  store %struct.pbuf* %13, %struct.pbuf** %5, align 8
  %14 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i32 0, i32 1
  %16 = load %struct.ip_hdr*, %struct.ip_hdr** %15, align 8
  store %struct.ip_hdr* %16, %struct.ip_hdr** %6, align 8
  %17 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 1
  %19 = load %struct.ip_hdr*, %struct.ip_hdr** %18, align 8
  %20 = bitcast %struct.ip_hdr* %19 to %struct.icmp_dur_hdr*
  store %struct.icmp_dur_hdr* %20, %struct.icmp_dur_hdr** %7, align 8
  %21 = load %struct.icmp_dur_hdr*, %struct.icmp_dur_hdr** %7, align 8
  %22 = bitcast %struct.icmp_dur_hdr* %21 to %struct.ip_hdr*
  %23 = load i32, i32* @ICMP_DUR, align 4
  %24 = call i32 @ICMPH_TYPE_SET(%struct.ip_hdr* %22, i32 %23)
  %25 = load %struct.icmp_dur_hdr*, %struct.icmp_dur_hdr** %7, align 8
  %26 = bitcast %struct.icmp_dur_hdr* %25 to %struct.ip_hdr*
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ICMPH_CODE_SET(%struct.ip_hdr* %26, i32 %27)
  %29 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 1
  %31 = load %struct.ip_hdr*, %struct.ip_hdr** %30, align 8
  %32 = bitcast %struct.ip_hdr* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = load %struct.pbuf*, %struct.pbuf** %3, align 8
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i32 0, i32 1
  %36 = load %struct.ip_hdr*, %struct.ip_hdr** %35, align 8
  %37 = load i64, i64* @IP_HLEN, align 8
  %38 = add nsw i64 %37, 8
  %39 = call i32 @memcpy(i32* %33, %struct.ip_hdr* %36, i64 %38)
  %40 = load %struct.icmp_dur_hdr*, %struct.icmp_dur_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.icmp_dur_hdr, %struct.icmp_dur_hdr* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.icmp_dur_hdr*, %struct.icmp_dur_hdr** %7, align 8
  %43 = bitcast %struct.icmp_dur_hdr* %42 to %struct.ip_hdr*
  %44 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @inet_chksum(%struct.ip_hdr* %43, i32 %46)
  %48 = load %struct.icmp_dur_hdr*, %struct.icmp_dur_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.icmp_dur_hdr, %struct.icmp_dur_hdr* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icmp, i32 0, i32 0), align 4
  %51 = call i32 @ICMP_STATS_INC(i32 %50)
  %52 = call i32 (...) @snmp_inc_icmpoutmsgs()
  %53 = call i32 (...) @snmp_inc_icmpoutdestunreachs()
  %54 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %55 = load %struct.ip_hdr*, %struct.ip_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ip_hdr, %struct.ip_hdr* %55, i32 0, i32 0
  %57 = load i32, i32* @ICMP_TTL, align 4
  %58 = load i32, i32* @IP_PROTO_ICMP, align 4
  %59 = call i32 @ip_output(%struct.pbuf* %54, i32* null, i32* %56, i32 %57, i32 0, i32 %58)
  %60 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %61 = call i32 @pbuf_free(%struct.pbuf* %60)
  ret void
}

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @ICMPH_TYPE_SET(%struct.ip_hdr*, i32) #1

declare dso_local i32 @ICMPH_CODE_SET(%struct.ip_hdr*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ip_hdr*, i64) #1

declare dso_local i64 @inet_chksum(%struct.ip_hdr*, i32) #1

declare dso_local i32 @ICMP_STATS_INC(i32) #1

declare dso_local i32 @snmp_inc_icmpoutmsgs(...) #1

declare dso_local i32 @snmp_inc_icmpoutdestunreachs(...) #1

declare dso_local i32 @ip_output(%struct.pbuf*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
