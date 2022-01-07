; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_BASE = type { i64, i32 }

@GPU_FFT_NO_FLUSH = common dso_local global i32 0, align 4
@GPU_FFT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_base_exec(%struct.GPU_FFT_BASE* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GPU_FFT_BASE*, align 8
  %5 = alloca i32, align 4
  store %struct.GPU_FFT_BASE* %0, %struct.GPU_FFT_BASE** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %4, align 8
  %7 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %4, align 8
  %12 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %4, align 8
  %16 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @GPU_FFT_NO_FLUSH, align 4
  %19 = load i32, i32* @GPU_FFT_TIMEOUT, align 4
  %20 = call i32 @execute_qpu(i32 %13, i32 %14, i64 %17, i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @gpu_fft_base_exec_direct(%struct.GPU_FFT_BASE* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @execute_qpu(i32, i32, i64, i32, i32) #1

declare dso_local i32 @gpu_fft_base_exec_direct(%struct.GPU_FFT_BASE*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
