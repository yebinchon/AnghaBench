; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_raw.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_pcb = type { i32 }
%struct.pbuf = type { i64 }
%struct.ip_addr = type { i32 }
%struct.netbuf = type { i32, %struct.ip_addr*, %struct.pbuf*, %struct.pbuf* }
%struct.netconn = type { i64, i32 (%struct.netconn*, i32, i64)*, i32 }

@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MEMP_NETBUF = common dso_local global i32 0, align 4
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.raw_pcb*, %struct.pbuf*, %struct.ip_addr*)* @recv_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_raw(i8* %0, %struct.raw_pcb* %1, %struct.pbuf* %2, %struct.ip_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.raw_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca %struct.ip_addr*, align 8
  %10 = alloca %struct.netbuf*, align 8
  %11 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.raw_pcb* %1, %struct.raw_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store %struct.ip_addr* %3, %struct.ip_addr** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.netconn*
  store %struct.netconn* %13, %struct.netconn** %11, align 8
  %14 = load %struct.netconn*, %struct.netconn** %11, align 8
  %15 = icmp ne %struct.netconn* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

17:                                               ; preds = %4
  %18 = load %struct.netconn*, %struct.netconn** %11, align 8
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYS_MBOX_NULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  %24 = load i32, i32* @MEMP_NETBUF, align 4
  %25 = call %struct.netbuf* @memp_malloc(i32 %24)
  store %struct.netbuf* %25, %struct.netbuf** %10, align 8
  %26 = icmp eq %struct.netbuf* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %76

28:                                               ; preds = %23
  %29 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %30 = call i32 @pbuf_ref(%struct.pbuf* %29)
  %31 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %32 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %33 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %32, i32 0, i32 3
  store %struct.pbuf* %31, %struct.pbuf** %33, align 8
  %34 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %35 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %36 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %35, i32 0, i32 2
  store %struct.pbuf* %34, %struct.pbuf** %36, align 8
  %37 = load %struct.ip_addr*, %struct.ip_addr** %9, align 8
  %38 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %39 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %38, i32 0, i32 1
  store %struct.ip_addr* %37, %struct.ip_addr** %39, align 8
  %40 = load %struct.raw_pcb*, %struct.raw_pcb** %7, align 8
  %41 = getelementptr inbounds %struct.raw_pcb, %struct.raw_pcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %44 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.netconn*, %struct.netconn** %11, align 8
  %49 = getelementptr inbounds %struct.netconn, %struct.netconn* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  %54 = load %struct.netconn*, %struct.netconn** %11, align 8
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %54, i32 0, i32 1
  %56 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %55, align 8
  %57 = icmp ne i32 (%struct.netconn*, i32, i64)* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %28
  %59 = load %struct.netconn*, %struct.netconn** %11, align 8
  %60 = getelementptr inbounds %struct.netconn, %struct.netconn* %59, i32 0, i32 1
  %61 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %60, align 8
  %62 = load %struct.netconn*, %struct.netconn** %11, align 8
  %63 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %64 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %61(%struct.netconn* %62, i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %58, %28
  %69 = load %struct.netconn*, %struct.netconn** %11, align 8
  %70 = getelementptr inbounds %struct.netconn, %struct.netconn* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.netbuf*, %struct.netbuf** %10, align 8
  %73 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %74 = call i32 @MQ_Send(i64 %71, %struct.netbuf* %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %17
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %27, %16
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.netbuf* @memp_malloc(i32) #1

declare dso_local i32 @pbuf_ref(%struct.pbuf*) #1

declare dso_local i32 @MQ_Send(i64, %struct.netbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
