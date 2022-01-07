; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_read_zp_coefficients.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_read_zp_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid coefficients supplied: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, double*, i8*)* @read_zp_coefficients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_zp_coefficients(i32* %0, i8* %1, i32 %2, double* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store double* %3, double** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %15, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @av_strdup(i8* %17)
  store i8* %18, i8** %14, align 8
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %64

24:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load i8*, i8** %12, align 8
  %31 = call i8* @av_strtok(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %15)
  store i8* %31, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %62

34:                                               ; preds = %29
  store i8* null, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load double*, double** %10, align 8
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %37, i64 %40
  %42 = load double*, double** %10, align 8
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 %43, 2
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %42, i64 %46
  %48 = call i32 @sscanf(i8* %35, i8* %36, double* %41, double* %47)
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %58

50:                                               ; preds = %34
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @av_log(i32* %51, i32 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = call i32 @av_freep(i8** %14)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %64

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %16, align 4
  br label %25

62:                                               ; preds = %33, %25
  %63 = call i32 @av_freep(i8** %14)
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %50, %21
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, double*, double*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
