; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_udp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_udp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_pcb = type { i32 }
%struct.pbuf = type { i64 }
%struct.ip_addr = type { i32 }
%struct.netbuf = type { i32, %struct.ip_addr*, %struct.pbuf*, %struct.pbuf* }
%struct.netconn = type { i64, i32 (%struct.netconn*, i32, i64)*, i32 }

@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MEMP_NETBUF = common dso_local global i32 0, align 4
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i32)* @recv_udp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_udp(i8* %0, %struct.udp_pcb* %1, %struct.pbuf* %2, %struct.ip_addr* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.udp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.ip_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netbuf*, align 8
  %12 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.udp_pcb* %1, %struct.udp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store %struct.ip_addr* %3, %struct.ip_addr** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.netconn*
  store %struct.netconn* %14, %struct.netconn** %12, align 8
  %15 = load %struct.netconn*, %struct.netconn** %12, align 8
  %16 = icmp ne %struct.netconn* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %19 = call i32 @pbuf_free(%struct.pbuf* %18)
  br label %77

20:                                               ; preds = %5
  %21 = load %struct.netconn*, %struct.netconn** %12, align 8
  %22 = getelementptr inbounds %struct.netconn, %struct.netconn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SYS_MBOX_NULL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %20
  %27 = load i32, i32* @MEMP_NETBUF, align 4
  %28 = call %struct.netbuf* @memp_malloc(i32 %27)
  store %struct.netbuf* %28, %struct.netbuf** %11, align 8
  %29 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %30 = icmp ne %struct.netbuf* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %33 = call i32 @pbuf_free(%struct.pbuf* %32)
  br label %77

34:                                               ; preds = %26
  %35 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %36 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %37 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %36, i32 0, i32 3
  store %struct.pbuf* %35, %struct.pbuf** %37, align 8
  %38 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %39 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %40 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %39, i32 0, i32 2
  store %struct.pbuf* %38, %struct.pbuf** %40, align 8
  %41 = load %struct.ip_addr*, %struct.ip_addr** %9, align 8
  %42 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %43 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %42, i32 0, i32 1
  store %struct.ip_addr* %41, %struct.ip_addr** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %46 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.netconn*, %struct.netconn** %12, align 8
  %51 = getelementptr inbounds %struct.netconn, %struct.netconn* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 8
  %56 = load %struct.netconn*, %struct.netconn** %12, align 8
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %56, i32 0, i32 1
  %58 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %57, align 8
  %59 = icmp ne i32 (%struct.netconn*, i32, i64)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %34
  %61 = load %struct.netconn*, %struct.netconn** %12, align 8
  %62 = getelementptr inbounds %struct.netconn, %struct.netconn* %61, i32 0, i32 1
  %63 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %62, align 8
  %64 = load %struct.netconn*, %struct.netconn** %12, align 8
  %65 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %66 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 %63(%struct.netconn* %64, i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %60, %34
  %71 = load %struct.netconn*, %struct.netconn** %12, align 8
  %72 = getelementptr inbounds %struct.netconn, %struct.netconn* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.netbuf*, %struct.netbuf** %11, align 8
  %75 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %76 = call i32 @MQ_Send(i64 %73, %struct.netbuf* %74, i32 %75)
  br label %77

77:                                               ; preds = %17, %31, %70, %20
  ret void
}

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local %struct.netbuf* @memp_malloc(i32) #1

declare dso_local i32 @MQ_Send(i64, %struct.netbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
