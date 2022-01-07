; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_formant_postfilter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_formant_postfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@LPC_ORDER = common dso_local global i32 0, align 4
@FRAME_LEN = common dso_local global i32 0, align 4
@SUBFRAMES = common dso_local global i32 0, align 4
@postfilter_tbl = common dso_local global i32** null, align 8
@SUBFRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32*, i32*)* @formant_postfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @formant_postfilter(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %20 = load i32, i32* @LPC_ORDER, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = mul nuw i64 2, %21
  %24 = alloca i32, i64 %23, align 16
  store i64 %21, i64* %10, align 8
  %25 = load i32, i32* @LPC_ORDER, align 4
  %26 = load i32, i32* @FRAME_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @LPC_ORDER, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i32* %30, i32* %33, i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @LPC_ORDER, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(i32* %29, i32* %41, i32 %45)
  %47 = load i32, i32* @LPC_ORDER, align 4
  store i32 %47, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %120, %4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @SUBFRAMES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %126

52:                                               ; preds = %48
  store i32 0, i32* %15, align 4
  br label %53

53:                                               ; preds = %100, %52
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @LPC_ORDER, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 0, %62
  %64 = load i32**, i32*** @postfilter_tbl, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %63, %70
  %72 = add nsw i32 %71, 16384
  %73 = ashr i32 %72, 15
  %74 = mul nsw i64 0, %21
  %75 = getelementptr inbounds i32, i32* %24, i64 %74
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32**, i32*** @postfilter_tbl, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %84, %91
  %93 = add nsw i32 %92, 16384
  %94 = ashr i32 %93, 15
  %95 = mul nsw i64 1, %21
  %96 = getelementptr inbounds i32, i32* %24, i64 %95
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %94, i32* %99, align 4
  br label %100

100:                                              ; preds = %57
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %53

103:                                              ; preds = %53
  %104 = mul nsw i64 0, %21
  %105 = getelementptr inbounds i32, i32* %24, i64 %104
  %106 = mul nsw i64 1, %21
  %107 = getelementptr inbounds i32, i32* %24, i64 %106
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %29, i64 %113
  %115 = call i32 @iir_filter(i32* %105, i32* %107, i32* %111, i32* %114, i32 1)
  %116 = load i32, i32* @LPC_ORDER, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %103
  %121 = load i32, i32* @SUBFRAME_LEN, align 4
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %48

126:                                              ; preds = %48
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* @FRAME_LEN, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* @LPC_ORDER, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i32* %129, i32* %133, i32 %137)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @FRAME_LEN, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %29, i64 %143
  %145 = load i32, i32* @LPC_ORDER, align 4
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = call i32 @memcpy(i32* %141, i32* %144, i32 %148)
  %150 = load i32, i32* @LPC_ORDER, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %7, align 8
  %154 = load i32, i32* @LPC_ORDER, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %29, i64 %155
  store i32* %156, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %157

157:                                              ; preds = %269, %126
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @SUBFRAMES, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %272

161:                                              ; preds = %157
  %162 = load i32*, i32** %8, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i32, i32* @SUBFRAME_LEN, align 4
  %165 = call i32 @ff_g723_1_scale_vector(i32* %162, i32* %163, i32 %164)
  store i32 %165, i32* %18, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* @SUBFRAME_LEN, align 4
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @ff_g723_1_dot_product(i32* %166, i32* %168, i32 %170)
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %171, i32* %172, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* @SUBFRAME_LEN, align 4
  %176 = call i32 @ff_g723_1_dot_product(i32* %173, i32* %174, i32 %175)
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 16
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %16, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %161
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = ashr i32 %185, 2
  %187 = load i32, i32* %16, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %16, align 4
  br label %189

189:                                              ; preds = %183, %161
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = mul nsw i32 3, %192
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %193, %194
  %196 = add nsw i32 %195, 2
  %197 = ashr i32 %196, 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 0, %202
  %204 = ashr i32 %203, 1
  %205 = and i32 %204, -4
  store i32 %205, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %206

206:                                              ; preds = %231, %189
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* @SUBFRAME_LEN, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %234

210:                                              ; preds = %206
  %211 = load i32*, i32** %12, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %14, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = ashr i32 %221, 16
  %223 = load i32, i32* %16, align 4
  %224 = mul nsw i32 %222, %223
  %225 = call i32 @av_sat_dadd32(i32 %215, i32 %224)
  %226 = ashr i32 %225, 16
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %210
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %206

234:                                              ; preds = %206
  %235 = load i32, i32* %18, align 4
  %236 = mul nsw i32 2, %235
  %237 = add nsw i32 %236, 4
  store i32 %237, i32* %16, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %234
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %16, align 4
  %244 = sub nsw i32 0, %243
  %245 = shl i32 %242, %244
  %246 = call i32 @av_clipl_int32(i32 %245)
  store i32 %246, i32* %19, align 4
  br label %252

247:                                              ; preds = %234
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %16, align 4
  %251 = ashr i32 %249, %250
  store i32 %251, i32* %19, align 4
  br label %252

252:                                              ; preds = %247, %240
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call i32 @gain_scale(%struct.TYPE_4__* %253, i32* %254, i32 %255)
  %257 = load i32, i32* @SUBFRAME_LEN, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %7, align 8
  %261 = load i32, i32* @SUBFRAME_LEN, align 4
  %262 = load i32*, i32** %12, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %12, align 8
  %265 = load i32, i32* @SUBFRAME_LEN, align 4
  %266 = load i32*, i32** %8, align 8
  %267 = sext i32 %265 to i64
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32* %268, i32** %8, align 8
  br label %269

269:                                              ; preds = %252
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %13, align 4
  br label %157

272:                                              ; preds = %157
  %273 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %273)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @iir_filter(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @ff_g723_1_scale_vector(i32*, i32*, i32) #2

declare dso_local i32 @ff_g723_1_dot_product(i32*, i32*, i32) #2

declare dso_local i32 @av_sat_dadd32(i32, i32) #2

declare dso_local i32 @av_clipl_int32(i32) #2

declare dso_local i32 @gain_scale(%struct.TYPE_4__*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
