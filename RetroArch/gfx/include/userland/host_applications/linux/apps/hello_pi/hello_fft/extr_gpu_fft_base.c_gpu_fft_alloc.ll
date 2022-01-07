; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_PTR = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.GPU_FFT_HOST = type { i32, i64, i32, i32 }
%struct.GPU_FFT_BASE = type { i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_alloc(i32 %0, i32 %1, %struct.GPU_FFT_PTR* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.GPU_FFT_PTR*, align 8
  %8 = alloca %struct.GPU_FFT_HOST, align 8
  %9 = alloca %struct.GPU_FFT_BASE*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.GPU_FFT_PTR* %2, %struct.GPU_FFT_PTR** %7, align 8
  %12 = call i64 @gpu_fft_get_host_info(%struct.GPU_FFT_HOST* %8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -5, i32* %4, align 4
  br label %85

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @qpu_enable(i32 %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %85

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mem_alloc(i32 %21, i32 %22, i32 4096, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @qpu_enable(i32 %29, i32 0)
  store i32 -3, i32* %4, align 4
  br label %85

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @mapmem(i32 %33, i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @mem_free(i32 %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @qpu_enable(i32 %44, i32 0)
  store i32 -4, i32* %4, align 4
  br label %85

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @mem_lock(i32 %47, i32 %48)
  %50 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %7, align 8
  %51 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %7, align 8
  %53 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %54, %56
  %58 = call i32 @BUS_TO_PHYS(i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @mapmem(i32 %58, i32 %59)
  %61 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %7, align 8
  %62 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.GPU_FFT_PTR*, %struct.GPU_FFT_PTR** %7, align 8
  %65 = getelementptr inbounds %struct.GPU_FFT_PTR, %struct.GPU_FFT_PTR* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.GPU_FFT_BASE*
  store %struct.GPU_FFT_BASE* %68, %struct.GPU_FFT_BASE** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %9, align 8
  %71 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %9, align 8
  %75 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %9, align 8
  %78 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %9, align 8
  %81 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %9, align 8
  %84 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %46, %40, %28, %19, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i64 @gpu_fft_get_host_info(%struct.GPU_FFT_HOST*) #1

declare dso_local i64 @qpu_enable(i32, i32) #1

declare dso_local i32 @mem_alloc(i32, i32, i32, i32) #1

declare dso_local i64 @mapmem(i32, i32) #1

declare dso_local i32 @mem_free(i32, i32) #1

declare dso_local i64 @mem_lock(i32, i32) #1

declare dso_local i32 @BUS_TO_PHYS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
