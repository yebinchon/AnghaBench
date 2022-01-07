; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddAttribute.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_db.c_SDP_AddAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i64, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32* }

@sdp_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BT_TRACE_LEVEL_DEBUG = common dso_local global i64 0, align 8
@UINT_DESC_TYPE = common dso_local global i64 0, align 8
@TWO_COMP_INT_DESC_TYPE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@DATA_ELE_ALT_DESC_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"SDP_AddAttribute: handle:%X, id:%04X, type:%d, len:%d, p_val:%p, *p_val:%s\0A\00", align 1
@BOOLEAN_DESC_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"SDP_AddAttribute: handle:%X, id:%04X, type:%d, len:%d, p_val:%p, *p_val:%d\0A\00", align 1
@SDP_MAX_REC_ATTR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SDP_MAX_PAD_LEN = common dso_local global i32 0, align 4
@TEXT_STR_DESC_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"SDP_AddAttribute: attr_len:%d too long. truncate to (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"SDP_AddAttribute fail, length exceed maximum: ID %d: attr_len:%d \0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDP_AddAttribute(i32 %0, i64 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca [400 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 1, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %15, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0), align 8
  %23 = load i64, i64* @BT_TRACE_LEVEL_DEBUG, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %5
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @UINT_DESC_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @TWO_COMP_INT_DESC_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @UUID_DESC_TYPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* @DATA_ELE_ALT_DESC_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %41, %37, %33, %29, %25
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 200
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 200, %48 ], [ %50, %49 ]
  store i32 %52, i32* %18, align 4
  %53 = getelementptr inbounds [400 x i64], [400 x i64]* %16, i64 0, i64 0
  store i64 0, i64* %53, align 16
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %70, %51
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32, i32* %17, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x i64], [400 x i64]* %16, i64 0, i64 %61
  %63 = bitcast i64* %62 to i8*
  %64 = load i64*, i64** %11, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @sprintf(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds [400 x i64], [400 x i64]* %16, i64 0, i64 0
  %80 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %74, i64 %75, i64 %76, i32 %77, i64* %78, i64* %79)
  br label %104

81:                                               ; preds = %41
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @BOOLEAN_DESC_TYPE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i64*, i64** %11, align 8
  %91 = load i64*, i64** %11, align 8
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i64*
  %94 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %86, i64 %87, i64 %88, i32 %89, i64* %90, i64* %93)
  br label %103

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = load i64*, i64** %11, align 8
  %101 = load i64*, i64** %11, align 8
  %102 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %96, i64 %97, i64 %98, i32 %99, i64* %100, i64* %101)
  br label %103

103:                                              ; preds = %95, %85
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %5
  store i64 0, i64* %14, align 8
  br label %106

106:                                              ; preds = %323, %105
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 1, i32 0), align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %328

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %322

116:                                              ; preds = %110
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 0
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %19, align 8
  store i64 0, i64* %12, align 8
  br label %121

121:                                              ; preds = %145, %116
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %121
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @SDP_DeleteAttribute(i32 %134, i64 %135)
  br label %150

137:                                              ; preds = %127
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %150

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %12, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %12, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 1
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %19, align 8
  br label %121

150:                                              ; preds = %143, %133, %121
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SDP_MAX_REC_ATTR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %6, align 4
  br label %330

158:                                              ; preds = %150
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %159, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %170
  store %struct.TYPE_7__* %171, %struct.TYPE_7__** %19, align 8
  br label %198

172:                                              ; preds = %158
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %194, %172
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %12, align 8
  %179 = icmp sgt i64 %177, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %176
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = load i64, i64* %13, align 8
  %190 = sub nsw i64 %189, 1
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i64 %190
  %192 = bitcast %struct.TYPE_7__* %185 to i8*
  %193 = bitcast %struct.TYPE_7__* %191 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 %193, i64 32, i1 false)
  br label %194

194:                                              ; preds = %180
  %195 = load i64, i64* %13, align 8
  %196 = add nsw i64 %195, -1
  store i64 %196, i64* %13, align 8
  br label %176

197:                                              ; preds = %176
  br label %198

198:                                              ; preds = %197, %164
  %199 = load i64, i64* %8, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load i64, i64* %9, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 %210, %212
  %214 = load i32, i32* @SDP_MAX_PAD_LEN, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp uge i64 %213, %215
  br i1 %216, label %217, label %257

217:                                              ; preds = %198
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* @TEXT_STR_DESC_TYPE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %255

221:                                              ; preds = %217
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @SDP_MAX_PAD_LEN, align 4
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %224, %227
  %229 = trunc i64 %228 to i32
  %230 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %222, i32 %229)
  %231 = load i32, i32* @SDP_MAX_PAD_LEN, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %232, %235
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %10, align 4
  %238 = load i64*, i64** %11, align 8
  %239 = load i32, i32* @SDP_MAX_PAD_LEN, align 4
  %240 = sext i32 %239 to i64
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = sub i64 %240, %243
  %245 = getelementptr inbounds i64, i64* %238, i64 %244
  store i64 0, i64* %245, align 8
  %246 = load i64*, i64** %11, align 8
  %247 = load i32, i32* @SDP_MAX_PAD_LEN, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 8
  %252 = sub i64 %248, %251
  %253 = add i64 %252, 1
  %254 = getelementptr inbounds i64, i64* %246, i64 %253
  store i64 0, i64* %254, align 8
  br label %256

255:                                              ; preds = %217
  store i32 0, i32* %10, align 4
  br label %256

256:                                              ; preds = %255, %221
  br label %257

257:                                              ; preds = %256, %198
  %258 = load i32, i32* %10, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %293

260:                                              ; preds = %257
  %261 = load i64*, i64** %11, align 8
  %262 = icmp ne i64* %261, null
  br i1 %262, label %263, label %293

263:                                              ; preds = %260
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 3
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i64*, i64** %11, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = call i32 @memcpy(i32* %273, i64* %274, i64 %276)
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  store i32* %284, i32** %286, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %291, %288
  store i64 %292, i64* %290, align 8
  br label %316

293:                                              ; preds = %260, %257
  %294 = load i32, i32* %10, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %296, %293
  %302 = load i64*, i64** %11, align 8
  %303 = icmp eq i64* %302, null
  br i1 %303, label %304, label %315

304:                                              ; preds = %301, %296
  %305 = load i64, i64* %8, align 8
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @SDP_TRACE_ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i64 %305, i32 %306)
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 2
  store i32 0, i32* %309, align 8
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 1
  store i64 0, i64* %311, align 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  store i64 0, i64* %313, align 8
  %314 = load i32, i32* @FALSE, align 4
  store i32 %314, i32* %6, align 4
  br label %330

315:                                              ; preds = %301
  br label %316

316:                                              ; preds = %315, %263
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %318, align 8
  %321 = load i32, i32* @TRUE, align 4
  store i32 %321, i32* %6, align 4
  br label %330

322:                                              ; preds = %110
  br label %323

323:                                              ; preds = %322
  %324 = load i64, i64* %14, align 8
  %325 = add nsw i64 %324, 1
  store i64 %325, i64* %14, align 8
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 1
  store %struct.TYPE_6__* %327, %struct.TYPE_6__** %15, align 8
  br label %106

328:                                              ; preds = %106
  %329 = load i32, i32* @FALSE, align 4
  store i32 %329, i32* %6, align 4
  br label %330

330:                                              ; preds = %328, %316, %304, %156
  %331 = load i32, i32* %6, align 4
  ret i32 %331
}

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @SDP_TRACE_DEBUG(i8*, i32, i64, i64, i32, i64*, i64*) #1

declare dso_local i32 @SDP_DeleteAttribute(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i64) #1

declare dso_local i32 @SDP_TRACE_ERROR(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
