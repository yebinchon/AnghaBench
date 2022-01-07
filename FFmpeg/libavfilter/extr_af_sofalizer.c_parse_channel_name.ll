; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_parse_channel_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_sofalizer.c_parse_channel_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%7[A-Z]%n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i8*)* @parse_channel_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_channel_name(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @av_sscanf(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %15, i32* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @av_get_channel_layout(i8* %19)
  store i64 %20, i64* %11, align 8
  store i64 %20, i64* %12, align 8
  store i32 32, i32* %9, align 4
  br label %21

21:                                               ; preds = %39, %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i64, i64* %11, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = shl i64 1, %27
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %11, align 8
  %36 = zext i32 %34 to i64
  %37 = ashr i64 %35, %36
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %30, %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 64
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %42
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %65

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = sext i32 %57 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %58, align 8
  store i32 0, i32* %4, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %54, %51
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @av_sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @av_get_channel_layout(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
