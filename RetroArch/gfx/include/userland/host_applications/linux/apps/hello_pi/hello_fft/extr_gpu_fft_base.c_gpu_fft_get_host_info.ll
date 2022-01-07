; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_get_host_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_gpu_fft_base.c_gpu_fft_get_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_HOST = type { i32, i32, i32, i32 }

@GPU_FFT_USE_VC4_L2_CACHE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"libbcm_host.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bcm_host_get_sdram_address\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bcm_host_get_peripheral_address\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"bcm_host_get_peripheral_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpu_fft_get_host_info(%struct.GPU_FFT_HOST* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.GPU_FFT_HOST*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32 ()*, align 8
  %6 = alloca i32 ()*, align 8
  %7 = alloca i32 ()*, align 8
  store %struct.GPU_FFT_HOST* %0, %struct.GPU_FFT_HOST** %3, align 8
  %8 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %9 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %8, i32 0, i32 0
  store i32 536870912, i32* %9, align 4
  %10 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %11 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %10, i32 0, i32 1
  store i32 16777216, i32* %11, align 4
  %12 = load i64, i64* @GPU_FFT_USE_VC4_L2_CACHE, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 12, i32 4
  %16 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %17 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* @GPU_FFT_USE_VC4_L2_CACHE, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 536870912
  %22 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %23 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @RTLD_LAZY, align 4
  %25 = call i8* @dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %69

29:                                               ; preds = %1
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @dlsym(i8* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = bitcast i32 ()** %5 to i8**
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @dlsym(i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %35 = bitcast i32 ()** %6 to i8**
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @dlsym(i8* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %38 = bitcast i32 ()** %7 to i8**
  store i8* %37, i8** %38, align 8
  %39 = load i32 ()*, i32 ()** %5, align 8
  %40 = icmp ne i32 ()* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load i32 ()*, i32 ()** %5, align 8
  %43 = call i32 %42()
  %44 = icmp ne i32 %43, 1073741824
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %47 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %46, i32 0, i32 2
  store i32 4, i32* %47, align 4
  %48 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %49 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %48, i32 0, i32 3
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %41, %29
  %51 = load i32 ()*, i32 ()** %6, align 8
  %52 = icmp ne i32 ()* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32 ()*, i32 ()** %6, align 8
  %55 = call i32 %54()
  %56 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %57 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32 ()*, i32 ()** %7, align 8
  %60 = icmp ne i32 ()* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32 ()*, i32 ()** %7, align 8
  %63 = call i32 %62()
  %64 = load %struct.GPU_FFT_HOST*, %struct.GPU_FFT_HOST** %3, align 8
  %65 = getelementptr inbounds %struct.GPU_FFT_HOST, %struct.GPU_FFT_HOST* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @dlclose(i8* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %28
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i8* @dlsym(i8*, i8*) #1

declare dso_local i32 @dlclose(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
