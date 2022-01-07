; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffprobe.c_writer_print_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_value = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double }

@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@PRINT_STRING_OPT = common dso_local global i32 0, align 4
@unit_second_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, double, i32*, i32)* @writer_print_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writer_print_time(i32* %0, i8* %1, double %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca double, align 8
  %13 = alloca %struct.unit_value, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store double %2, double* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load double, double* %8, align 8
  %18 = load double, double* @AV_NOPTS_VALUE, align 8
  %19 = fcmp oeq double %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load double, double* %8, align 8
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %23, %16
  %27 = load i32*, i32** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @PRINT_STRING_OPT, align 4
  %30 = call i32 @writer_print_string(i32* %27, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %53

31:                                               ; preds = %23, %20
  %32 = load double, double* %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call double @av_q2d(i32 %34)
  %36 = fmul double %32, %35
  store double %36, double* %12, align 8
  %37 = load double, double* %12, align 8
  %38 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %13, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store double %37, double* %39, align 8
  %40 = load i32, i32* @unit_second_str, align 4
  %41 = getelementptr inbounds %struct.unit_value, %struct.unit_value* %13, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %43 = bitcast %struct.unit_value* %13 to { i32, double }*
  %44 = getelementptr inbounds { i32, double }, { i32, double }* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds { i32, double }, { i32, double }* %43, i32 0, i32 1
  %47 = load double, double* %46, align 8
  %48 = call i32 @value_string(i8* %42, i32 128, i32 %45, double %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %52 = call i32 @writer_print_string(i32* %49, i8* %50, i8* %51, i32 0)
  br label %53

53:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @writer_print_string(i32*, i8*, i8*, i32) #1

declare dso_local double @av_q2d(i32) #1

declare dso_local i32 @value_string(i8*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
