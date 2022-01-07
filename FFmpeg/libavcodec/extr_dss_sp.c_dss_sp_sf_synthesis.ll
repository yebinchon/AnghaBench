; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_sf_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dss_sp.c_dss_sp_sf_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32, i32 }

@binary_decreasing_array = common dso_local global i32 0, align 4
@dss_sp_unc_decreasing_array = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32*, i32)* @dss_sp_sf_synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_sp_sf_synthesis(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [15 x i32], align 16
  %10 = alloca [72 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dss_sp_vector_sum(%struct.TYPE_4__* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 1048575
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1048575, i32* %13, align 4
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dss_sp_get_normalize_bits(i32* %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sub nsw i32 %37, 3
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dss_sp_scale_vector(i32* %36, i32 %38, i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @dss_sp_scale_vector(i32* %43, i32 %44, i32 15)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @dss_sp_scale_vector(i32* %48, i32 %49, i32 15)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %60 = load i32, i32* @binary_decreasing_array, align 4
  %61 = call i32 @dss_sp_vec_mult(i32 %58, i32* %59, i32 %60)
  %62 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dss_sp_shift_sq_add(i32* %62, i32* %65, i32* %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %74 = load i32, i32* @dss_sp_unc_decreasing_array, align 4
  %75 = call i32 @dss_sp_vec_mult(i32 %72, i32* %73, i32 %74)
  %76 = getelementptr inbounds [15 x i32], [15 x i32]* %9, i64 0, i64 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @dss_sp_shift_sq_sub(i32* %76, i32* %79, i32* %82)
  %84 = load i32, i32* %6, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %28
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %95

95:                                               ; preds = %125, %92
  %96 = load i32, i32* %16, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @DSS_SP_FORMULA(i32 %105, i32 %106, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i8* @av_clip_int16(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %118, i32* %124, align 4
  br label %125

125:                                              ; preds = %98
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %16, align 4
  br label %95

128:                                              ; preds = %95
  br label %129

129:                                              ; preds = %128, %89
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @DSS_SP_FORMULA(i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i8* @av_clip_int16(i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 0, %148
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @dss_sp_scale_vector(i32* %147, i32 %149, i32 %150)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 0, %155
  %157 = call i32 @dss_sp_scale_vector(i32* %154, i32 %156, i32 15)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sub nsw i32 0, %161
  %163 = call i32 @dss_sp_scale_vector(i32* %160, i32 %162, i32 15)
  %164 = load i32, i32* %8, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %129
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @dss_sp_vector_sum(%struct.TYPE_4__* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %166, %129
  %171 = load i32, i32* %12, align 4
  %172 = icmp sge i32 %171, 64
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = shl i32 %174, 11
  %176 = load i32, i32* %12, align 4
  %177 = sdiv i32 %175, %176
  store i32 %177, i32* %17, align 4
  br label %179

178:                                              ; preds = %170
  store i32 1, i32* %17, align 4
  br label %179

179:                                              ; preds = %178, %173
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 409, %180
  %182 = ashr i32 %181, 15
  %183 = shl i32 %182, 15
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 32358, %187
  %189 = add nsw i32 %184, %188
  %190 = ashr i32 %189, 15
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = call i8* @av_clip_int16(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = getelementptr inbounds [72 x i32], [72 x i32]* %10, i64 0, i64 0
  store i32 %193, i32* %194, align 16
  store i32 1, i32* %16, align 4
  br label %195

195:                                              ; preds = %215, %179
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %195
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %16, align 4
  %202 = sub nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [72 x i32], [72 x i32]* %10, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 32358, %205
  %207 = add nsw i32 %200, %206
  %208 = ashr i32 %207, 15
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = call i8* @av_clip_int16(i32 %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [72 x i32], [72 x i32]* %10, i64 0, i64 %213
  store i32 %211, i32* %214, align 4
  br label %215

215:                                              ; preds = %199
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %195

218:                                              ; preds = %195
  %219 = load i32, i32* %8, align 4
  %220 = sub nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [72 x i32], [72 x i32]* %10, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  store i32 0, i32* %16, align 4
  br label %226

226:                                              ; preds = %251, %218
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %254

230:                                              ; preds = %226
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [72 x i32], [72 x i32]* %10, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %237, %241
  %243 = ashr i32 %242, 11
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %17, align 4
  %245 = call i8* @av_clip_int16(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %16, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %246, i32* %250, align 4
  br label %251

251:                                              ; preds = %230
  %252 = load i32, i32* %16, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %16, align 4
  br label %226

254:                                              ; preds = %226
  ret void
}

declare dso_local i32 @dss_sp_vector_sum(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dss_sp_get_normalize_bits(i32*, i32) #1

declare dso_local i32 @dss_sp_scale_vector(i32*, i32, i32) #1

declare dso_local i32 @dss_sp_vec_mult(i32, i32*, i32) #1

declare dso_local i32 @dss_sp_shift_sq_add(i32*, i32*, i32*) #1

declare dso_local i32 @dss_sp_shift_sq_sub(i32*, i32*, i32*) #1

declare dso_local i32 @DSS_SP_FORMULA(i32, i32, i32) #1

declare dso_local i8* @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
