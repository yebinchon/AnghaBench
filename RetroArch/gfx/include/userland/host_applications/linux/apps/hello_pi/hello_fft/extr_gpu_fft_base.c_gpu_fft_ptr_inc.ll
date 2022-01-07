; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_ptr_inc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_ptr_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_PTR = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_ptr_inc(%struct.GPU_FFT_PTR* %0, i32 %1) #0 {
  %3 = alloca %struct.GPU_FFT_PTR*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.GPU_FFT_PTR* %0, %struct.GPU_FFT_PTR** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %3, align 8
  %7 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %3, align 8
  %11 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %3, align 8
  %16 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
