; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_ebml_read_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@NEEDS_CHECKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, double*)* @ebml_read_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebml_read_float(i32* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %11, align 8
  br label %32

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @avio_rb32(i32* %16)
  %18 = call double @av_int2float(i32 %17)
  %19 = load double*, double** %7, align 8
  store double %18, double* %19, align 8
  br label %31

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @avio_rb64(i32* %24)
  %26 = call double @av_int2double(i32 %25)
  %27 = load double*, double** %7, align 8
  store double %26, double* %27, align 8
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %15
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* @NEEDS_CHECKING, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local double @av_int2float(i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local double @av_int2double(i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
