; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_swt_break_words.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_swt.c__ccv_swt_break_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { double }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }

@CCV_32S = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_18__*, double)* @_ccv_swt_break_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @_ccv_swt_break_words(%struct.TYPE_18__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  store double %1, double* %18, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %42, %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @ccv_array_get(%struct.TYPE_18__* %26, i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %29, %struct.TYPE_16__** %8, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %25
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i64 @alloca(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %9, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_18__* @ccv_array_new(i32 4, i32 %58, i32 0)
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %244, %45
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %247

66:                                               ; preds = %60
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @ccv_array_get(%struct.TYPE_18__* %67, i32 %68)
  %70 = inttoptr i64 %69 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %11, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @_ccv_sort_letters(%struct.TYPE_19__** %73, i32 %76, i32 0)
  store i32 0, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %147, %66
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %150

85:                                               ; preds = %78
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %88, i64 %91
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %99, i64 %101
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %109, i64 %111
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %106, %116
  %118 = sub nsw i64 %96, %117
  %119 = call i32 @ccv_max(i32 0, i64 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %85
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %131, %85
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sitofp i32 %143 to double
  %145 = load double, double* %13, align 8
  %146 = fadd double %145, %144
  store double %146, double* %13, align 8
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %78

150:                                              ; preds = %78
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* @CCV_32S, align 4
  %156 = load i32, i32* @CCV_C1, align 4
  %157 = or i32 %155, %156
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @ccv_dense_matrix(i32 1, i32 %154, i32 %157, i32* %158, i32 0)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @ccv_otsu(i32* %14, double* %15, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load double, double* %13, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %165, 1
  %167 = sitofp i32 %166 to double
  %168 = fdiv double %162, %167
  store double %168, double* %13, align 8
  %169 = load double, double* %15, align 8
  %170 = call double @sqrt(double %169) #4
  %171 = load double, double* %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %3, i32 0, i32 0
  %173 = load double, double* %172, align 8
  %174 = fmul double %171, %173
  %175 = fcmp ogt double %170, %174
  br i1 %175, label %176, label %238

176:                                              ; preds = %150
  %177 = bitcast %struct.TYPE_16__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %177, i8 0, i64 16, i1 false)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %180, i64 0
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = call i32 @_ccv_swt_add_letter(%struct.TYPE_16__* %17, %struct.TYPE_19__* %182)
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %223, %176
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = icmp slt i32 %185, %189
  br i1 %190, label %191, label %226

191:                                              ; preds = %184
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp sgt i32 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %191
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %202 = call i32 @ccv_array_push(%struct.TYPE_18__* %200, i32* %201)
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %204 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %203, align 8
  %205 = icmp ne %struct.TYPE_19__** %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %208 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %207, align 8
  %209 = call i32 @ccfree(%struct.TYPE_19__** %208)
  br label %210

210:                                              ; preds = %206, %199
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i32 0, i32* %212, align 8
  br label %213

213:                                              ; preds = %210, %191
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %216, i64 %219
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %220, align 8
  %222 = call i32 @_ccv_swt_add_letter(%struct.TYPE_16__* %17, %struct.TYPE_19__* %221)
  br label %223

223:                                              ; preds = %213
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %184

226:                                              ; preds = %184
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %229 = call i32 @ccv_array_push(%struct.TYPE_18__* %227, i32* %228)
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %231 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %230, align 8
  %232 = icmp ne %struct.TYPE_19__** %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %235 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %234, align 8
  %236 = call i32 @ccfree(%struct.TYPE_19__** %235)
  br label %237

237:                                              ; preds = %233, %226
  br label %243

238:                                              ; preds = %150
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = call i32 @ccv_array_push(%struct.TYPE_18__* %239, i32* %241)
  br label %243

243:                                              ; preds = %238, %237
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %5, align 4
  br label %60

247:                                              ; preds = %60
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  ret %struct.TYPE_18__* %248
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local %struct.TYPE_18__* @ccv_array_new(i32, i32, i32) #1

declare dso_local i32 @_ccv_sort_letters(%struct.TYPE_19__**, i32, i32) #1

declare dso_local i32 @ccv_max(i32, i64) #1

declare dso_local i32 @ccv_dense_matrix(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ccv_otsu(i32*, double*, i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @_ccv_swt_add_letter(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ccv_array_push(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ccfree(%struct.TYPE_19__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
