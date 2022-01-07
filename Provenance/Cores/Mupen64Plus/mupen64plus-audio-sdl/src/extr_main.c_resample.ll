; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_resample.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_resample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, float, i8*, i32, i32, i64 }

@RESAMPLER_SPEEX = common dso_local global i64 0, align 8
@RESAMPLER_SRC = common dso_local global i64 0, align 8
@Resample = common dso_local global i64 0, align 8
@ResampleQuality = common dso_local global i32 0, align 4
@_dest = common dso_local global i8* null, align 8
@_dest_len = common dso_local global i32 0, align 4
@_src = common dso_local global i8* null, align 8
@_src_len = common dso_local global i32 0, align 4
@error = common dso_local global i32 0, align 4
@spx_state = common dso_local global i32* null, align 8
@src_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@src_state = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i8*, i32, i32)* @resample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %14, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = mul nsw i32 2, %32
  store i32 %33, i32* %19, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %20, align 4
  %37 = mul nsw i32 2, %36
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %70, %30
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sdiv i32 %44, 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %22, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %22, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %22, align 4
  br label %69

65:                                               ; preds = %47
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %22, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %42

73:                                               ; preds = %42
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 %74, 4
  store i32 %75, i32* %7, align 4
  br label %103

76:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %97, %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sdiv i32 %79, 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = sdiv i32 %85, %86
  store i32 %87, i32* %17, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %77

100:                                              ; preds = %77
  %101 = load i32, i32* %17, align 4
  %102 = mul nsw i32 %101, 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %73
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
