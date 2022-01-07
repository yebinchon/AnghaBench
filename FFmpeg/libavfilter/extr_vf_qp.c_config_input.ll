; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_qp.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_qp.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, i32 }

@config_input.var_names = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [6 x i8] c"known\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@NAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [7 x double], align 16
  %10 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %5, align 8
  store i32* null, i32** %8, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %119

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = call i32 @av_expr_parse(i32** %8, i32 %25, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @config_input.var_names, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null, i32 0, %struct.TYPE_8__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %119

32:                                               ; preds = %22
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 15
  %37 = ashr i32 %36, 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 15
  %44 = ashr i32 %43, 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 -129, i32* %6, align 4
  br label %47

47:                                               ; preds = %113, %32
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %116

50:                                               ; preds = %47
  %51 = getelementptr inbounds [7 x double], [7 x double]* %9, i64 0, i64 0
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, -129
  %54 = zext i1 %53 to i32
  %55 = sitofp i32 %54 to double
  store double %55, double* %51, align 8
  %56 = getelementptr inbounds double, double* %51, i64 1
  %57 = load i32, i32* %6, align 4
  %58 = sitofp i32 %57 to double
  store double %58, double* %56, align 8
  %59 = getelementptr inbounds double, double* %56, i64 1
  %60 = load i32, i32* @NAN, align 4
  %61 = sitofp i32 %60 to double
  store double %61, double* %59, align 8
  %62 = getelementptr inbounds double, double* %59, i64 1
  %63 = load i32, i32* @NAN, align 4
  %64 = sitofp i32 %63 to double
  store double %64, double* %62, align 8
  %65 = getelementptr inbounds double, double* %62, i64 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to double
  store double %69, double* %65, align 8
  %70 = getelementptr inbounds double, double* %65, i64 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sitofp i32 %73 to double
  store double %74, double* %70, align 8
  %75 = getelementptr inbounds double, double* %70, i64 1
  store double 0.000000e+00, double* %75, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds [7 x double], [7 x double]* %9, i64 0, i64 0
  %78 = call double @av_expr_eval(i32* %76, double* %77, i32* null)
  store double %78, double* %10, align 8
  %79 = load double, double* %10, align 8
  %80 = call i64 @isnan(double %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %50
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @strchr(i32 %85, i8 signext 120)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strchr(i32 %91, i8 signext 121)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  br label %102

97:                                               ; preds = %88
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @av_expr_free(i32* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %2, align 4
  br label %119

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %50
  %104 = load double, double* %10, align 8
  %105 = call i32 @lrintf(double %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 129
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %47

116:                                              ; preds = %47
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @av_expr_free(i32* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %116, %97, %30, %21
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @av_expr_parse(i32**, i32, i8**, i32*, i32*, i32*, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local double @av_expr_eval(i32*, double*, i32*) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @av_expr_free(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @lrintf(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
