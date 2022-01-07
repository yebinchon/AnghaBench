; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_rotation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [176 x i8] c"Odd rotation angle.\0AIf you want to help, upload a sample of this file to ftp://upload.ffmpeg.org/incoming/ and contact the ffmpeg-devel mailing list. (ffmpeg-devel@ffmpeg.org)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @get_rotation(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @AV_PKT_DATA_DISPLAYMATRIX, align 4
  %7 = call i32* @av_stream_get_side_data(i32* %5, i32 %6, i32* null)
  store i32* %7, i32** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call double @av_display_rotation_get(i32* %11)
  %13 = fneg double %12
  store double %13, double* %4, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load double, double* %4, align 8
  %16 = fdiv double %15, 3.600000e+02
  %17 = fadd double %16, 2.500000e-03
  %18 = call i32 @floor(double %17)
  %19 = mul nsw i32 360, %18
  %20 = sitofp i32 %19 to double
  %21 = load double, double* %4, align 8
  %22 = fsub double %21, %20
  store double %22, double* %4, align 8
  %23 = load double, double* %4, align 8
  %24 = load double, double* %4, align 8
  %25 = fdiv double %24, 9.000000e+01
  %26 = call i32 @round(double %25)
  %27 = mul nsw i32 90, %26
  %28 = sitofp i32 %27 to double
  %29 = fsub double %23, %28
  %30 = call i32 @fabs(double %29)
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %14
  %33 = load i32, i32* @AV_LOG_WARNING, align 4
  %34 = call i32 @av_log(i32* null, i32 %33, i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %14
  %36 = load double, double* %4, align 8
  ret double %36
}

declare dso_local i32* @av_stream_get_side_data(i32*, i32, i32*) #1

declare dso_local double @av_display_rotation_get(i32*) #1

declare dso_local i32 @floor(double) #1

declare dso_local i32 @fabs(double) #1

declare dso_local i32 @round(double) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
