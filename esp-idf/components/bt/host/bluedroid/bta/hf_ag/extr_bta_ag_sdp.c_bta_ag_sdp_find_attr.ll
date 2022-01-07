; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_sdp_find_attr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_sdp.c_bta_ag_sdp_find_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64* }

@FALSE = common dso_local global i64 0, align 8
@BTA_HFP_SERVICE_MASK = common dso_local global i32 0, align 4
@UUID_SERVCLASS_HF_HANDSFREE = common dso_local global i64 0, align 8
@HFP_VERSION_1_1 = common dso_local global i32 0, align 4
@BTA_HSP_SERVICE_MASK = common dso_local global i32 0, align 4
@BTA_AG_INT = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET_HS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HEADSET = common dso_local global i64 0, align 8
@UUID_PROTOCOL_RFCOMM = common dso_local global i32 0, align 4
@ATTR_ID_SUPPORTED_FEATURES = common dso_local global i32 0, align 4
@ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL = common dso_local global i32 0, align 4
@BTA_AG_PEER_FEAT_VOL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bta_ag_sdp_find_attr(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* @UUID_SERVCLASS_HF_HANDSFREE, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* @HFP_VERSION_1_1, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @BTA_HSP_SERVICE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BTA_AG_INT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* @UUID_SERVCLASS_HEADSET_HS, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 256, i32* %35, align 8
  br label %38

36:                                               ; preds = %26, %21
  %37 = load i64, i64* %10, align 8
  store i64 %37, i64* %3, align 8
  br label %149

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %16
  br label %40

40:                                               ; preds = %86, %39
  %41 = load i64, i64* @TRUE, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %147

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @SDP_FindServiceInDb(i32 %46, i64 %47, i32* %48)
  store i32* %49, i32** %6, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @UUID_SERVCLASS_HEADSET_HS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i64, i64* @UUID_SERVCLASS_HEADSET, align 8
  store i64 %56, i64* %9, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @SDP_FindServiceInDb(i32 %59, i64 %60, i32* %61)
  store i32* %62, i32** %6, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %147

65:                                               ; preds = %55
  br label %67

66:                                               ; preds = %51
  br label %147

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67, %43
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BTA_AG_INT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @UUID_PROTOCOL_RFCOMM, align 4
  %77 = call i64 @SDP_FindProtocolListElemInRec(i32* %75, i32 %76, %struct.TYPE_11__* %8)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  br label %87

86:                                               ; preds = %74
  br label %40

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %68
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = call i32 @SDP_FindProfileVersionInRec(i32* %89, i64 %90, i32* %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @BTA_HFP_SERVICE_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %88
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @ATTR_ID_SUPPORTED_FEATURES, align 4
  %101 = call %struct.TYPE_12__* @SDP_FindAttributeInRec(i32* %99, i32 %100)
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %7, align 8
  %102 = icmp ne %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %108, %103
  br label %117

117:                                              ; preds = %116, %98
  br label %145

118:                                              ; preds = %88
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @ATTR_ID_REMOTE_AUDIO_VOLUME_CONTROL, align 4
  %121 = call %struct.TYPE_12__* @SDP_FindAttributeInRec(i32* %119, i32 %120)
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %7, align 8
  %122 = icmp ne %struct.TYPE_12__* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @BTA_AG_PEER_FEAT_VOL, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %143

136:                                              ; preds = %123
  %137 = load i32, i32* @BTA_AG_PEER_FEAT_VOL, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %136, %130
  br label %144

144:                                              ; preds = %143, %118
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i64, i64* @TRUE, align 8
  store i64 %146, i64* %10, align 8
  br label %147

147:                                              ; preds = %145, %66, %64, %40
  %148 = load i64, i64* %10, align 8
  store i64 %148, i64* %3, align 8
  br label %149

149:                                              ; preds = %147, %36
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

declare dso_local i32* @SDP_FindServiceInDb(i32, i64, i32*) #1

declare dso_local i64 @SDP_FindProtocolListElemInRec(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @SDP_FindProfileVersionInRec(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_12__* @SDP_FindAttributeInRec(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
