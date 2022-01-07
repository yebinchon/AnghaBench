; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_chk_peer_pkt_type_support.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_btm_acl_chk_peer_pkt_type_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@HCI_EXT_FEATURES_PAGE_0 = common dso_local global i64 0, align 8
@BTM_ACL_PKT_TYPES_MASK_DH3 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM3 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DH5 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM5 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_NO_3_DH5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_acl_chk_peer_pkt_type_support(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @HCI_3_SLOT_PACKETS_SUPPORTED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH3, align 4
  %15 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM3, align 4
  %16 = add nsw i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HCI_5_SLOT_PACKETS_SUPPORTED(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH5, align 4
  %32 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM5, align 4
  %33 = add nsw i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %21
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HCI_EDR_ACL_2MPS_SUPPORTED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH1, align 4
  %49 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH3, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH5, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %47, %38
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @HCI_EDR_ACL_3MPS_SUPPORTED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH1, align 4
  %67 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH3, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH5, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %65, %56
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @HCI_EDR_ACL_2MPS_SUPPORTED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %74
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @HCI_EDR_ACL_3MPS_SUPPORTED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %125

92:                                               ; preds = %83, %74
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @HCI_3_SLOT_EDR_ACL_SUPPORTED(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH3, align 4
  %103 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH3, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %101, %92
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @HCI_EXT_FEATURES_PAGE_0, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @HCI_5_SLOT_EDR_ACL_SUPPORTED(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH5, align 4
  %119 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH5, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %108
  br label %125

125:                                              ; preds = %124, %83
  ret void
}

declare dso_local i32 @HCI_3_SLOT_PACKETS_SUPPORTED(i32) #1

declare dso_local i32 @HCI_5_SLOT_PACKETS_SUPPORTED(i32) #1

declare dso_local i64 @HCI_EDR_ACL_2MPS_SUPPORTED(i32) #1

declare dso_local i64 @HCI_EDR_ACL_3MPS_SUPPORTED(i32) #1

declare dso_local i32 @HCI_3_SLOT_EDR_ACL_SUPPORTED(i32) #1

declare dso_local i32 @HCI_5_SLOT_EDR_ACL_SUPPORTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
