; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_append_tlv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_packet_append_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to append the type (%d)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to append the length (%u)\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to append the value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*)* @flow_divert_packet_append_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_packet_append_tlv(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @htonl(i32 %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mbuf_pkthdr_len(i32 %15)
  %17 = bitcast i32* %7 to i8*
  %18 = load i32, i32* @MBUF_DONTWAIT, align 4
  %19 = call i32 @mbuf_copyback(i32 %14, i32 %16, i32 4, i8* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @FDLOG(i32 %23, i32* @nil_pcb, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %57

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mbuf_pkthdr_len(i32 %29)
  %31 = bitcast i32* %10 to i8*
  %32 = load i32, i32* @MBUF_DONTWAIT, align 4
  %33 = call i32 @mbuf_copyback(i32 %28, i32 %30, i32 4, i8* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @FDLOG(i32 %37, i32* @nil_pcb, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %57

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @mbuf_pkthdr_len(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* @MBUF_DONTWAIT, align 4
  %48 = call i32 @mbuf_copyback(i32 %42, i32 %44, i32 %45, i8* %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @LOG_ERR, align 4
  %53 = call i32 @FDLOG0(i32 %52, i32* @nil_pcb, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %55, %51, %36, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @mbuf_copyback(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mbuf_pkthdr_len(i32) #1

declare dso_local i32 @FDLOG(i32, i32*, i8*, i32) #1

declare dso_local i32 @FDLOG0(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
