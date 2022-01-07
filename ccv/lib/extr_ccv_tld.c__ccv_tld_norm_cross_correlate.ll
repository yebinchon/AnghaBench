; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_norm_cross_correlate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_norm_cross_correlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i8* }

@CCV_C1 = common dso_local global i64 0, align 8
@CCV_8U = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_6__*, %struct.TYPE_6__*)* @_ccv_tld_norm_cross_correlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @_ccv_tld_norm_cross_correlate(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @CCV_GET_CHANNEL(i32 %21)
  %23 = load i64, i64* @CCV_C1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @CCV_GET_DATA_TYPE(i32 %28)
  %30 = load i64, i64* @CCV_8U, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %25, %2
  %33 = phi i1 [ false, %2 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @CCV_GET_CHANNEL(i32 %38)
  %40 = load i64, i64* @CCV_C1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @CCV_GET_DATA_TYPE(i32 %45)
  %47 = load i64, i64* @CCV_8U, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %42, %32
  %50 = phi i1 [ false, %32 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br label %68

68:                                               ; preds = %60, %49
  %69 = phi i1 [ false, %49 ], [ %67, %60 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %10, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %11, align 8
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %126, %68
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %93
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %87

113:                                              ; preds = %87
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %11, align 8
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %80

129:                                              ; preds = %80
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %10, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  store i8* %137, i8** %11, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sitofp i32 %138 to float
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %142, %145
  %147 = sitofp i32 %146 to float
  %148 = fdiv float %139, %147
  store float %148, float* %12, align 4
  %149 = load i32, i32* %9, align 4
  %150 = sitofp i32 %149 to float
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %153, %156
  %158 = sitofp i32 %157 to float
  %159 = fdiv float %150, %158
  store float %159, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %7, align 4
  br label %160

160:                                              ; preds = %223, %129
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %226

166:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %207, %166
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %167
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = sitofp i32 %179 to float
  %181 = load float, float* %12, align 4
  %182 = fsub float %180, %181
  store float %182, float* %17, align 4
  %183 = load i8*, i8** %11, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = sitofp i32 %188 to float
  %190 = load float, float* %13, align 4
  %191 = fsub float %189, %190
  store float %191, float* %18, align 4
  %192 = load float, float* %17, align 4
  %193 = load float, float* %18, align 4
  %194 = fmul float %192, %193
  %195 = load float, float* %14, align 4
  %196 = fadd float %195, %194
  store float %196, float* %14, align 4
  %197 = load float, float* %17, align 4
  %198 = load float, float* %17, align 4
  %199 = fmul float %197, %198
  %200 = load float, float* %15, align 4
  %201 = fadd float %200, %199
  store float %201, float* %15, align 4
  %202 = load float, float* %18, align 4
  %203 = load float, float* %18, align 4
  %204 = fmul float %202, %203
  %205 = load float, float* %16, align 4
  %206 = fadd float %205, %204
  store float %206, float* %16, align 4
  br label %207

207:                                              ; preds = %173
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %167

210:                                              ; preds = %167
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %10, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i8*, i8** %11, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %11, align 8
  br label %223

223:                                              ; preds = %210
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  br label %160

226:                                              ; preds = %160
  %227 = load float, float* %15, align 4
  %228 = load float, float* %16, align 4
  %229 = fmul float %227, %228
  %230 = fpext float %229 to double
  %231 = fcmp olt double %230, 0x3EB0C6F7A0B5ED8D
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store float 0.000000e+00, float* %3, align 4
  br label %240

233:                                              ; preds = %226
  %234 = load float, float* %14, align 4
  %235 = load float, float* %15, align 4
  %236 = load float, float* %16, align 4
  %237 = fmul float %235, %236
  %238 = call float @sqrtf(float %237) #3
  %239 = fdiv float %234, %238
  store float %239, float* %3, align 4
  br label %240

240:                                              ; preds = %233, %232
  %241 = load float, float* %3, align 4
  ret float %241
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_CHANNEL(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
