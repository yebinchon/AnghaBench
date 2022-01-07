; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_params_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_get_params_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i64, i32**, i64*, i64*, i32*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error getting parameter set sizes: %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64*)* @get_params_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_params_size(%struct.TYPE_6__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32 (i32, i64, i32**, i64*, i64*, i32*)*, i32 (i32, i64, i32**, i64*, i64*, i32*)** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 %21(i32 %22, i64 0, i32** null, i64* null, i64* %10, i32* null)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %26, %3
  store i64 0, i64* %12, align 8
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ true, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %62

37:                                               ; preds = %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (i32, i64, i32**, i64*, i64*, i32*)*, i32 (i32, i64, i32**, i64*, i64*, i32*)** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 %40(i32 %41, i64 %42, i32** %14, i64* %15, i64* null, i32* null)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %49, %46
  br label %62

54:                                               ; preds = %37
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %55, 4
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %9, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %12, align 8
  br label %28

62:                                               ; preds = %53, %35
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i32, i32* @AV_LOG_ERROR, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @av_log(%struct.TYPE_6__* %66, i32 %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
