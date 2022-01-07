; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_wavpack_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wavpackenc.c_wavpack_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_15__*, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@WV_FLOAT_DATA = common dso_local global i32 0, align 4
@WV_MONO = common dso_local global i32 0, align 4
@WV_CROSS_DECORR = common dso_local global i32 0, align 4
@MAG_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @wavpack_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavpack_encode_frame(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @av_fast_padded_malloc(i32* %25, i32* %29, i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %276

46:                                               ; preds = %4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %77

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @av_fast_padded_malloc(i32* %55, i32* %59, i32 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %51
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = call i32 @AVERROR(i32 %74)
  store i32 %75, i32* %5, align 4
  br label %276

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = mul nsw i32 %84, 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 200, %88
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %11, align 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @ff_alloc_packet2(%struct.TYPE_19__* %91, %struct.TYPE_17__* %92, i32 %93, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %77
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %276

98:                                               ; preds = %77
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %236, %98
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %244

112:                                              ; preds = %104
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %114 = call i32 @set_samplerate(%struct.TYPE_16__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %145 [
    i32 129, label %120
    i32 128, label %125
    i32 130, label %138
  ]

120:                                              ; preds = %112
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %145

125:                                              ; preds = %112
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 5
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %130, 24
  %132 = zext i1 %131 to i32
  %133 = sub nsw i32 3, %132
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %145

138:                                              ; preds = %112
  %139 = load i32, i32* @WV_FLOAT_DATA, align 4
  %140 = or i32 3, %139
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %138, %112, %125, %120
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %149, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @fill_buffer(%struct.TYPE_16__* %146, i32 %155, i32 %160, i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %167, %170
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %179

173:                                              ; preds = %145
  %174 = load i32, i32* @WV_MONO, align 4
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %205

179:                                              ; preds = %145
  %180 = load i32, i32* @WV_CROSS_DECORR, align 4
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %188, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @fill_buffer(%struct.TYPE_16__* %185, i32 %195, i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %179, %173
  %206 = load i32, i32* @MAG_LSB, align 4
  %207 = shl i32 1, %206
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 3
  %212 = mul nsw i32 %211, 8
  %213 = add nsw i32 %212, 7
  %214 = mul nsw i32 %207, %213
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 4
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @wavpack_encode_block(%struct.TYPE_16__* %219, i32 %224, i32 %229, i32* %230, i32 %231)
  store i32 %232, i32* %12, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %205
  %235 = load i32, i32* %12, align 4
  store i32 %235, i32* %5, align 4
  br label %276

236:                                              ; preds = %205
  %237 = load i32, i32* %12, align 4
  %238 = load i32*, i32** %13, align 8
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  store i32* %240, i32** %13, align 8
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %11, align 4
  %243 = sub nsw i32 %242, %241
  store i32 %243, i32* %11, align 4
  br label %104

244:                                              ; preds = %104
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, %247
  store i32 %251, i32* %249, align 4
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 8
  %257 = load i32*, i32** %13, align 8
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = ptrtoint i32* %257 to i64
  %262 = ptrtoint i32* %260 to i64
  %263 = sub i64 %261, %262
  %264 = sdiv exact i64 %263, 4
  %265 = trunc i64 %264 to i32
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @ff_samples_to_time_base(%struct.TYPE_19__* %268, i32 %271)
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32*, i32** %9, align 8
  store i32 1, i32* %275, align 4
  store i32 0, i32* %5, align 4
  br label %276

276:                                              ; preds = %244, %234, %96, %73, %43
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @av_fast_padded_malloc(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_19__*, %struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @set_samplerate(%struct.TYPE_16__*) #1

declare dso_local i32 @fill_buffer(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @wavpack_encode_block(%struct.TYPE_16__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ff_samples_to_time_base(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
