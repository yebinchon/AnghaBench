; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_put_subframe_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_put_subframe_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32**, i64***, i32 }

@DCA_CODE_BOOKS = common dso_local global i32 0, align 4
@ff_dca_quant_index_group_size = common dso_local global i32* null, align 8
@ff_dca_quant_levels = common dso_local global i32* null, align 8
@bit_consumption = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @put_subframe_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_subframe_samples(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %225

27:                                               ; preds = %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @av_assert0(i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %48, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** @ff_dca_quant_index_group_size, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %65, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %64, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %27
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64***, i64**** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64**, i64*** %87, i64 %89
  %91 = load i64**, i64*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64*, i64** %91, i64 %93
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 %96, 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @ff_dca_vlc_enc_quant(i32* %84, i64* %99, i32 8, i32 %100, i32 %112)
  br label %271

114:                                              ; preds = %27
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sle i32 %125, 7
  br i1 %126, label %127, label %224

127:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %220, %127
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 8
  br i1 %130, label %131, label %223

131:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  store i32 3, i32* %10, align 4
  br label %132

132:                                              ; preds = %196, %131
  %133 = load i32, i32* %10, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %199

135:                                              ; preds = %132
  %136 = load i32*, i32** @ff_dca_quant_levels, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %136, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = mul nsw i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i64***, i64**** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64**, i64*** %155, i64 %157
  %159 = load i64**, i64*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = mul nsw i32 %164, 8
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %163, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %11, align 4
  %177 = load i32*, i32** @ff_dca_quant_levels, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32**, i32*** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32*, i32** %180, i64 %182
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %177, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sdiv i32 %192, 2
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %135
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %10, align 4
  br label %132

199:                                              ; preds = %132
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 3
  %202 = load i32*, i32** @bit_consumption, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %202, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sdiv i32 %216, 4
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @put_bits(i32* %201, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %199
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 4
  store i32 %222, i32* %9, align 4
  br label %128

223:                                              ; preds = %128
  br label %271

224:                                              ; preds = %114
  br label %225

225:                                              ; preds = %224, %4
  store i32 0, i32* %9, align 4
  br label %226

226:                                              ; preds = %268, %225
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %227, 8
  br i1 %228, label %229, label %271

229:                                              ; preds = %226
  %230 = load i32*, i32** @bit_consumption, align 8
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %230, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sdiv i32 %244, 16
  store i32 %245, i32* %12, align 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 3
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 2
  %251 = load i64***, i64**** %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64**, i64*** %251, i64 %253
  %255 = load i64**, i64*** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64*, i64** %255, i64 %257
  %259 = load i64*, i64** %258, align 8
  %260 = load i32, i32* %6, align 4
  %261 = mul nsw i32 %260, 8
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %259, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @put_sbits(i32* %247, i32 %248, i64 %266)
  br label %268

268:                                              ; preds = %229
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %226

271:                                              ; preds = %82, %223, %226
  ret void
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_dca_vlc_enc_quant(i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
