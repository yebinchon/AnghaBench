; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_6_to_2_fltp_flt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_6_to_2_fltp_flt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float**, float**, i32, i32, i32)* @mix_6_to_2_fltp_flt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_6_to_2_fltp_flt_c(float** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  store float** %0, float*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load float**, float*** %6, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %13, align 8
  %26 = load float**, float*** %6, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 1
  %28 = load float*, float** %27, align 8
  store float* %28, float** %14, align 8
  %29 = load float**, float*** %6, align 8
  %30 = getelementptr inbounds float*, float** %29, i64 2
  %31 = load float*, float** %30, align 8
  store float* %31, float** %15, align 8
  %32 = load float**, float*** %6, align 8
  %33 = getelementptr inbounds float*, float** %32, i64 3
  %34 = load float*, float** %33, align 8
  store float* %34, float** %16, align 8
  %35 = load float**, float*** %6, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 4
  %37 = load float*, float** %36, align 8
  store float* %37, float** %17, align 8
  %38 = load float**, float*** %6, align 8
  %39 = getelementptr inbounds float*, float** %38, i64 5
  %40 = load float*, float** %39, align 8
  store float* %40, float** %18, align 8
  %41 = load float*, float** %13, align 8
  store float* %41, float** %19, align 8
  %42 = load float*, float** %14, align 8
  store float* %42, float** %20, align 8
  %43 = load float**, float*** %7, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 0
  %45 = load float*, float** %44, align 8
  store float* %45, float** %21, align 8
  %46 = load float**, float*** %7, align 8
  %47 = getelementptr inbounds float*, float** %46, i64 1
  %48 = load float*, float** %47, align 8
  store float* %48, float** %22, align 8
  br label %49

49:                                               ; preds = %52, %5
  %50 = load i32, i32* %8, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %147

52:                                               ; preds = %49
  %53 = load float*, float** %13, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %13, align 8
  %55 = load float, float* %53, align 4
  store float %55, float* %11, align 4
  %56 = load float*, float** %14, align 8
  %57 = getelementptr inbounds float, float* %56, i32 1
  store float* %57, float** %14, align 8
  %58 = load float, float* %56, align 4
  store float %58, float* %12, align 4
  %59 = load float, float* %11, align 4
  %60 = load float*, float** %21, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %59, %62
  %64 = load float, float* %12, align 4
  %65 = load float*, float** %21, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  %67 = load float, float* %66, align 4
  %68 = fmul float %64, %67
  %69 = fadd float %63, %68
  %70 = load float*, float** %15, align 8
  %71 = load float, float* %70, align 4
  %72 = load float*, float** %21, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  %74 = load float, float* %73, align 4
  %75 = fmul float %71, %74
  %76 = fadd float %69, %75
  %77 = load float*, float** %16, align 8
  %78 = load float, float* %77, align 4
  %79 = load float*, float** %21, align 8
  %80 = getelementptr inbounds float, float* %79, i64 3
  %81 = load float, float* %80, align 4
  %82 = fmul float %78, %81
  %83 = fadd float %76, %82
  %84 = load float*, float** %17, align 8
  %85 = load float, float* %84, align 4
  %86 = load float*, float** %21, align 8
  %87 = getelementptr inbounds float, float* %86, i64 4
  %88 = load float, float* %87, align 4
  %89 = fmul float %85, %88
  %90 = fadd float %83, %89
  %91 = load float*, float** %18, align 8
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %21, align 8
  %94 = getelementptr inbounds float, float* %93, i64 5
  %95 = load float, float* %94, align 4
  %96 = fmul float %92, %95
  %97 = fadd float %90, %96
  %98 = load float*, float** %19, align 8
  %99 = getelementptr inbounds float, float* %98, i32 1
  store float* %99, float** %19, align 8
  store float %97, float* %98, align 4
  %100 = load float, float* %11, align 4
  %101 = load float*, float** %22, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  %104 = fmul float %100, %103
  %105 = load float, float* %12, align 4
  %106 = load float*, float** %22, align 8
  %107 = getelementptr inbounds float, float* %106, i64 1
  %108 = load float, float* %107, align 4
  %109 = fmul float %105, %108
  %110 = fadd float %104, %109
  %111 = load float*, float** %15, align 8
  %112 = getelementptr inbounds float, float* %111, i32 1
  store float* %112, float** %15, align 8
  %113 = load float, float* %111, align 4
  %114 = load float*, float** %22, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  %116 = load float, float* %115, align 4
  %117 = fmul float %113, %116
  %118 = fadd float %110, %117
  %119 = load float*, float** %16, align 8
  %120 = getelementptr inbounds float, float* %119, i32 1
  store float* %120, float** %16, align 8
  %121 = load float, float* %119, align 4
  %122 = load float*, float** %22, align 8
  %123 = getelementptr inbounds float, float* %122, i64 3
  %124 = load float, float* %123, align 4
  %125 = fmul float %121, %124
  %126 = fadd float %118, %125
  %127 = load float*, float** %17, align 8
  %128 = getelementptr inbounds float, float* %127, i32 1
  store float* %128, float** %17, align 8
  %129 = load float, float* %127, align 4
  %130 = load float*, float** %22, align 8
  %131 = getelementptr inbounds float, float* %130, i64 4
  %132 = load float, float* %131, align 4
  %133 = fmul float %129, %132
  %134 = fadd float %126, %133
  %135 = load float*, float** %18, align 8
  %136 = getelementptr inbounds float, float* %135, i32 1
  store float* %136, float** %18, align 8
  %137 = load float, float* %135, align 4
  %138 = load float*, float** %22, align 8
  %139 = getelementptr inbounds float, float* %138, i64 5
  %140 = load float, float* %139, align 4
  %141 = fmul float %137, %140
  %142 = fadd float %134, %141
  %143 = load float*, float** %20, align 8
  %144 = getelementptr inbounds float, float* %143, i32 1
  store float* %144, float** %20, align 8
  store float %142, float* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %8, align 4
  br label %49

147:                                              ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
