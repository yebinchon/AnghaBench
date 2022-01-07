; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }
%struct.flow_divert_packet_header = type { i32, i32 }

@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@MBUF_TYPE_HEADER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to allocate the header mbuf: %d\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"mbuf_copyback(hdr) failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i32, i32**)* @flow_divert_packet_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_packet_init(%struct.flow_divert_pcb* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flow_divert_pcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.flow_divert_packet_header, align 4
  %9 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @MBUF_DONTWAIT, align 4
  %11 = load i32, i32* @MBUF_TYPE_HEADER, align 4
  %12 = load i32**, i32*** %7, align 8
  %13 = call i32 @mbuf_gethdr(i32 %10, i32 %11, i32** %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @LOG_ERR, align 4
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @FDLOG(i32 %17, %struct.flow_divert_pcb* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %8, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %26 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = getelementptr inbounds %struct.flow_divert_packet_header, %struct.flow_divert_packet_header* %8, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32**, i32*** %7, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @MBUF_DONTWAIT, align 4
  %33 = call i32 @mbuf_copyback(i32* %31, i32 0, i32 8, %struct.flow_divert_packet_header* %8, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @FDLOG(i32 %37, %struct.flow_divert_pcb* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32**, i32*** %7, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @mbuf_freem(i32* %42)
  %44 = load i32**, i32*** %7, align 8
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %36, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @mbuf_gethdr(i32, i32, i32**) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mbuf_copyback(i32*, i32, i32, %struct.flow_divert_packet_header*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
