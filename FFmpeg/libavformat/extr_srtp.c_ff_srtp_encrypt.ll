; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_ff_srtp_encrypt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtp.c_ff_srtp_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SRTPContext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_srtp_encrypt(%struct.SRTPContext* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.SRTPContext*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca [20 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [4 x i32], align 16
  store %struct.SRTPContext* %0, %struct.SRTPContext** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 64, i1 false)
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %6, align 4
  br label %287

29:                                               ; preds = %5
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @RTP_PT_IS_RTCP(i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %38 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %42 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %18, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %287

59:                                               ; preds = %52
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %19, align 8
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = call i32 @AV_RB32(i32* %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %72 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  store i32 %73, i32* %14, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32* %76, i32** %19, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, 8
  store i32 %78, i32* %9, align 4
  br label %164

79:                                               ; preds = %59
  %80 = load i32*, i32** %19, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = call i32 @AV_RB16(i32* %81)
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 12
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %86, i32* %6, align 4
  br label %287

87:                                               ; preds = %79
  %88 = load i32*, i32** %19, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = call i32 @AV_RB32(i32* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %93 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %87
  %97 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %98 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96, %87
  %102 = load i32, i32* %22, align 4
  %103 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %104 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %107 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 16
  %110 = add nsw i32 %105, %109
  store i32 %110, i32* %14, align 4
  %111 = load i32*, i32** %19, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  store i32 %114, i32* %21, align 4
  %115 = load i32*, i32** %19, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 16
  store i32 %118, i32* %20, align 4
  %119 = load i32*, i32** %19, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  store i32* %120, i32** %19, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, 12
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %21, align 4
  %124 = mul nsw i32 4, %123
  %125 = load i32*, i32** %19, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %19, align 8
  %128 = load i32, i32* %21, align 4
  %129 = mul nsw i32 4, %128
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %101
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %6, align 4
  br label %287

136:                                              ; preds = %101
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %143, i32* %6, align 4
  br label %287

144:                                              ; preds = %139
  %145 = load i32*, i32** %19, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  %147 = call i32 @AV_RB16(i32* %146)
  %148 = add nsw i32 %147, 1
  %149 = mul nsw i32 %148, 4
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %154, i32* %6, align 4
  br label %287

155:                                              ; preds = %144
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32* %162, i32** %19, align 8
  br label %163

163:                                              ; preds = %155, %136
  br label %164

164:                                              ; preds = %163, %67
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %170 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  br label %176

172:                                              ; preds = %164
  %173 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %174 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 4
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i32 [ %171, %168 ], [ %175, %172 ]
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @create_iv(i32* %165, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %182 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %188 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  br label %194

190:                                              ; preds = %176
  %191 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %192 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = phi i32 [ %189, %186 ], [ %193, %190 ]
  %196 = call i32 @av_aes_init(i32 %183, i32 %195, i32 128, i32 0)
  %197 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %198 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @encrypt_counter(i32 %199, i32* %200, i32* %201, i32 %202)
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %194
  %207 = load i32*, i32** %19, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %14, align 4
  %212 = or i32 -2147483648, %211
  %213 = call i32 @AV_WB32(i32* %210, i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 4
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %206, %194
  %217 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %218 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %224 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  br label %230

226:                                              ; preds = %216
  %227 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %228 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  br label %230

230:                                              ; preds = %226, %222
  %231 = phi i32 [ %225, %222 ], [ %229, %226 ]
  %232 = call i32 @av_hmac_init(i32 %219, i32 %231, i32 4)
  %233 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %234 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32*, i32** %10, align 8
  %242 = ptrtoint i32* %240 to i64
  %243 = ptrtoint i32* %241 to i64
  %244 = sub i64 %242, %243
  %245 = sdiv exact i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = call i32 @av_hmac_update(i32 %235, i32* %236, i32 %246)
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %230
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %252 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %253 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @AV_WB32(i32* %251, i32 %254)
  %256 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %257 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  %260 = call i32 @av_hmac_update(i32 %258, i32* %259, i32 4)
  br label %261

261:                                              ; preds = %250, %230
  %262 = load %struct.SRTPContext*, %struct.SRTPContext** %7, align 8
  %263 = getelementptr inbounds %struct.SRTPContext, %struct.SRTPContext* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %266 = call i32 @av_hmac_final(i32 %264, i32* %265, i32 80)
  %267 = load i32*, i32** %19, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %272 = load i32, i32* %17, align 4
  %273 = call i32 @memcpy(i32* %270, i32* %271, i32 %272)
  %274 = load i32, i32* %17, align 4
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %9, align 4
  %277 = load i32*, i32** %19, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32*, i32** %10, align 8
  %282 = ptrtoint i32* %280 to i64
  %283 = ptrtoint i32* %281 to i64
  %284 = sub i64 %282, %283
  %285 = sdiv exact i64 %284, 4
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %6, align 4
  br label %287

287:                                              ; preds = %261, %153, %142, %134, %85, %58, %27
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RTP_PT_IS_RTCP(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @AV_RB32(i32*) #2

declare dso_local i32 @AV_RB16(i32*) #2

declare dso_local i32 @create_iv(i32*, i32, i32, i32) #2

declare dso_local i32 @av_aes_init(i32, i32, i32, i32) #2

declare dso_local i32 @encrypt_counter(i32, i32*, i32*, i32) #2

declare dso_local i32 @AV_WB32(i32*, i32) #2

declare dso_local i32 @av_hmac_init(i32, i32, i32) #2

declare dso_local i32 @av_hmac_update(i32, i32*, i32) #2

declare dso_local i32 @av_hmac_final(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
