; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriversnearest_resampler.c_resampler_nearest_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonaudioresamplerdriversnearest_resampler.c_resampler_nearest_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resampler_data = type { i32, double, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.resampler_data*)* @resampler_nearest_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resampler_nearest_process(i8* %0, %struct.resampler_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.resampler_data*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store %struct.resampler_data* %1, %struct.resampler_data** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %5, align 8
  %12 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %13 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %18 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  store i32* %21, i32** %7, align 8
  %22 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %23 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %8, align 8
  %26 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %27 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = fdiv double 1.000000e+00, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %9, align 4
  br label %31

31:                                               ; preds = %53, %2
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %46 = load float, float* %9, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sitofp i32 %49 to float
  %51 = fsub float %50, %46
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %48, align 4
  br label %36

53:                                               ; preds = %36
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  br label %31

60:                                               ; preds = %31
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %63 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = ptrtoint i32* %61 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = load %struct.resampler_data*, %struct.resampler_data** %4, align 8
  %72 = getelementptr inbounds %struct.resampler_data, %struct.resampler_data* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
