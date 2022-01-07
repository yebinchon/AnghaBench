; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rst.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_ip_addr = type { i32 }
%struct.uip_pbuf = type { i32, %struct.uip_tcp_hdr* }
%struct.uip_tcp_hdr = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@UIP_PBUF_IP = common dso_local global i32 0, align 4
@UIP_TCP_HLEN = common dso_local global i32 0, align 4
@UIP_PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"uip_tcp_rst: could not allocate memory for pbuf.\0A\00", align 1
@UIP_TCP_RST = common dso_local global i32 0, align 4
@UIP_TCP_ACK = common dso_local global i32 0, align 4
@UIP_TCP_WND = common dso_local global i32 0, align 4
@UIP_PROTO_TCP = common dso_local global i32 0, align 4
@UIP_TCP_TTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_rst(i32 %0, i32 %1, %struct.uip_ip_addr* %2, %struct.uip_ip_addr* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uip_ip_addr*, align 8
  %10 = alloca %struct.uip_ip_addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uip_pbuf*, align 8
  %14 = alloca %struct.uip_tcp_hdr*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.uip_ip_addr* %2, %struct.uip_ip_addr** %9, align 8
  store %struct.uip_ip_addr* %3, %struct.uip_ip_addr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @UIP_PBUF_IP, align 4
  %16 = load i32, i32* @UIP_TCP_HLEN, align 4
  %17 = load i32, i32* @UIP_PBUF_RAM, align 4
  %18 = call %struct.uip_pbuf* @uip_pbuf_alloc(i32 %15, i32 %16, i32 %17)
  store %struct.uip_pbuf* %18, %struct.uip_pbuf** %13, align 8
  %19 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %20 = icmp eq %struct.uip_pbuf* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32 @UIP_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %76

23:                                               ; preds = %6
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %25 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %24, i32 0, i32 1
  %26 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %25, align 8
  store %struct.uip_tcp_hdr* %26, %struct.uip_tcp_hdr** %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %30 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i8* @htons(i32 %31)
  %33 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %34 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @htonl(i32 %35)
  %37 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %38 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @htonl(i32 %39)
  %41 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %42 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %44 = load i32, i32* @UIP_TCP_RST, align 4
  %45 = load i32, i32* @UIP_TCP_ACK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @UIP_TCPH_FLAGS_SET(%struct.uip_tcp_hdr* %43, i32 %46)
  %48 = load i32, i32* @UIP_TCP_WND, align 4
  %49 = call i8* @htons(i32 %48)
  %50 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %51 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %53 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %55 = call i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr* %54, i32 5)
  %56 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %57 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %59 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %9, align 8
  %60 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %61 = load i32, i32* @UIP_PROTO_TCP, align 4
  %62 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %63 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @uip_chksum_pseudo(%struct.uip_pbuf* %58, %struct.uip_ip_addr* %59, %struct.uip_ip_addr* %60, i32 %61, i32 %64)
  %66 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  %67 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %69 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %9, align 8
  %70 = load %struct.uip_ip_addr*, %struct.uip_ip_addr** %10, align 8
  %71 = load i32, i32* @UIP_TCP_TTL, align 4
  %72 = load i32, i32* @UIP_PROTO_TCP, align 4
  %73 = call i32 @uip_ipoutput(%struct.uip_pbuf* %68, %struct.uip_ip_addr* %69, %struct.uip_ip_addr* %70, i32 %71, i32 0, i32 %72)
  %74 = load %struct.uip_pbuf*, %struct.uip_pbuf** %13, align 8
  %75 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %74)
  br label %76

76:                                               ; preds = %23, %21
  ret void
}

declare dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @UIP_TCPH_FLAGS_SET(%struct.uip_tcp_hdr*, i32) #1

declare dso_local i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr*, i32) #1

declare dso_local i64 @uip_chksum_pseudo(%struct.uip_pbuf*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, i32, i32) #1

declare dso_local i32 @uip_ipoutput(%struct.uip_pbuf*, %struct.uip_ip_addr*, %struct.uip_ip_addr*, i32, i32, i32) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
