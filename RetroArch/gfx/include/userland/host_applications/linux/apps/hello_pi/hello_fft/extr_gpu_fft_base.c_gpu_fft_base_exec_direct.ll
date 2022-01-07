; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_exec_direct.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_base_exec_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_BASE = type { i32*, i32*, i32 }

@V3D_DBCFG = common dso_local global i64 0, align 8
@V3D_DBQITE = common dso_local global i64 0, align 8
@V3D_DBQITC = common dso_local global i64 0, align 8
@V3D_L2CACTL = common dso_local global i64 0, align 8
@V3D_SLCACTL = common dso_local global i64 0, align 8
@V3D_SRQCS = common dso_local global i64 0, align 8
@V3D_SRQUA = common dso_local global i64 0, align 8
@V3D_SRQPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_base_exec_direct(%struct.GPU_FFT_BASE* %0, i32 %1) #0 {
  %3 = alloca %struct.GPU_FFT_BASE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.GPU_FFT_BASE* %0, %struct.GPU_FFT_BASE** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %8 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @V3D_DBCFG, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  store i32 0, i32* %11, align 4
  %12 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %13 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @V3D_DBQITE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 0, i32* %16, align 4
  %17 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %18 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @V3D_DBQITC, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 -1, i32* %21, align 4
  %22 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %23 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @V3D_L2CACTL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 4, i32* %26, align 4
  %27 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %28 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @V3D_SLCACTL, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 -1, i32* %31, align 4
  %32 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %33 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @V3D_SRQCS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 65920, i32* %36, align 4
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %62, %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  %42 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %43 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %50 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @V3D_SRQUA, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %55 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %58 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @V3D_SRQPC, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %41
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %37

65:                                               ; preds = %37
  br label %66

66:                                               ; preds = %78, %65
  %67 = load %struct.GPU_FFT_BASE*, %struct.GPU_FFT_BASE** %3, align 8
  %68 = getelementptr inbounds %struct.GPU_FFT_BASE, %struct.GPU_FFT_BASE* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @V3D_SRQCS, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %79

78:                                               ; preds = %66
  br label %66

79:                                               ; preds = %77
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
