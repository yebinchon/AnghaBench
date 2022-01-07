; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_initialize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"gamma_r\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"gamma_g\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"gamma_b\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"gamma_weight\00", align 1
@EVAL_MODE_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = call i32 @ff_eq_init(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 16
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = call i32 @set_expr(i32* %12, i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %82, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 14
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @set_expr(i32* %21, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_11__* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %82, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 12
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = call i32 @set_expr(i32* %30, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_11__* %34)
  store i32 %35, i32* %5, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 10
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = call i32 @set_expr(i32* %39, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_11__* %43)
  store i32 %44, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %82, label %46

46:                                               ; preds = %37
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @set_expr(i32* %48, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_11__* %52)
  store i32 %53, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = call i32 @set_expr(i32* %57, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_11__* %61)
  store i32 %62, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = call i32 @set_expr(i32* %66, i32 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_11__* %70)
  store i32 %71, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %80 = call i32 @set_expr(i32* %75, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_11__* %79)
  store i32 %80, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73, %64, %55, %46, %37, %28, %19, %1
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %100

84:                                               ; preds = %73
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @EVAL_MODE_INIT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = call i32 @set_gamma(%struct.TYPE_10__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i32 @set_contrast(%struct.TYPE_10__* %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = call i32 @set_brightness(%struct.TYPE_10__* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = call i32 @set_saturation(%struct.TYPE_10__* %97)
  br label %99

99:                                               ; preds = %90, %84
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ff_eq_init(%struct.TYPE_10__*) #1

declare dso_local i32 @set_expr(i32*, i32, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @set_gamma(%struct.TYPE_10__*) #1

declare dso_local i32 @set_contrast(%struct.TYPE_10__*) #1

declare dso_local i32 @set_brightness(%struct.TYPE_10__*) #1

declare dso_local i32 @set_saturation(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
