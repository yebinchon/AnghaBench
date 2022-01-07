; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_decode_ppc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_metasound.c_decode_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { float, i32, float, i32 }

@TWINVQ_PGAIN_MU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, float*, float*)* @decode_ppc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_ppc(%struct.TYPE_7__* %0, i32 %1, i32 %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 1000, %42
  %44 = sdiv i32 %37, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sitofp i32 %48 to float
  %50 = fdiv float %47, %49
  store float %50, float* %15, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %5
  %58 = load float, float* %15, align 4
  %59 = fpext float %58 to double
  %60 = fmul double %59, 2.000000e-01
  %61 = fptosi double %60 to i32
  %62 = call float @log2(i32 %61)
  store float %62, float* %16, align 4
  %63 = load float, float* %16, align 4
  %64 = call float @log2(i32 6)
  %65 = fadd float %63, %64
  store float %65, float* %17, align 4
  br label %86

66:                                               ; preds = %5
  %67 = load float, float* %15, align 4
  %68 = fpext float %67 to double
  %69 = fmul double %68, 2.000000e-01
  %70 = fmul double %69, 4.000000e+02
  %71 = fadd double %70, 5.000000e-01
  %72 = fptosi double %71 to i32
  %73 = sitofp i32 %72 to double
  %74 = fdiv double %73, 4.000000e+02
  %75 = fptrunc double %74 to float
  store float %75, float* %16, align 4
  %76 = load float, float* %15, align 4
  %77 = fpext float %76 to double
  %78 = fmul double %77, 2.000000e-01
  %79 = fmul double %78, 4.000000e+02
  %80 = fmul double %79, 6.000000e+00
  %81 = fadd double %80, 5.000000e-01
  %82 = fptosi double %81 to i32
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 4.000000e+02
  %85 = fptrunc double %84 to float
  store float %85, float* %17, align 4
  br label %86

86:                                               ; preds = %66, %57
  %87 = load float, float* %17, align 4
  %88 = load float, float* %16, align 4
  %89 = fsub float %87, %88
  store float %89, float* %18, align 4
  %90 = load float, float* %16, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sitofp i32 %91 to float
  %93 = load float, float* %18, align 4
  %94 = fmul float %92, %93
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 1, %97
  %99 = sub nsw i32 %98, 1
  %100 = sitofp i32 %99 to float
  %101 = fdiv float %94, %100
  %102 = fadd float %90, %101
  store float %102, float* %19, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %112

109:                                              ; preds = %86
  %110 = load float, float* %19, align 4
  %111 = call float @powf(double 2.000000e+00, float %110)
  store float %111, float* %19, align 4
  br label %121

112:                                              ; preds = %86
  %113 = load float, float* %19, align 4
  %114 = fmul float %113, 4.000000e+02
  %115 = fpext float %114 to double
  %116 = fadd double %115, 5.000000e-01
  %117 = fptosi double %116 to i32
  %118 = sitofp i32 %117 to double
  %119 = fdiv double %118, 4.000000e+02
  %120 = fptrunc double %119 to float
  store float %120, float* %19, align 4
  br label %121

121:                                              ; preds = %112, %109
  %122 = load i32, i32* %12, align 4
  switch i32 %122, label %133 [
    i32 8, label %123
    i32 11, label %124
    i32 16, label %125
    i32 22, label %126
    i32 44, label %132
  ]

123:                                              ; preds = %121
  store float 2.000000e+00, float* %20, align 4
  br label %134

124:                                              ; preds = %121
  store float 3.000000e+00, float* %20, align 4
  br label %134

125:                                              ; preds = %121
  store float 3.000000e+00, float* %20, align 4
  br label %134

126:                                              ; preds = %121
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 32
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, double 2.000000e+00, double 4.000000e+00
  %131 = fptrunc double %130 to float
  store float %131, float* %20, align 4
  br label %134

132:                                              ; preds = %121
  store float 8.000000e+00, float* %20, align 4
  br label %134

133:                                              ; preds = %121
  store float 4.000000e+00, float* %20, align 4
  br label %134

134:                                              ; preds = %133, %132, %126, %125, %124, %123
  %135 = load float, float* %20, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load float, float* %137, align 4
  %139 = load float, float* %19, align 4
  %140 = fdiv float %138, %139
  %141 = fdiv float %135, %140
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load float, float* %143, align 4
  %145 = fmul float %141, %144
  %146 = fptosi float %145 to i32
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp eq i32 %147, 22
  br i1 %148, label %149, label %162

149:                                              ; preds = %134
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load float, float* %19, align 4
  %154 = fpext float %153 to double
  %155 = fdiv double 2.000000e+00, %154
  %156 = fadd double %155, 1.000000e+00
  %157 = load i32, i32* %14, align 4
  %158 = sitofp i32 %157 to double
  %159 = fmul double %156, %158
  %160 = fadd double %159, 5.000000e-01
  %161 = fptosi double %160 to i32
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %152, %149, %134
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, double 2.500000e+04, double 2.000000e+04
  %171 = fptrunc double %170 to float
  store float %171, float* %21, align 4
  %172 = load float, float* %21, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 1, %175
  %177 = sub nsw i32 %176, 1
  %178 = sitofp i32 %177 to float
  %179 = fdiv float %172, %178
  store float %179, float* %22, align 4
  %180 = load float, float* %22, align 4
  %181 = load i32, i32* %8, align 4
  %182 = sitofp i32 %181 to float
  %183 = fmul float %180, %182
  %184 = load float, float* %22, align 4
  %185 = fdiv float %184, 2.000000e+00
  %186 = fadd float %183, %185
  %187 = load float, float* %21, align 4
  %188 = load i32, i32* @TWINVQ_PGAIN_MU, align 4
  %189 = call double @twinvq_mulawinv(float %186, float %187, i32 %188)
  %190 = fmul double 0x3F20000000000000, %189
  %191 = fptrunc double %190 to float
  store float %191, float* %23, align 4
  %192 = load float, float* %19, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load float*, float** %9, align 8
  %195 = load float, float* %23, align 4
  %196 = load float*, float** %10, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 2
  %199 = load float, float* %198, align 4
  %200 = call i32 @add_peak(float %192, i32 %193, float* %194, float %195, float* %196, float %199)
  ret void
}

declare dso_local float @log2(i32) #1

declare dso_local float @powf(double, float) #1

declare dso_local double @twinvq_mulawinv(float, float, i32) #1

declare dso_local i32 @add_peak(float, i32, float*, float, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
