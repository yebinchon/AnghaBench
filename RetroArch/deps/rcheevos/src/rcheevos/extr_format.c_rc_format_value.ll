; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_format.c_rc_format_value.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_format.c_rc_format_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"%02u:%02u.%02u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%02u:%02u\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%06u Points\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%01u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%06u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_format_value(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %78 [
    i32 132, label %14
    i32 129, label %36
    i32 133, label %48
    i32 130, label %67
    i32 128, label %72
    i32 131, label %77
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = mul i32 %15, 10
  %17 = udiv i32 %16, 6
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = udiv i32 %18, 100
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul i32 %20, 100
  %22 = load i32, i32* %9, align 4
  %23 = sub i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = udiv i32 %24, 60
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = mul i32 %26, 60
  %28 = load i32, i32* %10, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  br label %83

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = udiv i32 %37, 60
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul i32 %39, 60
  %41 = load i32, i32* %7, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %83

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = udiv i32 %49, 100
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = mul i32 %51, 100
  %53 = load i32, i32* %7, align 4
  %54 = sub i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = udiv i32 %55, 60
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul i32 %57, 60
  %59 = load i32, i32* %9, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  br label %83

67:                                               ; preds = %4
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %12, align 4
  br label %83

72:                                               ; preds = %4
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %73, i32 %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  store i32 %76, i32* %12, align 4
  br label %83

77:                                               ; preds = %4
  br label %78

78:                                               ; preds = %4, %77
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %78, %72, %67, %48, %36, %14
  %84 = load i32, i32* %12, align 4
  ret i32 %84
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
