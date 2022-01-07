; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_ff_dct_quantize_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_ff_dct_quantize_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32**, i32**, i32, i32**, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, %struct.TYPE_9__, i64, i32 (%struct.TYPE_12__*, i32*)*, i64, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32 (i32*)* }

@QMAT_SHIFT = common dso_local global i32 0, align 4
@QUANT_BIAS_SHIFT = common dso_local global i32 0, align 4
@FF_IDCT_PERM_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dct_quantize_c(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32 (i32*)*, i32 (i32*)** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 %26(i32* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 13
  %36 = load i32 (%struct.TYPE_12__*, i32*)*, i32 (%struct.TYPE_12__*, i32*)** %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 %36(%struct.TYPE_12__* %37, i32* %38)
  br label %40

40:                                               ; preds = %33, %5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 12
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %108

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %18, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %15, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load i32, i32* %15, align 4
  %67 = shl i32 %66, 3
  store i32 %67, i32* %15, align 4
  br label %69

68:                                               ; preds = %45
  store i32 8, i32* %15, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 1
  %75 = add nsw i32 %72, %74
  %76 = load i32, i32* %15, align 4
  %77 = sdiv i32 %75, %76
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  br label %98

90:                                               ; preds = %69
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  br label %98

98:                                               ; preds = %90, %82
  %99 = phi i32* [ %89, %82 ], [ %97, %90 ]
  store i32* %99, i32** %17, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @QMAT_SHIFT, align 4
  %104 = load i32, i32* @QUANT_BIAS_SHIFT, align 4
  %105 = sub nsw i32 %103, %104
  %106 = shl i32 1, %105
  %107 = mul nsw i32 %102, %106
  store i32 %107, i32* %19, align 4
  br label %128

108:                                              ; preds = %40
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %18, align 8
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %14, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 5
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %17, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @QMAT_SHIFT, align 4
  %124 = load i32, i32* @QUANT_BIAS_SHIFT, align 4
  %125 = sub nsw i32 %123, %124
  %126 = shl i32 1, %125
  %127 = mul nsw i32 %122, %126
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %108, %98
  %129 = load i32, i32* @QMAT_SHIFT, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %19, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %21, align 4
  %135 = shl i32 %134, 1
  store i32 %135, i32* %22, align 4
  store i32 63, i32* %11, align 4
  br label %136

136:                                              ; preds = %170, %128
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp sge i32 %137, %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %136
  %141 = load i32*, i32** %18, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %12, align 4
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %150, %155
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %21, align 4
  %159 = add i32 %157, %158
  %160 = load i32, i32* %22, align 4
  %161 = icmp ugt i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %140
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %14, align 4
  br label %173

164:                                              ; preds = %140
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %11, align 4
  br label %136

173:                                              ; preds = %162, %136
  %174 = load i32, i32* %16, align 4
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %237, %173
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %240

179:                                              ; preds = %175
  %180 = load i32*, i32** %18, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %189, %194
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %196, %197
  %199 = load i32, i32* %22, align 4
  %200 = icmp ugt i32 %198, %199
  br i1 %200, label %201, label %231

201:                                              ; preds = %179
  %202 = load i32, i32* %13, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* @QMAT_SHIFT, align 4
  %209 = ashr i32 %207, %208
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %210, i32* %214, align 4
  br label %227

215:                                              ; preds = %201
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* %13, align 4
  %218 = sub nsw i32 %216, %217
  %219 = load i32, i32* @QMAT_SHIFT, align 4
  %220 = ashr i32 %218, %219
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = sub nsw i32 0, %221
  %223 = load i32*, i32** %7, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %215, %204
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %20, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %20, align 4
  br label %236

231:                                              ; preds = %179
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 0, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %227
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %11, align 4
  br label %175

240:                                              ; preds = %175
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %20, align 4
  %245 = icmp slt i32 %243, %244
  %246 = zext i1 %245 to i32
  %247 = load i32*, i32** %10, align 8
  store i32 %246, i32* %247, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @FF_IDCT_PERM_NONE, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %240
  %255 = load i32*, i32** %7, align 8
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %18, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @ff_block_permute(i32* %255, i32 %259, i32* %260, i32 %261)
  br label %263

263:                                              ; preds = %254, %240
  %264 = load i32, i32* %14, align 4
  ret i32 %264
}

declare dso_local i32 @ff_block_permute(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
