; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_DCT.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__jpg_DCT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, float*, float*, float*, float*)* @stbiw__jpg_DCT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__jpg_DCT(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %44 = load float*, float** %9, align 8
  %45 = load float, float* %44, align 4
  store float %45, float* %17, align 4
  %46 = load float*, float** %10, align 8
  %47 = load float, float* %46, align 4
  store float %47, float* %18, align 4
  %48 = load float*, float** %11, align 8
  %49 = load float, float* %48, align 4
  store float %49, float* %19, align 4
  %50 = load float*, float** %12, align 8
  %51 = load float, float* %50, align 4
  store float %51, float* %20, align 4
  %52 = load float*, float** %13, align 8
  %53 = load float, float* %52, align 4
  store float %53, float* %21, align 4
  %54 = load float*, float** %14, align 8
  %55 = load float, float* %54, align 4
  store float %55, float* %22, align 4
  %56 = load float*, float** %15, align 8
  %57 = load float, float* %56, align 4
  store float %57, float* %23, align 4
  %58 = load float*, float** %16, align 8
  %59 = load float, float* %58, align 4
  store float %59, float* %24, align 4
  %60 = load float, float* %17, align 4
  %61 = load float, float* %24, align 4
  %62 = fadd float %60, %61
  store float %62, float* %32, align 4
  %63 = load float, float* %17, align 4
  %64 = load float, float* %24, align 4
  %65 = fsub float %63, %64
  store float %65, float* %33, align 4
  %66 = load float, float* %18, align 4
  %67 = load float, float* %23, align 4
  %68 = fadd float %66, %67
  store float %68, float* %34, align 4
  %69 = load float, float* %18, align 4
  %70 = load float, float* %23, align 4
  %71 = fsub float %69, %70
  store float %71, float* %35, align 4
  %72 = load float, float* %19, align 4
  %73 = load float, float* %22, align 4
  %74 = fadd float %72, %73
  store float %74, float* %36, align 4
  %75 = load float, float* %19, align 4
  %76 = load float, float* %22, align 4
  %77 = fsub float %75, %76
  store float %77, float* %37, align 4
  %78 = load float, float* %20, align 4
  %79 = load float, float* %21, align 4
  %80 = fadd float %78, %79
  store float %80, float* %38, align 4
  %81 = load float, float* %20, align 4
  %82 = load float, float* %21, align 4
  %83 = fsub float %81, %82
  store float %83, float* %39, align 4
  %84 = load float, float* %32, align 4
  %85 = load float, float* %38, align 4
  %86 = fadd float %84, %85
  store float %86, float* %40, align 4
  %87 = load float, float* %32, align 4
  %88 = load float, float* %38, align 4
  %89 = fsub float %87, %88
  store float %89, float* %41, align 4
  %90 = load float, float* %34, align 4
  %91 = load float, float* %36, align 4
  %92 = fadd float %90, %91
  store float %92, float* %42, align 4
  %93 = load float, float* %34, align 4
  %94 = load float, float* %36, align 4
  %95 = fsub float %93, %94
  store float %95, float* %43, align 4
  %96 = load float, float* %40, align 4
  %97 = load float, float* %42, align 4
  %98 = fadd float %96, %97
  store float %98, float* %17, align 4
  %99 = load float, float* %40, align 4
  %100 = load float, float* %42, align 4
  %101 = fsub float %99, %100
  store float %101, float* %21, align 4
  %102 = load float, float* %43, align 4
  %103 = load float, float* %41, align 4
  %104 = fadd float %102, %103
  %105 = fmul float %104, 0x3FE6A09E60000000
  store float %105, float* %25, align 4
  %106 = load float, float* %41, align 4
  %107 = load float, float* %25, align 4
  %108 = fadd float %106, %107
  store float %108, float* %19, align 4
  %109 = load float, float* %41, align 4
  %110 = load float, float* %25, align 4
  %111 = fsub float %109, %110
  store float %111, float* %23, align 4
  %112 = load float, float* %39, align 4
  %113 = load float, float* %37, align 4
  %114 = fadd float %112, %113
  store float %114, float* %40, align 4
  %115 = load float, float* %37, align 4
  %116 = load float, float* %35, align 4
  %117 = fadd float %115, %116
  store float %117, float* %42, align 4
  %118 = load float, float* %35, align 4
  %119 = load float, float* %33, align 4
  %120 = fadd float %118, %119
  store float %120, float* %43, align 4
  %121 = load float, float* %40, align 4
  %122 = load float, float* %43, align 4
  %123 = fsub float %121, %122
  %124 = fmul float %123, 0x3FD87DE2A0000000
  store float %124, float* %29, align 4
  %125 = load float, float* %40, align 4
  %126 = fmul float %125, 0x3FE1517A80000000
  %127 = load float, float* %29, align 4
  %128 = fadd float %126, %127
  store float %128, float* %26, align 4
  %129 = load float, float* %43, align 4
  %130 = fmul float %129, 0x3FF4E7AEA0000000
  %131 = load float, float* %29, align 4
  %132 = fadd float %130, %131
  store float %132, float* %28, align 4
  %133 = load float, float* %42, align 4
  %134 = fmul float %133, 0x3FE6A09E60000000
  store float %134, float* %27, align 4
  %135 = load float, float* %33, align 4
  %136 = load float, float* %27, align 4
  %137 = fadd float %135, %136
  store float %137, float* %30, align 4
  %138 = load float, float* %33, align 4
  %139 = load float, float* %27, align 4
  %140 = fsub float %138, %139
  store float %140, float* %31, align 4
  %141 = load float, float* %31, align 4
  %142 = load float, float* %26, align 4
  %143 = fadd float %141, %142
  %144 = load float*, float** %14, align 8
  store float %143, float* %144, align 4
  %145 = load float, float* %31, align 4
  %146 = load float, float* %26, align 4
  %147 = fsub float %145, %146
  %148 = load float*, float** %12, align 8
  store float %147, float* %148, align 4
  %149 = load float, float* %30, align 4
  %150 = load float, float* %28, align 4
  %151 = fadd float %149, %150
  %152 = load float*, float** %10, align 8
  store float %151, float* %152, align 4
  %153 = load float, float* %30, align 4
  %154 = load float, float* %28, align 4
  %155 = fsub float %153, %154
  %156 = load float*, float** %16, align 8
  store float %155, float* %156, align 4
  %157 = load float, float* %17, align 4
  %158 = load float*, float** %9, align 8
  store float %157, float* %158, align 4
  %159 = load float, float* %19, align 4
  %160 = load float*, float** %11, align 8
  store float %159, float* %160, align 4
  %161 = load float, float* %21, align 4
  %162 = load float*, float** %13, align 8
  store float %161, float* %162, align 4
  %163 = load float, float* %23, align 4
  %164 = load float*, float** %15, align 8
  store float %163, float* %164, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
