; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCheckCaps.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_IkeCheckCaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@IKE_VENDOR_ID_RFC3947_NAT_T = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00 = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_RFC3706_DPD = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_MICROSOFT_L2TP = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY = common dso_local global i32 0, align 4
@IKE_VENDOR_ID_MS_VID_INITIALCONTACT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IkeCheckCaps(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = call i32 @Zero(%struct.TYPE_4__* %11, i32 48)
  br label %65

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @Zero(%struct.TYPE_4__* %14, i32 48)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @IKE_VENDOR_ID_RFC3947_NAT_T, align 4
  %18 = call i8* @IkeIsVendorIdExists(i32* %16, i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store i8* %18, i8** %20, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_03, align 4
  %23 = call i8* @IkeIsVendorIdExists(i32* %21, i32 %22)
  %24 = icmp ne i8* %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %13
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02, align 4
  %28 = call i8* @IkeIsVendorIdExists(i32* %26, i32 %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_02_2, align 4
  %33 = call i8* @IkeIsVendorIdExists(i32* %31, i32 %32)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @IKE_VENDOR_ID_IPSEC_NAT_T_IKE_00, align 4
  %38 = call i8* @IkeIsVendorIdExists(i32* %36, i32 %37)
  %39 = icmp ne i8* %38, null
  br label %40

40:                                               ; preds = %35, %30, %25, %13
  %41 = phi i1 [ true, %30 ], [ true, %25 ], [ true, %13 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @IKE_VENDOR_ID_RFC3706_DPD, align 4
  %47 = call i8* @IkeIsVendorIdExists(i32* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @IKE_VENDOR_ID_MICROSOFT_L2TP, align 4
  %52 = call i8* @IkeIsVendorIdExists(i32* %50, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @IKE_VENDOR_ID_MS_NT5_ISAKMPOAKLEY, align 4
  %57 = call i8* @IkeIsVendorIdExists(i32* %55, i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* @IKE_VENDOR_ID_MS_VID_INITIALCONTACT, align 4
  %62 = call i8* @IkeIsVendorIdExists(i32* %60, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %40, %10
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @IkeIsVendorIdExists(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
