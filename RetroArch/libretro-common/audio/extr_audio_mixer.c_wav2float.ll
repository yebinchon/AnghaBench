; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_wav2float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/extr_audio_mixer.c_wav2float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, float**, i64)* @wav2float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wav2float(%struct.TYPE_3__* %0, float** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float** %1, float*** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 15
  %16 = and i64 %15, -16
  %17 = mul i64 %16, 4
  %18 = call i64 @memalign_alloc(i32 16, i64 %17)
  %19 = inttoptr i64 %18 to float*
  store float* %19, float** %9, align 8
  %20 = load float*, float** %9, align 8
  %21 = icmp ne float* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %186

23:                                               ; preds = %3
  %24 = load float*, float** %9, align 8
  %25 = load float**, float*** %6, align 8
  store float* %24, float** %25, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %106

30:                                               ; preds = %23
  store float 0.000000e+00, float* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %11, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %65

39:                                               ; preds = %30
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %61, %39
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %11, align 8
  %49 = load i32, i32* %47, align 4
  %50 = sitofp i32 %49 to float
  %51 = fdiv float %50, 2.550000e+02
  store float %51, float* %10, align 4
  %52 = load float, float* %10, align 4
  %53 = fmul float %52, 2.000000e+00
  %54 = fsub float %53, 1.000000e+00
  store float %54, float* %10, align 4
  %55 = load float, float* %10, align 4
  %56 = load float*, float** %9, align 8
  %57 = getelementptr inbounds float, float* %56, i32 1
  store float* %57, float** %9, align 8
  store float %55, float* %56, align 4
  %58 = load float, float* %10, align 4
  %59 = load float*, float** %9, align 8
  %60 = getelementptr inbounds float, float* %59, i32 1
  store float* %60, float** %9, align 8
  store float %58, float* %59, align 4
  br label %61

61:                                               ; preds = %46
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %8, align 8
  br label %43

64:                                               ; preds = %43
  br label %105

65:                                               ; preds = %30
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %104

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %100, %70
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %103

77:                                               ; preds = %74
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %78, align 4
  %81 = sitofp i32 %80 to float
  %82 = fdiv float %81, 2.550000e+02
  store float %82, float* %10, align 4
  %83 = load float, float* %10, align 4
  %84 = fmul float %83, 2.000000e+00
  %85 = fsub float %84, 1.000000e+00
  store float %85, float* %10, align 4
  %86 = load float, float* %10, align 4
  %87 = load float*, float** %9, align 8
  %88 = getelementptr inbounds float, float* %87, i32 1
  store float* %88, float** %9, align 8
  store float %86, float* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %11, align 8
  %91 = load i32, i32* %89, align 4
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %92, 2.550000e+02
  store float %93, float* %10, align 4
  %94 = load float, float* %10, align 4
  %95 = fmul float %94, 2.000000e+00
  %96 = fsub float %95, 1.000000e+00
  store float %96, float* %10, align 4
  %97 = load float, float* %10, align 4
  %98 = load float*, float** %9, align 8
  %99 = getelementptr inbounds float, float* %98, i32 1
  store float* %99, float** %9, align 8
  store float %97, float* %98, align 4
  br label %100

100:                                              ; preds = %77
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* %8, align 8
  br label %74

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103, %65
  br label %105

105:                                              ; preds = %104, %64
  br label %185

106:                                              ; preds = %23
  store float 0.000000e+00, float* %12, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %13, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %142

115:                                              ; preds = %106
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %8, align 8
  br label %119

119:                                              ; preds = %138, %115
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  %123 = load i32*, i32** %13, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %13, align 8
  %125 = load i32, i32* %123, align 4
  %126 = add nsw i32 %125, 32768
  %127 = sitofp i32 %126 to float
  %128 = fdiv float %127, 6.553500e+04
  store float %128, float* %12, align 4
  %129 = load float, float* %12, align 4
  %130 = fmul float %129, 2.000000e+00
  %131 = fsub float %130, 1.000000e+00
  store float %131, float* %12, align 4
  %132 = load float, float* %12, align 4
  %133 = load float*, float** %9, align 8
  %134 = getelementptr inbounds float, float* %133, i32 1
  store float* %134, float** %9, align 8
  store float %132, float* %133, align 4
  %135 = load float, float* %12, align 4
  %136 = load float*, float** %9, align 8
  %137 = getelementptr inbounds float, float* %136, i32 1
  store float* %137, float** %9, align 8
  store float %135, float* %136, align 4
  br label %138

138:                                              ; preds = %122
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %8, align 8
  br label %119

141:                                              ; preds = %119
  br label %184

142:                                              ; preds = %106
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %183

147:                                              ; preds = %142
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %8, align 8
  br label %151

151:                                              ; preds = %179, %147
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %182

154:                                              ; preds = %151
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %13, align 8
  %157 = load i32, i32* %155, align 4
  %158 = add nsw i32 %157, 32768
  %159 = sitofp i32 %158 to float
  %160 = fdiv float %159, 6.553500e+04
  store float %160, float* %12, align 4
  %161 = load float, float* %12, align 4
  %162 = fmul float %161, 2.000000e+00
  %163 = fsub float %162, 1.000000e+00
  store float %163, float* %12, align 4
  %164 = load float, float* %12, align 4
  %165 = load float*, float** %9, align 8
  %166 = getelementptr inbounds float, float* %165, i32 1
  store float* %166, float** %9, align 8
  store float %164, float* %165, align 4
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %13, align 8
  %169 = load i32, i32* %167, align 4
  %170 = add nsw i32 %169, 32768
  %171 = sitofp i32 %170 to float
  %172 = fdiv float %171, 6.553500e+04
  store float %172, float* %12, align 4
  %173 = load float, float* %12, align 4
  %174 = fmul float %173, 2.000000e+00
  %175 = fsub float %174, 1.000000e+00
  store float %175, float* %12, align 4
  %176 = load float, float* %12, align 4
  %177 = load float*, float** %9, align 8
  %178 = getelementptr inbounds float, float* %177, i32 1
  store float* %178, float** %9, align 8
  store float %176, float* %177, align 4
  br label %179

179:                                              ; preds = %154
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %180, -1
  store i64 %181, i64* %8, align 8
  br label %151

182:                                              ; preds = %151
  br label %183

183:                                              ; preds = %182, %142
  br label %184

184:                                              ; preds = %183, %141
  br label %185

185:                                              ; preds = %184, %105
  store i32 1, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %22
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @memalign_alloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
