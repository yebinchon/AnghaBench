; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_decode_ext_features_page.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_devctl.c_btm_decode_ext_features_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [38 x i8] c"btm_decode_ext_features_page page: %d\00", align 1
@BTM_ACL_PKT_TYPES_MASK_DH1 = common dso_local global i32 0, align 4
@BTM_ACL_PKT_TYPES_MASK_DM1 = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
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
@.str.1 = private unnamed_addr constant [41 x i8] c"Local supported ACL packet types: 0x%04x\00", align 1
@FALSE = common dso_local global i8* null, align 8
@BTM_SCO_PKT_TYPES_MASK_HV1 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_HV2 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_HV3 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_EV3 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_EV4 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_EV5 = common dso_local global i32 0, align 4
@BTM_ESCO_LINK_ONLY_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@BTM_SCO_PKT_TYPES_MASK_NO_2_EV5 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_NO_2_EV3 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_NO_3_EV5 = common dso_local global i32 0, align 4
@BTM_SCO_PKT_TYPES_MASK_NO_3_EV3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Local supported SCO packet types: 0x%04x\00", align 1
@HCI_ENABLE_MASTER_SLAVE_SWITCH = common dso_local global i32 0, align 4
@HCI_ENABLE_HOLD_MODE = common dso_local global i32 0, align 4
@HCI_ENABLE_SNIFF_MODE = common dso_local global i32 0, align 4
@HCI_ENABLE_PARK_MODE = common dso_local global i32 0, align 4
@BTM_INQ_RESULT_EXTENDED = common dso_local global i32 0, align 4
@BTM_INQ_RESULT_WITH_RSSI = common dso_local global i32 0, align 4
@BTM_DEFAULT_SCAN_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"btm_decode_ext_features_page page=%d unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @btm_decode_ext_features_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_decode_ext_features_page(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %265 [
    i32 130, label %8
    i32 129, label %263
    i32 128, label %264
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH1, align 4
  %10 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM1, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @HCI_3_SLOT_PACKETS_SUPPORTED(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH3, align 4
  %17 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM3, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %20 = or i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %15, %8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @HCI_5_SLOT_PACKETS_SUPPORTED(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DH5, align 4
  %27 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_DM5, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %30 = or i32 %29, %28
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @HCI_EDR_ACL_2MPS_SUPPORTED(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH1, align 4
  %37 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH3, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH5, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %42 = or i32 %41, %40
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %43

43:                                               ; preds = %35, %31
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @HCI_EDR_ACL_3MPS_SUPPORTED(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH1, align 4
  %49 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH3, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH5, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %54 = or i32 %53, %52
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %47, %43
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @HCI_EDR_ACL_2MPS_SUPPORTED(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @HCI_EDR_ACL_3MPS_SUPPORTED(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59, %55
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @HCI_3_SLOT_EDR_ACL_SUPPORTED(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH3, align 4
  %69 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH3, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %72 = or i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @HCI_5_SLOT_EDR_ACL_SUPPORTED(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_2_DH5, align 4
  %79 = load i32, i32* @BTM_ACL_PKT_TYPES_MASK_NO_3_DH5, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %82 = or i32 %81, %80
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  br label %83

83:                                               ; preds = %77, %73
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), align 8
  %86 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %87 = load i8*, i8** @FALSE, align 8
  store i8* %87, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @HCI_SCO_LINK_SUPPORTED(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_HV1, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @HCI_HV2_PACKETS_SUPPORTED(i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_HV2, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %100

100:                                              ; preds = %96, %91
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @HCI_HV3_PACKETS_SUPPORTED(i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_HV3, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %84
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @HCI_ESCO_EV3_SUPPORTED(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_EV3, align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @HCI_ESCO_EV4_SUPPORTED(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_EV4, align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @HCI_ESCO_EV5_SUPPORTED(i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_EV5, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %135 = load i32, i32* @BTM_ESCO_LINK_ONLY_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %178

138:                                              ; preds = %133
  %139 = load i8*, i8** @TRUE, align 8
  store i8* %139, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 3, i32 0), align 8
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @HCI_EDR_ESCO_2MPS_SUPPORTED(i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @HCI_3_SLOT_EDR_ESCO_SUPPORTED(i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_2_EV5, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %151

151:                                              ; preds = %147, %143
  br label %158

152:                                              ; preds = %138
  %153 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_2_EV3, align 4
  %154 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_2_EV5, align 4
  %155 = add nsw i32 %153, %154
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %158

158:                                              ; preds = %152, %151
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @HCI_EDR_ESCO_3MPS_SUPPORTED(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @HCI_3_SLOT_EDR_ESCO_SUPPORTED(i32* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_3_EV5, align 4
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %170

170:                                              ; preds = %166, %162
  br label %177

171:                                              ; preds = %158
  %172 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_3_EV3, align 4
  %173 = load i32, i32* @BTM_SCO_PKT_TYPES_MASK_NO_3_EV5, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  br label %177

177:                                              ; preds = %171, %170
  br label %178

178:                                              ; preds = %177, %133
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 1), align 4
  %180 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @HCI_SWITCH_SUPPORTED(i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %187 = or i32 %186, %185
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %193

188:                                              ; preds = %178
  %189 = load i32, i32* @HCI_ENABLE_MASTER_SLAVE_SWITCH, align 4
  %190 = xor i32 %189, -1
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %192 = and i32 %191, %190
  store i32 %192, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %193

193:                                              ; preds = %188, %184
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @HCI_HOLD_MODE_SUPPORTED(i32* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %200 = or i32 %199, %198
  store i32 %200, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %206

201:                                              ; preds = %193
  %202 = load i32, i32* @HCI_ENABLE_HOLD_MODE, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %205 = and i32 %204, %203
  store i32 %205, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %206

206:                                              ; preds = %201, %197
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @HCI_SNIFF_MODE_SUPPORTED(i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %213 = or i32 %212, %211
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %219

214:                                              ; preds = %206
  %215 = load i32, i32* @HCI_ENABLE_SNIFF_MODE, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %218 = and i32 %217, %216
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %219

219:                                              ; preds = %214, %210
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @HCI_PARK_MODE_SUPPORTED(i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %226 = or i32 %225, %224
  store i32 %226, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %232

227:                                              ; preds = %219
  %228 = load i32, i32* @HCI_ENABLE_PARK_MODE, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  %231 = and i32 %230, %229
  store i32 %231, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 2), align 8
  br label %232

232:                                              ; preds = %227, %223
  %233 = call i32 (...) @btm_sec_dev_reset()
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @HCI_LMP_INQ_RSSI_SUPPORTED(i32* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %232
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @HCI_EXT_INQ_RSP_SUPPORTED(i32* %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* @BTM_INQ_RESULT_EXTENDED, align 4
  %243 = call i32 @BTM_SetInquiryMode(i32 %242)
  br label %247

244:                                              ; preds = %237
  %245 = load i32, i32* @BTM_INQ_RESULT_WITH_RSSI, align 4
  %246 = call i32 @BTM_SetInquiryMode(i32 %245)
  br label %247

247:                                              ; preds = %244, %241
  br label %248

248:                                              ; preds = %247, %232
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %248
  %253 = load i8*, i8** @TRUE, align 8
  %254 = call i32 @l2cu_set_non_flushable_pbf(i8* %253)
  br label %258

255:                                              ; preds = %248
  %256 = load i8*, i8** @FALSE, align 8
  %257 = call i32 @l2cu_set_non_flushable_pbf(i8* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i32, i32* @BTM_DEFAULT_SCAN_TYPE, align 4
  %260 = call i32 @BTM_SetPageScanType(i32 %259)
  %261 = load i32, i32* @BTM_DEFAULT_SCAN_TYPE, align 4
  %262 = call i32 @BTM_SetInquiryScanType(i32 %261)
  br label %268

263:                                              ; preds = %2
  br label %268

264:                                              ; preds = %2
  br label %268

265:                                              ; preds = %2
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %265, %264, %263, %258
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @HCI_3_SLOT_PACKETS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_5_SLOT_PACKETS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_EDR_ACL_2MPS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_EDR_ACL_3MPS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_3_SLOT_EDR_ACL_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_5_SLOT_EDR_ACL_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_SCO_LINK_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_HV2_PACKETS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_HV3_PACKETS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_ESCO_EV3_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_ESCO_EV4_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_ESCO_EV5_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_EDR_ESCO_2MPS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_3_SLOT_EDR_ESCO_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_EDR_ESCO_3MPS_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_SWITCH_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_HOLD_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_SNIFF_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_PARK_MODE_SUPPORTED(i32*) #1

declare dso_local i32 @btm_sec_dev_reset(...) #1

declare dso_local i32 @HCI_LMP_INQ_RSSI_SUPPORTED(i32*) #1

declare dso_local i32 @HCI_EXT_INQ_RSP_SUPPORTED(i32*) #1

declare dso_local i32 @BTM_SetInquiryMode(i32) #1

declare dso_local i32 @HCI_NON_FLUSHABLE_PB_SUPPORTED(i32*) #1

declare dso_local i32 @l2cu_set_non_flushable_pbf(i8*) #1

declare dso_local i32 @BTM_SetPageScanType(i32) #1

declare dso_local i32 @BTM_SetInquiryScanType(i32) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
