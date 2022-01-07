; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_keepalive.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.uip_pbuf = type { i32, %struct.uip_tcp_hdr* }
%struct.uip_tcp_hdr = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@UIP_PBUF_IP = common dso_local global i32 0, align 4
@UIP_TCP_HLEN = common dso_local global i32 0, align 4
@UIP_PBUF_RAM = common dso_local global i32 0, align 4
@UIP_PROTO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_keepalive(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_pbuf*, align 8
  %4 = alloca %struct.uip_tcp_hdr*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %5 = load i32, i32* @UIP_PBUF_IP, align 4
  %6 = load i32, i32* @UIP_TCP_HLEN, align 4
  %7 = load i32, i32* @UIP_PBUF_RAM, align 4
  %8 = call %struct.uip_pbuf* @uip_pbuf_alloc(i32 %5, i32 %6, i32 %7)
  store %struct.uip_pbuf* %8, %struct.uip_pbuf** %3, align 8
  %9 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %10 = icmp eq %struct.uip_pbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %14 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %13, i32 0, i32 1
  %15 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %14, align 8
  store %struct.uip_tcp_hdr* %15, %struct.uip_tcp_hdr** %4, align 8
  %16 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %17 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htons(i32 %18)
  %20 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %23 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @htons(i32 %24)
  %26 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %29 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  %32 = call i8* @htonl(i64 %31)
  %33 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %34 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %36 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @htonl(i64 %37)
  %39 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %40 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %42 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @htons(i32 %43)
  %45 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %46 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %48 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %50 = call i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr* %49, i32 5)
  %51 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %54 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %55 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %54, i32 0, i32 2
  %56 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %57 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %56, i32 0, i32 1
  %58 = load i32, i32* @UIP_PROTO_TCP, align 4
  %59 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %60 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @uip_chksum_pseudo(%struct.uip_pbuf* %53, i32* %55, i32* %57, i32 %58, i32 %61)
  %63 = load %struct.uip_tcp_hdr*, %struct.uip_tcp_hdr** %4, align 8
  %64 = getelementptr inbounds %struct.uip_tcp_hdr, %struct.uip_tcp_hdr* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %66 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %67 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %66, i32 0, i32 2
  %68 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %69 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %68, i32 0, i32 1
  %70 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %71 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @UIP_PROTO_TCP, align 4
  %74 = call i32 @uip_ipoutput(%struct.uip_pbuf* %65, i32* %67, i32* %69, i32 %72, i32 0, i32 %73)
  %75 = load %struct.uip_pbuf*, %struct.uip_pbuf** %3, align 8
  %76 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %75)
  br label %77

77:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @UIP_TCPH_HDRLEN_SET(%struct.uip_tcp_hdr*, i32) #1

declare dso_local i64 @uip_chksum_pseudo(%struct.uip_pbuf*, i32*, i32*, i32, i32) #1

declare dso_local i32 @uip_ipoutput(%struct.uip_pbuf*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
