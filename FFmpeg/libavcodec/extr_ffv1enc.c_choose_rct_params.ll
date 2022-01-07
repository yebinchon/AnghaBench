; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_choose_rct_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1enc.c_choose_rct_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@choose_rct_params.rct_y_coeff = internal constant [15 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 0, i32 4], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 1, i32 3], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], align 16
@NB_Y_COEFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32**, i32*, i32, i32)* @choose_rct_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_rct_params(%struct.TYPE_3__* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [15 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32*], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %32 = bitcast [15 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 60, i1 false)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 8
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %245, %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %248

42:                                               ; preds = %38
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 %56
  store i32* %54, i32** %57, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %43

61:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %241, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %244

66:                                               ; preds = %62
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load i32**, i32*** %7, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %28, align 4
  %85 = load i32, i32* %28, align 4
  %86 = and i32 %85, 255
  store i32 %86, i32* %22, align 4
  %87 = load i32, i32* %28, align 4
  %88 = lshr i32 %87, 8
  %89 = and i32 %88, 255
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %28, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  store i32 %92, i32* %24, align 4
  br label %139

93:                                               ; preds = %66
  %94 = load i32**, i32*** %7, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %22, align 4
  %109 = load i32**, i32*** %7, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %13, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %23, align 4
  %124 = load i32**, i32*** %7, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %24, align 4
  br label %139

139:                                              ; preds = %93, %69
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* %19, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %23, align 4
  %144 = load i32, i32* %20, align 4
  %145 = sub nsw i32 %143, %144
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %22, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %219

151:                                              ; preds = %139
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %219

154:                                              ; preds = %151
  %155 = load i32, i32* %26, align 4
  %156 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %157 = load i32*, i32** %156, align 16
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %155, %161
  store i32 %162, i32* %29, align 4
  %163 = load i32, i32* %25, align 4
  %164 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %163, %169
  store i32 %170, i32* %30, align 4
  %171 = load i32, i32* %27, align 4
  %172 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  %173 = load i32*, i32** %172, align 16
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %171, %177
  store i32 %178, i32* %31, align 4
  %179 = load i32, i32* %29, align 4
  %180 = load i32, i32* %31, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %31, align 4
  %182 = load i32, i32* %29, align 4
  %183 = load i32, i32* %30, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %30, align 4
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %215, %154
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 15
  br i1 %187, label %188, label %218

188:                                              ; preds = %185
  %189 = load i32, i32* %29, align 4
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* @choose_rct_params.rct_y_coeff, i64 0, i64 %192
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %193, i64 0, i64 0
  %195 = load i32, i32* %194, align 8
  %196 = mul nsw i32 %190, %195
  %197 = load i32, i32* %30, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* @choose_rct_params.rct_y_coeff, i64 0, i64 %199
  %201 = getelementptr inbounds [2 x i32], [2 x i32]* %200, i64 0, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %197, %202
  %204 = add nsw i32 %196, %203
  %205 = ashr i32 %204, 2
  %206 = add nsw i32 %189, %205
  %207 = call i64 @FFABS(i32 %206)
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %207
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  br label %215

215:                                              ; preds = %188
  %216 = load i32, i32* %14, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  br label %185

218:                                              ; preds = %185
  br label %219

219:                                              ; preds = %218, %151, %139
  %220 = load i32, i32* %26, align 4
  %221 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %222 = load i32*, i32** %221, align 16
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %220, i32* %225, align 4
  %226 = load i32, i32* %25, align 4
  %227 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %226, i32* %231, align 4
  %232 = load i32, i32* %27, align 4
  %233 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  %234 = load i32*, i32** %233, align 16
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %232, i32* %237, align 4
  %238 = load i32, i32* %24, align 4
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %23, align 4
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %22, align 4
  store i32 %240, i32* %21, align 4
  br label %241

241:                                              ; preds = %219
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  br label %62

244:                                              ; preds = %62
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %38

248:                                              ; preds = %38
  store i32 0, i32* %16, align 4
  store i32 1, i32* %14, align 4
  br label %249

249:                                              ; preds = %265, %248
  %250 = load i32, i32* %14, align 4
  %251 = icmp slt i32 %250, 15
  br i1 %251, label %252, label %268

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %252
  %263 = load i32, i32* %14, align 4
  store i32 %263, i32* %16, align 4
  br label %264

264:                                              ; preds = %262, %252
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %249

268:                                              ; preds = %249
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* @choose_rct_params.rct_y_coeff, i64 0, i64 %270
  %272 = getelementptr inbounds [2 x i32], [2 x i32]* %271, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  %276 = load i32, i32* %16, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [15 x [2 x i32]], [15 x [2 x i32]]* @choose_rct_params.rct_y_coeff, i64 0, i64 %277
  %279 = getelementptr inbounds [2 x i32], [2 x i32]* %278, i64 0, i64 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @FFABS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
