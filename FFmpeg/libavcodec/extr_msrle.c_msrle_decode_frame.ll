; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrle.c_msrle_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msrle.c_msrle_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32**, i32* }
%struct.TYPE_14__ = type { i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @msrle_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msrle_decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %12, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = call i32 @FFALIGN(i32 %37, i32 32)
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %5, align 4
  br label %267

44:                                               ; preds = %4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %45, %struct.TYPE_16__* %48, i32 0)
  store i32 %49, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %267

53:                                               ; preds = %44
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %106

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %61, 8
  br i1 %62, label %63, label %106

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %66 = call i32* @av_packet_get_side_data(%struct.TYPE_14__* %64, i32 %65, i32* %15)
  store i32* %66, i32** %16, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @AVPALETTE_SIZE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* @AVPALETTE_SIZE, align 4
  %83 = call i32 @memcpy(i32* %80, i32* %81, i32 %82)
  br label %93

84:                                               ; preds = %69, %63
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @av_log(%struct.TYPE_15__* %88, i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* @AVPALETTE_SIZE, align 4
  %105 = call i32 @memcpy(i32* %100, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %93, %58, %53
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %239

116:                                              ; preds = %106
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @av_image_get_linesize(i32 %119, i32 %122, i32 0)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 0
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %18, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = load i32, i32* %13, align 4
  %139 = mul nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %133, i64 %140
  store i32* %141, i32** %19, align 8
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %116
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %5, align 4
  br label %267

146:                                              ; preds = %116
  store i32 0, i32* %20, align 4
  br label %147

147:                                              ; preds = %235, %146
  %148 = load i32, i32* %20, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %148, %151
  br i1 %152, label %153, label %238

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %158, label %214

158:                                              ; preds = %153
  store i32 0, i32* %21, align 4
  br label %159

159:                                              ; preds = %191, %158
  %160 = load i32, i32* %21, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %159
  %167 = load i32*, i32** %19, align 8
  %168 = load i32, i32* %21, align 4
  %169 = ashr i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 4
  %174 = load i32*, i32** %18, align 8
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 0
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32*, i32** %19, align 8
  %180 = load i32, i32* %21, align 4
  %181 = ashr i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 15
  %186 = load i32*, i32** %18, align 8
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %166
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %192, 2
  store i32 %193, i32* %21, align 4
  br label %159

194:                                              ; preds = %159
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 1
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %194
  %201 = load i32*, i32** %19, align 8
  %202 = load i32, i32* %21, align 4
  %203 = ashr i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 4
  %208 = load i32*, i32** %18, align 8
  %209 = load i32, i32* %21, align 4
  %210 = add nsw i32 %209, 0
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  br label %213

213:                                              ; preds = %200, %194
  br label %219

214:                                              ; preds = %153
  %215 = load i32*, i32** %18, align 8
  %216 = load i32*, i32** %19, align 8
  %217 = load i32, i32* %17, align 4
  %218 = call i32 @memcpy(i32* %215, i32* %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %213
  %220 = load i32, i32* %13, align 4
  %221 = load i32*, i32** %19, align 8
  %222 = sext i32 %220 to i64
  %223 = sub i64 0, %222
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32* %224, i32** %19, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %18, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %18, align 8
  br label %235

235:                                              ; preds = %219
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %20, align 4
  br label %147

238:                                              ; preds = %147
  br label %255

239:                                              ; preds = %106
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 2
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @bytestream2_init(i32* %241, i32* %242, i32 %243)
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 2
  %254 = call i32 @ff_msrle_decode(%struct.TYPE_15__* %245, %struct.TYPE_16__* %248, i32 %251, i32* %253)
  br label %255

255:                                              ; preds = %239, %238
  %256 = load i8*, i8** %7, align 8
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = call i32 @av_frame_ref(i8* %256, %struct.TYPE_16__* %259)
  store i32 %260, i32* %14, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = load i32, i32* %14, align 4
  store i32 %263, i32* %5, align 4
  br label %267

264:                                              ; preds = %255
  %265 = load i32*, i32** %8, align 8
  store i32 1, i32* %265, align 4
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %264, %262, %144, %51, %42
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32) #1

declare dso_local i32 @av_image_get_linesize(i32, i32, i32) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @ff_msrle_decode(%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
