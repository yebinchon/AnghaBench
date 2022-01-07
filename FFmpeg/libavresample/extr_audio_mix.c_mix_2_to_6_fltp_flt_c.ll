; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_6_fltp_flt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_6_fltp_flt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32)* @mix_2_to_6_fltp_flt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_2_to_6_fltp_flt_c(float** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca float**, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  store float** %0, float*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load float**, float*** %6, align 8
  %22 = getelementptr inbounds float*, float** %21, i64 0
  %23 = load float*, float** %22, align 8
  store float* %23, float** %13, align 8
  %24 = load float**, float*** %6, align 8
  %25 = getelementptr inbounds float*, float** %24, i64 1
  %26 = load float*, float** %25, align 8
  store float* %26, float** %14, align 8
  %27 = load float**, float*** %6, align 8
  %28 = getelementptr inbounds float*, float** %27, i64 2
  %29 = load float*, float** %28, align 8
  store float* %29, float** %15, align 8
  %30 = load float**, float*** %6, align 8
  %31 = getelementptr inbounds float*, float** %30, i64 3
  %32 = load float*, float** %31, align 8
  store float* %32, float** %16, align 8
  %33 = load float**, float*** %6, align 8
  %34 = getelementptr inbounds float*, float** %33, i64 4
  %35 = load float*, float** %34, align 8
  store float* %35, float** %17, align 8
  %36 = load float**, float*** %6, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 5
  %38 = load float*, float** %37, align 8
  store float* %38, float** %18, align 8
  %39 = load float*, float** %13, align 8
  store float* %39, float** %19, align 8
  %40 = load float*, float** %14, align 8
  store float* %40, float** %20, align 8
  br label %41

41:                                               ; preds = %44, %5
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %155

44:                                               ; preds = %41
  %45 = load float*, float** %19, align 8
  %46 = getelementptr inbounds float, float* %45, i32 1
  store float* %46, float** %19, align 8
  %47 = load float, float* %45, align 4
  store float %47, float* %11, align 4
  %48 = load float*, float** %20, align 8
  %49 = getelementptr inbounds float, float* %48, i32 1
  store float* %49, float** %20, align 8
  %50 = load float, float* %48, align 4
  store float %50, float* %12, align 4
  %51 = load float, float* %11, align 4
  %52 = load float**, float*** %7, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 0
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 0
  %56 = load float, float* %55, align 4
  %57 = fmul float %51, %56
  %58 = load float, float* %12, align 4
  %59 = load float**, float*** %7, align 8
  %60 = getelementptr inbounds float*, float** %59, i64 0
  %61 = load float*, float** %60, align 8
  %62 = getelementptr inbounds float, float* %61, i64 1
  %63 = load float, float* %62, align 4
  %64 = fmul float %58, %63
  %65 = fadd float %57, %64
  %66 = load float*, float** %13, align 8
  %67 = getelementptr inbounds float, float* %66, i32 1
  store float* %67, float** %13, align 8
  store float %65, float* %66, align 4
  %68 = load float, float* %11, align 4
  %69 = load float**, float*** %7, align 8
  %70 = getelementptr inbounds float*, float** %69, i64 1
  %71 = load float*, float** %70, align 8
  %72 = getelementptr inbounds float, float* %71, i64 0
  %73 = load float, float* %72, align 4
  %74 = fmul float %68, %73
  %75 = load float, float* %12, align 4
  %76 = load float**, float*** %7, align 8
  %77 = getelementptr inbounds float*, float** %76, i64 1
  %78 = load float*, float** %77, align 8
  %79 = getelementptr inbounds float, float* %78, i64 1
  %80 = load float, float* %79, align 4
  %81 = fmul float %75, %80
  %82 = fadd float %74, %81
  %83 = load float*, float** %14, align 8
  %84 = getelementptr inbounds float, float* %83, i32 1
  store float* %84, float** %14, align 8
  store float %82, float* %83, align 4
  %85 = load float, float* %11, align 4
  %86 = load float**, float*** %7, align 8
  %87 = getelementptr inbounds float*, float** %86, i64 2
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 0
  %90 = load float, float* %89, align 4
  %91 = fmul float %85, %90
  %92 = load float, float* %12, align 4
  %93 = load float**, float*** %7, align 8
  %94 = getelementptr inbounds float*, float** %93, i64 2
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = load float, float* %96, align 4
  %98 = fmul float %92, %97
  %99 = fadd float %91, %98
  %100 = load float*, float** %15, align 8
  %101 = getelementptr inbounds float, float* %100, i32 1
  store float* %101, float** %15, align 8
  store float %99, float* %100, align 4
  %102 = load float, float* %11, align 4
  %103 = load float**, float*** %7, align 8
  %104 = getelementptr inbounds float*, float** %103, i64 3
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds float, float* %105, i64 0
  %107 = load float, float* %106, align 4
  %108 = fmul float %102, %107
  %109 = load float, float* %12, align 4
  %110 = load float**, float*** %7, align 8
  %111 = getelementptr inbounds float*, float** %110, i64 3
  %112 = load float*, float** %111, align 8
  %113 = getelementptr inbounds float, float* %112, i64 1
  %114 = load float, float* %113, align 4
  %115 = fmul float %109, %114
  %116 = fadd float %108, %115
  %117 = load float*, float** %16, align 8
  %118 = getelementptr inbounds float, float* %117, i32 1
  store float* %118, float** %16, align 8
  store float %116, float* %117, align 4
  %119 = load float, float* %11, align 4
  %120 = load float**, float*** %7, align 8
  %121 = getelementptr inbounds float*, float** %120, i64 4
  %122 = load float*, float** %121, align 8
  %123 = getelementptr inbounds float, float* %122, i64 0
  %124 = load float, float* %123, align 4
  %125 = fmul float %119, %124
  %126 = load float, float* %12, align 4
  %127 = load float**, float*** %7, align 8
  %128 = getelementptr inbounds float*, float** %127, i64 4
  %129 = load float*, float** %128, align 8
  %130 = getelementptr inbounds float, float* %129, i64 1
  %131 = load float, float* %130, align 4
  %132 = fmul float %126, %131
  %133 = fadd float %125, %132
  %134 = load float*, float** %17, align 8
  %135 = getelementptr inbounds float, float* %134, i32 1
  store float* %135, float** %17, align 8
  store float %133, float* %134, align 4
  %136 = load float, float* %11, align 4
  %137 = load float**, float*** %7, align 8
  %138 = getelementptr inbounds float*, float** %137, i64 5
  %139 = load float*, float** %138, align 8
  %140 = getelementptr inbounds float, float* %139, i64 0
  %141 = load float, float* %140, align 4
  %142 = fmul float %136, %141
  %143 = load float, float* %12, align 4
  %144 = load float**, float*** %7, align 8
  %145 = getelementptr inbounds float*, float** %144, i64 5
  %146 = load float*, float** %145, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  %148 = load float, float* %147, align 4
  %149 = fmul float %143, %148
  %150 = fadd float %142, %149
  %151 = load float*, float** %18, align 8
  %152 = getelementptr inbounds float, float* %151, i32 1
  store float* %152, float** %18, align 8
  store float %150, float* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %8, align 4
  br label %41

155:                                              ; preds = %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
