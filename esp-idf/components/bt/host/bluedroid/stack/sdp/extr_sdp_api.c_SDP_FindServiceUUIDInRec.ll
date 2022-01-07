; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInRec.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceUUIDInRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__*, i32, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32* }

@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i32 0, align 4
@LEN_UUID_128 = common dso_local global i64 0, align 8
@LEN_UUID_32 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_ID = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_FindServiceUUIDInRec(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  br label %13

13:                                               ; preds = %213, %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = icmp ne %struct.TYPE_13__* %14, null
  br i1 %15, label %16, label %217

16:                                               ; preds = %13
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %180

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @SDP_DISC_ATTR_TYPE(i32 %25)
  %27 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %180

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %7, align 8
  br label %35

35:                                               ; preds = %175, %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %179

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @SDP_DISC_ATTR_TYPE(i32 %41)
  %43 = load i64, i64* @UUID_DESC_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SDP_DISC_ATTR_LEN(i32 %48)
  %50 = load i32, i32* @LEN_UUID_16, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* @LEN_UUID_16, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  br label %124

64:                                               ; preds = %45
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @SDP_DISC_ATTR_LEN(i32 %67)
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @LEN_UUID_128, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %64
  %73 = load i64, i64* @LEN_UUID_128, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i64 0, i64* %9, align 8
  br label %77

77:                                               ; preds = %99, %72
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @LEN_UUID_128, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @LEN_UUID_128, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = sub i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %81
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %77

102:                                              ; preds = %77
  br label %123

103:                                              ; preds = %64
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @SDP_DISC_ATTR_LEN(i32 %106)
  %108 = load i32, i32* @LEN_UUID_32, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load i32, i32* @LEN_UUID_32, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %110, %103
  br label %123

123:                                              ; preds = %122, %102
  br label %124

124:                                              ; preds = %123, %52
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %3, align 4
  br label %219

126:                                              ; preds = %38
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @SDP_DISC_ATTR_TYPE(i32 %129)
  %131 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %126
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  store %struct.TYPE_13__* %138, %struct.TYPE_13__** %8, align 8
  br label %139

139:                                              ; preds = %168, %133
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %141 = icmp ne %struct.TYPE_13__* %140, null
  br i1 %141, label %142, label %172

142:                                              ; preds = %139
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @SDP_DISC_ATTR_TYPE(i32 %145)
  %147 = load i64, i64* @UUID_DESC_TYPE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %142
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @SDP_DISC_ATTR_LEN(i32 %152)
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %167

155:                                              ; preds = %149
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i32 2, i32* %157, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @TRUE, align 4
  store i32 %166, i32* %3, align 4
  br label %219

167:                                              ; preds = %149, %142
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %170, align 8
  store %struct.TYPE_13__* %171, %struct.TYPE_13__** %8, align 8
  br label %139

172:                                              ; preds = %139
  br label %173

173:                                              ; preds = %172, %126
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  store %struct.TYPE_13__* %178, %struct.TYPE_13__** %7, align 8
  br label %35

179:                                              ; preds = %35
  br label %217

180:                                              ; preds = %22, %16
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @ATTR_ID_SERVICE_ID, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %180
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @SDP_DISC_ATTR_TYPE(i32 %189)
  %191 = load i64, i64* @UUID_DESC_TYPE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %186
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @SDP_DISC_ATTR_LEN(i32 %196)
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  store i32 2, i32* %201, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load i32, i32* @TRUE, align 4
  store i32 %210, i32* %3, align 4
  br label %219

211:                                              ; preds = %193, %186
  br label %212

212:                                              ; preds = %211, %180
  br label %213

213:                                              ; preds = %212
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %6, align 8
  br label %13

217:                                              ; preds = %179, %13
  %218 = load i32, i32* @FALSE, align 4
  store i32 %218, i32* %3, align 4
  br label %219

219:                                              ; preds = %217, %199, %155, %124
  %220 = load i32, i32* %3, align 4
  ret i32 %220
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @SDP_DISC_ATTR_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
