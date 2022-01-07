; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32****, i16**, i16* }

@WSHIFT = common dso_local global i32 0, align 4
@SAMPLES_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i16*, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_3__* %0, i32 %1, i16* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  %16 = alloca [32 x i32], align 16
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16* %2, i16** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32****, i32***** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32***, i32**** %27, i64 %29
  %31 = load i32***, i32**** %30, align 8
  %32 = getelementptr inbounds i32**, i32*** %31, i64 0
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32* %36, i32** %17, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %269, %4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %38, 36
  br i1 %39, label %40, label %272

40:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 32
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i16*, i16** %7, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 0
  %47 = load i16, i16* %46, align 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i16**, i16*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16*, i16** %50, i64 %52
  %54 = load i16*, i16** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 31, %56
  %58 = add nsw i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %54, i64 %59
  store i16 %47, i16* %60, align 2
  %61 = load i32, i32* %8, align 4
  %62 = load i16*, i16** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i16, i16* %62, i64 %63
  store i16* %64, i16** %7, align 8
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i16**, i16*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16*, i16** %71, i64 %73
  %75 = load i16*, i16** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, i16* %75, i64 %77
  store i16* %78, i16** %9, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i16*, i16** %80, align 8
  store i16* %81, i16** %10, align 8
  store i32 0, i32* %13, align 4
  br label %82

82:                                               ; preds = %180, %68
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 64
  br i1 %84, label %85, label %183

85:                                               ; preds = %82
  %86 = load i16*, i16** %9, align 8
  %87 = getelementptr inbounds i16, i16* %86, i64 0
  %88 = load i16, i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16*, i16** %10, align 8
  %91 = getelementptr inbounds i16, i16* %90, i64 0
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = mul nsw i32 %89, %93
  store i32 %94, i32* %11, align 4
  %95 = load i16*, i16** %9, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 64
  %97 = load i16, i16* %96, align 2
  %98 = sext i16 %97 to i32
  %99 = load i16*, i16** %10, align 8
  %100 = getelementptr inbounds i16, i16* %99, i64 64
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %98, %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i16*, i16** %9, align 8
  %107 = getelementptr inbounds i16, i16* %106, i64 128
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = load i16*, i16** %10, align 8
  %111 = getelementptr inbounds i16, i16* %110, i64 128
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i32
  %114 = mul nsw i32 %109, %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i16*, i16** %9, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 192
  %119 = load i16, i16* %118, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16*, i16** %10, align 8
  %122 = getelementptr inbounds i16, i16* %121, i64 192
  %123 = load i16, i16* %122, align 2
  %124 = sext i16 %123 to i32
  %125 = mul nsw i32 %120, %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  %128 = load i16*, i16** %9, align 8
  %129 = getelementptr inbounds i16, i16* %128, i64 256
  %130 = load i16, i16* %129, align 2
  %131 = sext i16 %130 to i32
  %132 = load i16*, i16** %10, align 8
  %133 = getelementptr inbounds i16, i16* %132, i64 256
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = mul nsw i32 %131, %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i16*, i16** %9, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 320
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = load i16*, i16** %10, align 8
  %144 = getelementptr inbounds i16, i16* %143, i64 320
  %145 = load i16, i16* %144, align 2
  %146 = sext i16 %145 to i32
  %147 = mul nsw i32 %142, %146
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i16*, i16** %9, align 8
  %151 = getelementptr inbounds i16, i16* %150, i64 384
  %152 = load i16, i16* %151, align 2
  %153 = sext i16 %152 to i32
  %154 = load i16*, i16** %10, align 8
  %155 = getelementptr inbounds i16, i16* %154, i64 384
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = mul nsw i32 %153, %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %11, align 4
  %161 = load i16*, i16** %9, align 8
  %162 = getelementptr inbounds i16, i16* %161, i64 448
  %163 = load i16, i16* %162, align 2
  %164 = sext i16 %163 to i32
  %165 = load i16*, i16** %10, align 8
  %166 = getelementptr inbounds i16, i16* %165, i64 448
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  %169 = mul nsw i32 %164, %168
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %174
  store i32 %172, i32* %175, align 4
  %176 = load i16*, i16** %9, align 8
  %177 = getelementptr inbounds i16, i16* %176, i32 1
  store i16* %177, i16** %9, align 8
  %178 = load i16*, i16** %10, align 8
  %179 = getelementptr inbounds i16, i16* %178, i32 1
  store i16* %179, i16** %10, align 8
  br label %180

180:                                              ; preds = %85
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %82

183:                                              ; preds = %82
  %184 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 16
  %185 = load i32, i32* %184, align 16
  %186 = load i32, i32* @WSHIFT, align 4
  %187 = ashr i32 %185, %186
  %188 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  store i32 %187, i32* %188, align 16
  store i32 1, i32* %13, align 4
  br label %189

189:                                              ; preds = %209, %183
  %190 = load i32, i32* %13, align 4
  %191 = icmp sle i32 %190, 16
  br i1 %191, label %192, label %212

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 16
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %13, align 4
  %199 = sub nsw i32 16, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %197, %202
  %204 = load i32, i32* @WSHIFT, align 4
  %205 = ashr i32 %203, %204
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %207
  store i32 %205, i32* %208, align 4
  br label %209

209:                                              ; preds = %192
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %189

212:                                              ; preds = %189
  store i32 17, i32* %13, align 4
  br label %213

213:                                              ; preds = %233, %212
  %214 = load i32, i32* %13, align 4
  %215 = icmp sle i32 %214, 31
  br i1 %215, label %216, label %236

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 16
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %13, align 4
  %223 = sub nsw i32 80, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sub nsw i32 %221, %226
  %228 = load i32, i32* @WSHIFT, align 4
  %229 = ashr i32 %227, %228
  %230 = load i32, i32* %13, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 %231
  store i32 %229, i32* %232, align 4
  br label %233

233:                                              ; preds = %216
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %213

236:                                              ; preds = %213
  %237 = load i32*, i32** %17, align 8
  %238 = getelementptr inbounds [32 x i32], [32 x i32]* %16, i64 0, i64 0
  %239 = call i32 @idct32(i32* %237, i32* %238)
  %240 = load i32, i32* %12, align 4
  %241 = sub nsw i32 %240, 32
  store i32 %241, i32* %12, align 4
  %242 = load i32*, i32** %17, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 32
  store i32* %243, i32** %17, align 8
  %244 = load i32, i32* %12, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %268

246:                                              ; preds = %236
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 2
  %249 = load i16**, i16*** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i16*, i16** %249, i64 %251
  %253 = load i16*, i16** %252, align 8
  %254 = load i32, i32* @SAMPLES_BUF_SIZE, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i16, i16* %253, i64 %255
  %257 = getelementptr inbounds i16, i16* %256, i64 -480
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  %260 = load i16**, i16*** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i16*, i16** %260, i64 %262
  %264 = load i16*, i16** %263, align 8
  %265 = call i32 @memmove(i16* %257, i16* %264, i32 960)
  %266 = load i32, i32* @SAMPLES_BUF_SIZE, align 4
  %267 = sub nsw i32 %266, 512
  store i32 %267, i32* %12, align 4
  br label %268

268:                                              ; preds = %246, %236
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %14, align 4
  br label %37

272:                                              ; preds = %37
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 %273, i32* %279, align 4
  ret void
}

declare dso_local i32 @idct32(i32*, i32*) #1

declare dso_local i32 @memmove(i16*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
