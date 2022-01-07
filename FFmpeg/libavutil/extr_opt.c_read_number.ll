; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_read_number.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }
%struct.TYPE_6__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, double*, i32*, i32*)* @read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_number(%struct.TYPE_7__* %0, i8* %1, double* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store double* %2, double** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %68 [
    i32 135, label %15
    i32 131, label %20
    i32 129, label %25
    i32 140, label %30
    i32 133, label %30
    i32 139, label %35
    i32 136, label %35
    i32 132, label %35
    i32 128, label %35
    i32 134, label %40
    i32 137, label %46
    i32 130, label %51
    i32 138, label %62
  ]

15:                                               ; preds = %5
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %71

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %71

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %71

30:                                               ; preds = %5, %5
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %71

35:                                               ; preds = %5, %5, %5, %5
  %36 = load i8*, i8** %8, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %6, align 4
  br label %71

40:                                               ; preds = %5
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to float*
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = load double*, double** %9, align 8
  store double %44, double* %45, align 8
  store i32 0, i32* %6, align 4
  br label %71

46:                                               ; preds = %5
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to double*
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %9, align 8
  store double %49, double* %50, align 8
  store i32 0, i32* %6, align 4
  br label %71

51:                                               ; preds = %5
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %6, align 4
  br label %71

62:                                               ; preds = %5
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %9, align 8
  store double %66, double* %67, align 8
  store i32 0, i32* %6, align 4
  br label %71

68:                                               ; preds = %5
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %68, %62, %51, %46, %40, %35, %30, %25, %20, %15
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
