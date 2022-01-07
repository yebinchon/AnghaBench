; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_do_single_write_read_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/test/extr_test_sd.c_do_single_write_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.timeval = type { float, float }

@.str = private unnamed_addr constant [35 x i8] c" %8d |  %3d  |   %d   |    %4.1f  \00", align 1
@MALLOC_CAP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c" |   %6.2f    |      %5.2f      |    %6.2f     |     %5.2f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64, i64)* @do_single_write_read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_single_write_read_test(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.timeval, align 4
  %15 = alloca %struct.timeval, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.timeval, align 4
  %18 = alloca %struct.timeval, align 4
  %19 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = mul i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %6, align 8
  %28 = uitofp i64 %27 to float
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = uitofp i64 %30 to float
  %32 = load i64, i64* %10, align 8
  %33 = uitofp i64 %32 to float
  %34 = fdiv float %33, 1.024000e+03
  %35 = fptoui float %34 to i64
  %36 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), float %28, i64 %29, float %31, i64 %35)
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 4
  %39 = load i32, i32* @MALLOC_CAP_DMA, align 4
  %40 = call i32* @heap_caps_malloc(i64 %38, i32 %39)
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* %8, align 8
  %42 = urem i64 %41, 4
  store i64 %42, i64* %12, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %13, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %10, align 8
  %49 = udiv i64 %48, 4
  %50 = call i32 @fill_buffer(i64 %46, i32* %47, i64 %49)
  %51 = call i32 @gettimeofday(%struct.timeval* %14, i32* null)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @sdmmc_write_sectors(%struct.TYPE_7__* %52, i32* %53, i64 %54, i64 %55)
  %57 = call i32 @TEST_ESP_OK(i32 %56)
  %58 = call i32 @gettimeofday(%struct.timeval* %15, i32* null)
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %60 = load float, float* %59, align 4
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %62 = load float, float* %61, align 4
  %63 = fsub float %60, %62
  %64 = fmul float 1.000000e+03, %63
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fsub float %66, %68
  %70 = fmul float 0x3F50624DE0000000, %69
  %71 = fadd float %64, %70
  store float %71, float* %16, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 4
  %75 = call i32 @memset(i32* %72, i32 187, i64 %74)
  %76 = call i32 @gettimeofday(%struct.timeval* %17, i32* null)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @sdmmc_read_sectors(%struct.TYPE_7__* %77, i32* %78, i64 %79, i64 %80)
  %82 = call i32 @TEST_ESP_OK(i32 %81)
  %83 = call i32 @gettimeofday(%struct.timeval* %18, i32* null)
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %85 = load float, float* %84, align 4
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %87 = load float, float* %86, align 4
  %88 = fsub float %85, %87
  %89 = fmul float 1.000000e+03, %88
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %91 = load float, float* %90, align 4
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = fsub float %91, %93
  %95 = fmul float 0x3F50624DE0000000, %94
  %96 = fadd float %89, %95
  store float %96, float* %19, align 4
  %97 = load float, float* %16, align 4
  %98 = load i64, i64* %10, align 8
  %99 = uitofp i64 %98 to float
  %100 = load float, float* %16, align 4
  %101 = fdiv float %100, 1.000000e+03
  %102 = fdiv float %99, %101
  %103 = fdiv float %102, 0x4130000000000000
  %104 = fptoui float %103 to i64
  %105 = load float, float* %19, align 4
  %106 = load i64, i64* %10, align 8
  %107 = uitofp i64 %106 to float
  %108 = load float, float* %19, align 4
  %109 = fdiv float %108, 1.000000e+03
  %110 = fdiv float %107, %109
  %111 = fdiv float %110, 0x4130000000000000
  %112 = fptoui float %111 to i64
  %113 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), float %97, i64 %104, float %105, i64 %112)
  %114 = load i64, i64* %6, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i64, i64* %10, align 8
  %117 = udiv i64 %116, 4
  %118 = call i32 @check_buffer(i64 %114, i32* %115, i64 %117)
  %119 = load i32*, i32** %11, align 8
  %120 = call i32 @free(i32* %119)
  ret void
}

declare dso_local i32 @printf(i8*, float, i64, float, i64) #1

declare dso_local i32* @heap_caps_malloc(i64, i32) #1

declare dso_local i32 @fill_buffer(i64, i32*, i64) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @sdmmc_write_sectors(%struct.TYPE_7__*, i32*, i64, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @sdmmc_read_sectors(%struct.TYPE_7__*, i32*, i64, i64) #1

declare dso_local i32 @check_buffer(i64, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
