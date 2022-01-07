; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_client_h2_header.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_bta_hf_client_co.c_bta_hf_client_h2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@bta_hf_client_co_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BTA_HF_H2_HEADER = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_BIT0_MASK = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_BIT1_MASK = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_SN0_BIT_OFFSET1 = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_SN0_BIT_OFFSET2 = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_SN1_BIT_OFFSET1 = common dso_local global i32 0, align 4
@BTA_HF_H2_HEADER_SN1_BIT_OFFSET2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bta_hf_client_h2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_hf_client_h2_header(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 2049, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_hf_client_co_cb, i32 0, i32 0), align 4
  %7 = and i32 %6, 1
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_hf_client_co_cb, i32 0, i32 0), align 4
  %9 = and i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 12
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 13
  %14 = or i32 %11, %13
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 13
  %17 = or i32 %14, %16
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 14
  %20 = or i32 %17, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_hf_client_co_cb, i32 0, i32 0), align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_hf_client_co_cb, i32 0, i32 0), align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32*, i32** %2, align 8
  store i32 %25, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
