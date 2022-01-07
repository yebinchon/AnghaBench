; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_ff_intrax8_decode_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8.c_ff_intrax8_decode_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32*, i32 }

@PICT_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_intrax8_decode_picture(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 14
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %15, align 4
  %27 = ashr i32 %26, 1
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 14
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @get_bits1(i32* %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 15
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 1
  %59 = add nsw i32 65536, %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 5
  br i1 %69, label %70, label %81

70:                                               ; preds = %9
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  br label %104

81:                                               ; preds = %9
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 3
  %89 = ashr i32 %88, 3
  %90 = add nsw i32 %84, %89
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 1
  %97 = add nsw i32 65536, %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %97, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %81, %70
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = call i32 @x8_reset_vlc_tables(%struct.TYPE_12__* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 5
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %243, %104
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 2
  %117 = icmp slt i32 %112, %116
  br i1 %117, label %118, label %248

118:                                              ; preds = %109
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 12
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @x8_init_block_index(%struct.TYPE_12__* %119, i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  %132 = mul nsw i32 %127, %131
  store i32 %132, i32* %19, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %213, %118
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 10
  %141 = load i32, i32* %140, align 8
  %142 = mul nsw i32 %141, 2
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %218

144:                                              ; preds = %135
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %146 = call i32 @x8_get_prediction(%struct.TYPE_12__* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = call i64 @x8_setup_spatial_predictor(%struct.TYPE_12__* %147, i32 0)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  br label %249

151:                                              ; preds = %144
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %153 = call i64 @x8_decode_intra_mb(%struct.TYPE_12__* %152, i32 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %249

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %159, %162
  %164 = and i32 %163, 1
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %206

166:                                              ; preds = %156
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %168 = call i32 @x8_get_prediction_chroma(%struct.TYPE_12__* %167)
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %170 = call i64 @x8_setup_spatial_predictor(%struct.TYPE_12__* %169, i32 1)
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %172 = call i64 @x8_decode_intra_mb(%struct.TYPE_12__* %171, i32 1)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %249

175:                                              ; preds = %166
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %177 = call i64 @x8_setup_spatial_predictor(%struct.TYPE_12__* %176, i32 2)
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = call i64 @x8_decode_intra_mb(%struct.TYPE_12__* %178, i32 2)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %249

182:                                              ; preds = %175
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 11
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 8
  store i32 %188, i32* %186, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 11
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 8
  store i32 %194, i32* %192, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %19, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %197, i32* %203, align 4
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %182, %156
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 11
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 8
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %206
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  br label %135

218:                                              ; preds = %135
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 1
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %242

224:                                              ; preds = %218
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 13
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 12
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 12
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = mul nsw i32 %237, 8
  %239 = load i32, i32* @PICT_FRAME, align 4
  %240 = load i32, i32* %18, align 4
  %241 = call i32 @ff_draw_horiz_band(i32 %227, i32 %230, i32 %233, i32 %238, i32 16, i32 %239, i32 0, i32 %240)
  br label %242

242:                                              ; preds = %224, %218
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %109

248:                                              ; preds = %109
  br label %249

249:                                              ; preds = %248, %181, %174, %155, %150
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load i32*, i32** %13, align 8
  store i32 %252, i32* %253, align 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %14, align 8
  store i32 %256, i32* %257, align 4
  ret i32 0
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @x8_reset_vlc_tables(%struct.TYPE_12__*) #1

declare dso_local i32 @x8_init_block_index(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @x8_get_prediction(%struct.TYPE_12__*) #1

declare dso_local i64 @x8_setup_spatial_predictor(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @x8_decode_intra_mb(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @x8_get_prediction_chroma(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_draw_horiz_band(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
