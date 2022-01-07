; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeAddVendorIdPayloads.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeAddVendorIdPayloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IKE_VENDOR_ID_RFC3947_NAT_T = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_RFC3706_DPD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeAddVendorIdPayloads(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @IKE_VENDOR_ID_RFC3947_NAT_T, align 4
  %9 = call i32 @IkeAddVendorId(i32* %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03, align 4
  %12 = call i32 @IkeAddVendorId(i32* %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02, align 4
  %15 = call i32 @IkeAddVendorId(i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2, align 4
  %18 = call i32 @IkeAddVendorId(i32* %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00, align 4
  %21 = call i32 @IkeAddVendorId(i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @IKE_VENDOR_ID_RFC3706_DPD, align 4
  %24 = call i32 @IkeAddVendorId(i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @IkeAddVendorId(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
