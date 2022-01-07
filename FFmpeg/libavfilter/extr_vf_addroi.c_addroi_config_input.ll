; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_addroi.c_addroi_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_addroi.c_addroi_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32* }

@NB_VARS = common dso_local global i32 0, align 4
@VAR_IW = common dso_local global i64 0, align 8
@VAR_IH = common dso_local global i64 0, align 8
@NB_PARAMS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Calculated value %g for %s is less than zero - using zero instead.\0A\00", align 1
@addroi_param_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [89 x i8] c"Calculated value %g for %s is greater than maximum allowed value %d - using %d instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @addroi_config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addroi_config_input(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @NB_VARS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca double, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load i64, i64* @VAR_IW, align 8
  %24 = getelementptr inbounds double, double* %19, i64 %23
  store double %22, double* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = load i64, i64* @VAR_IH, align 8
  %29 = getelementptr inbounds double, double* %19, i64 %28
  store double %27, double* %29, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %120, %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @NB_PARAMS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %123

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %70 [
    i32 129, label %36
    i32 128, label %41
    i32 130, label %46
    i32 131, label %58
  ]

36:                                               ; preds = %34
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %9, align 4
  br label %70

41:                                               ; preds = %34
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fptosi double %44 to i32
  store i32 %45, i32* %9, align 4
  br label %70

46:                                               ; preds = %34
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 129
  %54 = load i32, i32* %53, align 4
  %55 = sitofp i32 %54 to double
  %56 = fsub double %49, %55
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %9, align 4
  br label %70

58:                                               ; preds = %34
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 128
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to double
  %68 = fsub double %61, %67
  %69 = fptosi double %68 to i32
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %34, %58, %46, %41, %36
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call double @av_expr_eval(i32 %77, double* %19, i32* null)
  store double %78, double* %8, align 8
  %79 = load double, double* %8, align 8
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %81, label %91

81:                                               ; preds = %70
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = load i32, i32* @AV_LOG_WARNING, align 4
  %84 = load double, double* %8, align 8
  %85 = load i32*, i32** @addroi_param_names, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.TYPE_8__*, i32, i8*, double, i32, ...) @av_log(%struct.TYPE_8__* %82, i32 %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), double %84, i32 %89)
  store double 0.000000e+00, double* %8, align 8
  br label %111

91:                                               ; preds = %70
  %92 = load double, double* %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sitofp i32 %93 to double
  %95 = fcmp ogt double %92, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = load i32, i32* @AV_LOG_WARNING, align 4
  %99 = load double, double* %8, align 8
  %100 = load i32*, i32** @addroi_param_names, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (%struct.TYPE_8__*, i32, i8*, double, i32, ...) @av_log(%struct.TYPE_8__* %97, i32 %98, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), double %99, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = sitofp i32 %108 to double
  store double %109, double* %8, align 8
  br label %110

110:                                              ; preds = %96, %91
  br label %111

111:                                              ; preds = %110, %81
  %112 = load double, double* %8, align 8
  %113 = fptosi double %112 to i32
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %30

123:                                              ; preds = %30
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local double @av_expr_eval(i32, double*, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, double, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
