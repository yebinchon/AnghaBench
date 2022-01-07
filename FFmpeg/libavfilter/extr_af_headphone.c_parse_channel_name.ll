; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_parse_channel_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_headphone.c_parse_channel_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%7[A-Z]%n\00", align 1
@AV_CH_LOW_FREQUENCY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8**, i32*, i8*)* @parse_channel_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_channel_name(%struct.TYPE_3__* %0, i32 %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @sscanf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19, i32* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %5
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @av_get_channel_layout(i8* %23)
  store i64 %24, i64* %15, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @AV_CH_LOW_FREQUENCY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %22
  store i32 32, i32* %13, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i64, i64* %15, align 8
  %48 = zext i32 %46 to i64
  %49 = ashr i64 %47, %48
  store i64 %49, i64* %15, align 8
  br label %50

50:                                               ; preds = %42, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load i32, i32* %14, align 4
  %56 = icmp sge i32 %55, 64
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %54
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %6, align 4
  br label %77

66:                                               ; preds = %57
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i8**, i8*** %9, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %70, align 8
  store i32 0, i32* %6, align 4
  br label %77

74:                                               ; preds = %5
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %66, %63
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @sscanf(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @av_get_channel_layout(i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
