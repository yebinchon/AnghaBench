; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_output_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_fake.c_feth_output_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IFF_FLAGS_HWCSUM = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@DLT_EN10MB = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mbuf*, i32, i32)* @feth_output_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feth_output_common(i32 %0, %struct.mbuf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = call i8* @mbuf_data(%struct.mbuf* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @IFF_FLAGS_HWCSUM, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 65535, i32* %19, align 4
  %20 = load i32, i32* @CSUM_DATA_VALID, align 4
  %21 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CSUM_IP_VALID, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %16, %4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ifnet_stat_increment_out(i32 %31, i32 1, i32 %35, i32 0)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @DLT_EN10MB, align 4
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = call i32 @bpf_tap_out(i32 %37, i32 %38, %struct.mbuf* %39, i32* null, i32 0)
  %41 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @mbuf_pkthdr_setrcvif(%struct.mbuf* %41, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @mbuf_pkthdr_setheader(%struct.mbuf* %44, i8* %45)
  %47 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %48 = load i32, i32* @ETHER_HDR_LEN, align 4
  %49 = sub nsw i32 0, %48
  %50 = call i32 @mbuf_pkthdr_adjustlen(%struct.mbuf* %47, i32 %49)
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = call i8* @mbuf_data(%struct.mbuf* %52)
  %54 = load i32, i32* @ETHER_HDR_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = call i64 @mbuf_len(%struct.mbuf* %57)
  %59 = load i32, i32* @ETHER_HDR_LEN, align 4
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %58, %60
  %62 = call i32 @mbuf_setdata(%struct.mbuf* %51, i8* %56, i64 %61)
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DLT_EN10MB, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @bpf_tap_in(i32 %63, i32 %64, %struct.mbuf* %65, i8* %66, i32 4)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %70 = call i32 @feth_enqueue_input(i32 %68, %struct.mbuf* %69)
  ret void
}

declare dso_local i8* @mbuf_data(%struct.mbuf*) #1

declare dso_local i32 @ifnet_stat_increment_out(i32, i32, i32, i32) #1

declare dso_local i32 @bpf_tap_out(i32, i32, %struct.mbuf*, i32*, i32) #1

declare dso_local i32 @mbuf_pkthdr_setrcvif(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_pkthdr_setheader(%struct.mbuf*, i8*) #1

declare dso_local i32 @mbuf_pkthdr_adjustlen(%struct.mbuf*, i32) #1

declare dso_local i32 @mbuf_setdata(%struct.mbuf*, i8*, i64) #1

declare dso_local i64 @mbuf_len(%struct.mbuf*) #1

declare dso_local i32 @bpf_tap_in(i32, i32, %struct.mbuf*, i8*, i32) #1

declare dso_local i32 @feth_enqueue_input(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
