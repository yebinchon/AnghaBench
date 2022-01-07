; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_release.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_BASE = type { i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gpu_fft_base_release(%struct.GPU_FFT_BASE* %0) #0 {
  %2 = alloca %struct.GPU_FFT_BASE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.GPU_FFT_BASE* %0, %struct.GPU_FFT_BASE** %2, align 8
  %6 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %7 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %10 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %13 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %16 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %20 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unmapmem(i8* %18, i32 %21)
  %23 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %2, align 8
  %24 = bitcast %struct.GPU_FFT_BASE* %23 to i8*
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @unmapmem(i8* %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mem_unlock(i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @mem_free(i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @qpu_enable(i32 %33, i32 0)
  ret void
}

declare dso_local i32 @unmapmem(i8*, i32) #1

declare dso_local i32 @mem_unlock(i32, i32) #1

declare dso_local i32 @mem_free(i32, i32) #1

declare dso_local i32 @qpu_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
