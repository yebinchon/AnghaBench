; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_store_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_qcelp.c_store_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid interleave size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Invalid interleave index %d/%d\0A\00", align 1
@RTP_NOTS_VALUE = common dso_local global i32 0, align 4
@frame_sizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*, i32)* @store_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_packet(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %8, align 4
  br label %287

26:                                               ; preds = %7
  %27 = load i32*, i32** %14, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 3
  %31 = and i32 %30, 7
  store i32 %31, i32* %16, align 4
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 7
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp sgt i32 %36, 5
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i32, i32* %16, align 4
  %42 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %8, align 4
  br label %287

44:                                               ; preds = %26
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i32 (i32*, i32, i8*, i32, ...) @av_log(i32* %49, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %8, align 4
  br label %287

55:                                               ; preds = %44
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  store i32 0, i32* %21, align 4
  br label %67

67:                                               ; preds = %78, %61
  %68 = load i32, i32* %21, align 4
  %69 = icmp slt i32 %68, 6
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %21, align 4
  br label %67

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %17, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %151

88:                                               ; preds = %82
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %150

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %113, %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %97

118:                                              ; preds = %97
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %120, 4
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %123, i32* %8, align 4
  br label %287

124:                                              ; preds = %118
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @memcpy(i32 %127, i32* %128, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @RTP_NOTS_VALUE, align 4
  %139 = load i32*, i32** %13, align 8
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %146 = load i32*, i32** %13, align 8
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @return_stored_frame(i32* %142, %struct.TYPE_12__* %143, %struct.TYPE_14__* %144, %struct.TYPE_15__* %145, i32* %146, i32* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  br label %287

150:                                              ; preds = %93
  br label %151

151:                                              ; preds = %150, %82
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %152, %155
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %174, %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %164
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %158

179:                                              ; preds = %158
  br label %180

180:                                              ; preds = %179, %151
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  %184 = load i32*, i32** %14, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** @frame_sizes, align 8
  %188 = call i32 @FF_ARRAY_ELEMS(i32* %187)
  %189 = icmp sge i32 %186, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %8, align 4
  br label %287

192:                                              ; preds = %180
  %193 = load i32*, i32** @frame_sizes, align 8
  %194 = load i32*, i32** %14, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %18, align 4
  %200 = load i32, i32* %18, align 4
  %201 = add nsw i32 1, %200
  %202 = load i32, i32* %15, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %192
  %205 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %205, i32* %8, align 4
  br label %287

206:                                              ; preds = %192
  %207 = load i32, i32* %15, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = icmp ugt i64 %211, 4
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %214, i32* %8, align 4
  br label %287

215:                                              ; preds = %206
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @av_new_packet(%struct.TYPE_15__* %216, i32 %217)
  store i32 %218, i32* %19, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i32, i32* %19, align 4
  store i32 %221, i32* %8, align 4
  br label %287

222:                                              ; preds = %215
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %14, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @memcpy(i32 %225, i32* %227, i32 %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i64 %241
  store %struct.TYPE_13__* %242, %struct.TYPE_13__** %20, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sub nsw i32 %243, 1
  %245 = load i32, i32* %18, align 4
  %246 = sub nsw i32 %244, %245
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %14, align 8
  %255 = load i32, i32* %18, align 4
  %256 = add nsw i32 1, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @memcpy(i32 %253, i32* %258, i32 %261)
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %265, 0
  %267 = zext i1 %266 to i32
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %16, align 4
  %272 = icmp eq i32 %270, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %222
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 1
  store i32 0, i32* %275, align 4
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = icmp ne i32 %278, 0
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  store i32 %281, i32* %8, align 4
  br label %287

282:                                              ; preds = %222
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  store i32 0, i32* %8, align 4
  br label %287

287:                                              ; preds = %282, %273, %220, %213, %204, %190, %124, %122, %48, %38, %24
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @return_stored_frame(i32*, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
