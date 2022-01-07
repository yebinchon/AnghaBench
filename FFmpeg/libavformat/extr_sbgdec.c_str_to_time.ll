; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_str_to_time.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_str_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_TIME_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @str_to_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_time(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  store double 0.000000e+00, double* %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp slt i32 %14, 48
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp sgt i32 %19, 57
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %94

22:                                               ; preds = %16
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strtol(i8* %23, i8** %7, i32 10)
  store i32 %24, i32* %8, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %45, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 58
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 48
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sgt i32 %43, 57
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %33, %28, %22
  store i32 0, i32* %3, align 4
  br label %94

46:                                               ; preds = %39
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strtol(i8* %49, i8** %7, i32 10)
  store i32 %50, i32* %9, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %94

55:                                               ; preds = %46
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = call double @strtod(i8* %63, i8** %7)
  store double %64, double* %10, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = icmp ugt i8* %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i8*, i8** %7, align 8
  store i8* %70, i8** %6, align 8
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %55
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 3600
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 60
  %79 = add nsw i64 %75, %78
  %80 = sitofp i64 %79 to double
  %81 = load double, double* %10, align 8
  %82 = fadd double %80, %81
  %83 = load i32, i32* @AV_TIME_BASE, align 4
  %84 = sitofp i32 %83 to double
  %85 = fmul double %82, %84
  %86 = fptosi double %85 to i32
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %72, %54, %45, %21
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local double @strtod(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
