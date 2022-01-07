; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_sdp.c_bta_hf_client_add_record.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_sdp.c_bta_hf_client_add_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@BTA_HF_CLIENT_NUM_PROTO_ELEMS = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_NUM_SVC_ELEMS = common dso_local global i32 0, align 4
@UUID_SERVCLASS_PUBLIC_BROWSE_GROUP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bta_hf_client_add_record\00", align 1
@UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@UUID_PROTOCOL_RFCOMM = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HF_HANDSFREE = common dso_local global i32 0, align 4
@UUID_SERVCLASS_GENERIC_AUDIO = common dso_local global i32 0, align 4
@HFP_VERSION_1_6 = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_NAME = common dso_local global i32 0, align 4
@TEXT_STR_DESC_TYPE = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_ECNR = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_3WAY = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_CLI = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_VREC = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_VOL = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_FEAT_CODEC = common dso_local global i32 0, align 4
@ATTR_ID_SUPPORTED_FEATURES = common dso_local global i32 0, align 4
@UINT_DESC_TYPE = common dso_local global i32 0, align 4
@ATTR_ID_BROWSE_GROUP_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bta_hf_client_add_record(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @BTA_HF_CLIENT_NUM_PROTO_ELEMS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca %struct.TYPE_4__, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* @BTA_HF_CLIENT_NUM_SVC_ELEMS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %26 = load i32, i32* @UUID_SERVCLASS_PUBLIC_BROWSE_GROUP, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %28 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @BTA_HF_CLIENT_NUM_PROTO_ELEMS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 24
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memset(%struct.TYPE_4__* %21, i32 0, i32 %32)
  %34 = load i32, i32* @UUID_PROTOCOL_L2CAP, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 16
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 16
  %39 = load i32, i32* @UUID_PROTOCOL_RFCOMM, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @BTA_HF_CLIENT_NUM_PROTO_ELEMS, align 4
  %51 = call i32 @SDP_AddProtocolList(i32 %49, i32 %50, %struct.TYPE_4__* %21)
  %52 = load i32, i32* %15, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* @UUID_SERVCLASS_HF_HANDSFREE, align 4
  %55 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load i32, i32* @UUID_SERVCLASS_GENERIC_AUDIO, align 4
  %57 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @BTA_HF_CLIENT_NUM_SVC_ELEMS, align 4
  %60 = call i32 @SDP_AddServiceClassIdList(i32 %58, i32 %59, i32* %24)
  %61 = load i32, i32* %15, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* @UUID_SERVCLASS_HF_HANDSFREE, align 4
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @HFP_VERSION_1_6, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @SDP_AddProfileDescriptorList(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %15, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %92

73:                                               ; preds = %4
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ATTR_ID_SERVICE_NAME, align 4
  %82 = load i32, i32* @TEXT_STR_DESC_TYPE, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = add nsw i64 %84, 1
  %86 = trunc i64 %85 to i32
  %87 = load i8*, i8** %5, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = call i32 @SDP_AddAttribute(i32 %80, i32 %81, i32 %82, i32 %86, i32* %88)
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %79, %73, %4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @BTA_HF_CLIENT_FEAT_ECNR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @BTA_HF_CLIENT_FEAT_ECNR, align 4
  %99 = load i32, i32* %17, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @BTA_HF_CLIENT_FEAT_3WAY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @BTA_HF_CLIENT_FEAT_3WAY, align 4
  %108 = load i32, i32* %17, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @BTA_HF_CLIENT_FEAT_CLI, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @BTA_HF_CLIENT_FEAT_CLI, align 4
  %117 = load i32, i32* %17, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @BTA_HF_CLIENT_FEAT_VREC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @BTA_HF_CLIENT_FEAT_VREC, align 4
  %126 = load i32, i32* %17, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @BTA_HF_CLIENT_FEAT_VOL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @BTA_HF_CLIENT_FEAT_VOL, align 4
  %135 = load i32, i32* %17, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @BTA_HF_CLIENT_FEAT_CODEC, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %17, align 4
  %144 = or i32 %143, 32
  store i32 %144, i32* %17, align 4
  br label %145

145:                                              ; preds = %142, %137
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @UINT16_TO_BE_FIELD(i32* %146, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %151 = load i32, i32* @UINT_DESC_TYPE, align 4
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %153 = call i32 @SDP_AddAttribute(i32 %149, i32 %150, i32 %151, i32 2, i32* %152)
  %154 = load i32, i32* %15, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @ATTR_ID_BROWSE_GROUP_LIST, align 4
  %158 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %159 = call i32 @SDP_AddUuidSequence(i32 %156, i32 %157, i32 1, i32* %158)
  %160 = load i32, i32* %15, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  ret i32 %162
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #2

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @SDP_AddProtocolList(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @SDP_AddServiceClassIdList(i32, i32, i32*) #2

declare dso_local i32 @SDP_AddProfileDescriptorList(i32, i32, i32) #2

declare dso_local i32 @SDP_AddAttribute(i32, i32, i32, i32, i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @UINT16_TO_BE_FIELD(i32*, i32) #2

declare dso_local i32 @SDP_AddUuidSequence(i32, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
