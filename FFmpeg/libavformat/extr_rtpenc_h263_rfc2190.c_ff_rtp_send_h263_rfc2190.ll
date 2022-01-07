; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_ff_rtp_send_h263_rfc2190.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpenc_h263_rfc2190.c_ff_rtp_send_h263_rfc2190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.H263Info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.H263State = type { i8*, i8*, i8*, i8*, i32, i64, i64, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to split H.263 packet, use -mb_info %d or -ps 1.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rtp_send_h263_rfc2190(%struct.TYPE_8__* %0, i64* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.H263Info, align 4
  %17 = alloca %struct.H263State, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca %struct.H263State, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %31 = bitcast %struct.H263Info* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 32, i1 false)
  %32 = bitcast %struct.H263State* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 64, i1 false)
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sdiv i32 %33, 12
  store i32 %34, i32* %19, align 4
  %35 = load i64*, i64** %7, align 8
  store i64* %35, i64** %20, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i64*, i64** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %42, 8
  %44 = call i32 @init_get_bits(i32* %15, i64* %41, i32 %43)
  %45 = call i32 @get_bits(i32* %15, i32 22)
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %47, label %64

47:                                               ; preds = %5
  %48 = call i32 @get_bits(i32* %15, i32 8)
  %49 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = call i32 @skip_bits(i32* %15, i32 2)
  %51 = call i32 @skip_bits(i32* %15, i32 3)
  %52 = call i32 @get_bits(i32* %15, i32 3)
  %53 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = call i32 @get_bits(i32* %15, i32 1)
  %55 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = call i32 @get_bits(i32* %15, i32 1)
  %57 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = call i32 @get_bits(i32* %15, i32 1)
  %59 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 4
  store i32 %58, i32* %59, align 4
  %60 = call i32 @get_bits(i32* %15, i32 1)
  %61 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  %62 = call i32 @get_bits(i32* %15, i32 1)
  %63 = getelementptr inbounds %struct.H263Info, %struct.H263Info* %16, i32 0, i32 6
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %47, %5
  br label %65

65:                                               ; preds = %281, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %289

68:                                               ; preds = %65
  %69 = bitcast %struct.H263State* %21 to i8*
  %70 = bitcast %struct.H263State* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 64, i1 false)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @FFMIN(i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %238

80:                                               ; preds = %68
  %81 = load i64*, i64** %7, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = call i64* @ff_h263_find_resync_marker_reverse(i64* %81, i64* %85)
  store i64* %86, i64** %22, align 8
  %87 = load i64*, i64** %22, align 8
  %88 = load i64*, i64** %7, align 8
  %89 = ptrtoint i64* %87 to i64
  %90 = ptrtoint i64* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 8
  %99 = icmp eq i32 %94, %98
  br i1 %99, label %100, label %237

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %123, %100
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i64*, i64** %9, align 8
  %107 = load i32, i32* %18, align 4
  %108 = mul nsw i32 12, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = call i32 @AV_RL32(i64* %110)
  %112 = sdiv i32 %111, 8
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = load i64*, i64** %7, align 8
  %116 = load i64*, i64** %20, align 8
  %117 = ptrtoint i64* %115 to i64
  %118 = ptrtoint i64* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 8
  %121 = icmp sge i64 %114, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %126

123:                                              ; preds = %105
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  br label %101

126:                                              ; preds = %122, %101
  br label %127

127:                                              ; preds = %151, %126
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %19, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %127
  %133 = load i64*, i64** %9, align 8
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %134, 1
  %136 = mul nsw i32 12, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = call i32 @AV_RL32(i64* %138)
  %140 = sdiv i32 %139, 8
  store i32 %140, i32* %24, align 4
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64*, i64** %22, align 8
  %144 = load i64*, i64** %20, align 8
  %145 = ptrtoint i64* %143 to i64
  %146 = ptrtoint i64* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 8
  %149 = icmp sge i64 %142, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %132
  br label %154

151:                                              ; preds = %132
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %127

154:                                              ; preds = %150, %127
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %19, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %228

158:                                              ; preds = %154
  %159 = load i64*, i64** %9, align 8
  %160 = load i32, i32* %18, align 4
  %161 = mul nsw i32 12, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  store i64* %163, i64** %25, align 8
  %164 = load i64*, i64** %25, align 8
  %165 = call i32 @AV_RL32(i64* %164)
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* %26, align 4
  %167 = add nsw i32 %166, 7
  %168 = sdiv i32 %167, 8
  store i32 %168, i32* %27, align 4
  %169 = load i32, i32* %27, align 4
  %170 = sext i32 %169 to i64
  %171 = load i64*, i64** %22, align 8
  %172 = load i64*, i64** %20, align 8
  %173 = ptrtoint i64* %171 to i64
  %174 = ptrtoint i64* %172 to i64
  %175 = sub i64 %173, %174
  %176 = sdiv exact i64 %175, 8
  %177 = icmp sle i64 %170, %176
  br i1 %177, label %178, label %227

178:                                              ; preds = %158
  %179 = load i64*, i64** %25, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 4
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 6
  store i64 %181, i64* %182, align 8
  %183 = load i64*, i64** %25, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 5
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 5
  store i64 %185, i64* %186, align 8
  %187 = load i64*, i64** %25, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 6
  %189 = call i32 @AV_RL16(i64* %188)
  %190 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 4
  store i32 %189, i32* %190, align 8
  %191 = load i64*, i64** %25, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 8
  %193 = load i64, i64* %192, align 8
  %194 = inttoptr i64 %193 to i8*
  %195 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 3
  store i8* %194, i8** %195, align 8
  %196 = load i64*, i64** %25, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 9
  %198 = load i64, i64* %197, align 8
  %199 = inttoptr i64 %198 to i8*
  %200 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 2
  store i8* %199, i8** %200, align 8
  %201 = load i64*, i64** %25, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 10
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to i8*
  %205 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 1
  store i8* %204, i8** %205, align 8
  %206 = load i64*, i64** %25, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 11
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = getelementptr inbounds %struct.H263State, %struct.H263State* %17, i32 0, i32 0
  store i8* %209, i8** %210, align 8
  %211 = load i32, i32* %27, align 4
  %212 = mul nsw i32 8, %211
  %213 = load i32, i32* %26, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %27, align 4
  %216 = sext i32 %215 to i64
  %217 = load i64*, i64** %7, align 8
  %218 = load i64*, i64** %20, align 8
  %219 = ptrtoint i64* %217 to i64
  %220 = ptrtoint i64* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 8
  %223 = sub nsw i64 %216, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %18, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %178, %158
  br label %236

228:                                              ; preds = %154
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %230 = load i32, i32* @AV_LOG_ERROR, align 4
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 8
  %235 = call i32 @av_log(%struct.TYPE_8__* %229, i32 %230, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %228, %227
  br label %237

237:                                              ; preds = %236, %80
  br label %238

238:                                              ; preds = %237, %68
  %239 = load i32, i32* %8, align 4
  %240 = icmp sgt i32 %239, 2
  br i1 %240, label %241, label %261

241:                                              ; preds = %238
  %242 = load i64*, i64** %7, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %261, label %246

246:                                              ; preds = %241
  %247 = load i64*, i64** %7, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %253 = load i64*, i64** %7, align 8
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* %8, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @send_mode_a(%struct.TYPE_8__* %252, %struct.H263Info* %16, i64* %253, i32 %254, i32 %255, i32 %259)
  br label %272

261:                                              ; preds = %246, %241, %238
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %263 = load i64*, i64** %7, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp eq i32 %267, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @send_mode_b(%struct.TYPE_8__* %262, %struct.H263Info* %16, %struct.H263State* %21, i64* %263, i32 %264, i32 %265, i32 %266, i32 %270)
  br label %272

272:                                              ; preds = %261, %251
  %273 = load i32, i32* %14, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load i32, i32* %14, align 4
  %277 = sub nsw i32 8, %276
  store i32 %277, i32* %13, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %12, align 4
  br label %281

280:                                              ; preds = %272
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %280, %275
  %282 = load i32, i32* %12, align 4
  %283 = load i64*, i64** %7, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i64, i64* %283, i64 %284
  store i64* %285, i64** %7, align 8
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* %8, align 4
  %288 = sub nsw i32 %287, %286
  store i32 %288, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %65

289:                                              ; preds = %65
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_get_bits(i32*, i64*, i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i64* @ff_h263_find_resync_marker_reverse(i64*, i64*) #2

declare dso_local i32 @AV_RL32(i64*) #2

declare dso_local i32 @AV_RL16(i64*) #2

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, i32) #2

declare dso_local i32 @send_mode_a(%struct.TYPE_8__*, %struct.H263Info*, i64*, i32, i32, i32) #2

declare dso_local i32 @send_mode_b(%struct.TYPE_8__*, %struct.H263Info*, %struct.H263State*, i64*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
