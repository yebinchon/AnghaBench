; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff.c_doubles2str.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff.c_doubles2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%.15g%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double*, i32, i8*)* @doubles2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @doubles2str(double* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = add i64 24, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %11, align 4
  %25 = sdiv i32 %23, %24
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %78

28:                                               ; preds = %16
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  %33 = call i8* @av_malloc(i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %78

37:                                               ; preds = %28
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %66, %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load double*, double** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @snprintf(i8* %46, i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), double %52, i8* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @av_free(i8* %59)
  store i8* null, i8** %4, align 8
  br label %78

61:                                               ; preds = %45
  %62 = load i32, i32* %12, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load i8*, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @strlen(i8* %71)
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = sub i64 %72, %74
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %10, align 8
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %69, %58, %36, %27
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double, i8*) #1

declare dso_local i32 @av_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
