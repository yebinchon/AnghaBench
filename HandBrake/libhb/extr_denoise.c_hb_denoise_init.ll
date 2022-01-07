; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_denoise.c_hb_denoise_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"y-spatial\00", align 1
@HQDN3D_SPATIAL_LUMA_DEFAULT = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cb-spatial\00", align 1
@HQDN3D_SPATIAL_CHROMA_DEFAULT = common dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"cr-spatial\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"y-temporal\00", align 1
@HQDN3D_TEMPORAL_LUMA_DEFAULT = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"cb-temporal\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cr-temporal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8**)* @hb_denoise_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hb_denoise_init(%struct.TYPE_6__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %12 = call %struct.TYPE_5__* @calloc(i32 4, i32 1)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %5, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @hb_dict_extract_double(double* %6, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load double, double* @HQDN3D_SPATIAL_LUMA_DEFAULT, align 8
  store double %28, double* %6, align 8
  br label %29

29:                                               ; preds = %27, %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @hb_dict_extract_double(double* %7, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load double, double* @HQDN3D_SPATIAL_CHROMA_DEFAULT, align 8
  %37 = load double, double* %6, align 8
  %38 = fmul double %36, %37
  %39 = load double, double* @HQDN3D_SPATIAL_LUMA_DEFAULT, align 8
  %40 = fdiv double %38, %39
  store double %40, double* %7, align 8
  br label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @hb_dict_extract_double(double* %8, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load double, double* %7, align 8
  store double %48, double* %8, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @hb_dict_extract_double(double* %9, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load double, double* @HQDN3D_TEMPORAL_LUMA_DEFAULT, align 8
  %57 = load double, double* %6, align 8
  %58 = fmul double %56, %57
  %59 = load double, double* @HQDN3D_SPATIAL_LUMA_DEFAULT, align 8
  %60 = fdiv double %58, %59
  store double %60, double* %9, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @hb_dict_extract_double(double* %10, i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load double, double* %9, align 8
  %69 = load double, double* %7, align 8
  %70 = fmul double %68, %69
  %71 = load double, double* %6, align 8
  %72 = fdiv double %70, %71
  store double %72, double* %10, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @hb_dict_extract_double(double* %11, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load double, double* %10, align 8
  store double %80, double* %11, align 8
  br label %81

81:                                               ; preds = %79, %73
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load double, double* %6, align 8
  %88 = call i32 @hqdn3d_precalc_coef(i32 %86, double %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load double, double* %9, align 8
  %95 = call i32 @hqdn3d_precalc_coef(i32 %93, double %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = load double, double* %7, align 8
  %102 = call i32 @hqdn3d_precalc_coef(i32 %100, double %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = load double, double* %10, align 8
  %109 = call i32 @hqdn3d_precalc_coef(i32 %107, double %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load i32, i32* %113, align 4
  %115 = load double, double* %8, align 8
  %116 = call i32 @hqdn3d_precalc_coef(i32 %114, double %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 5
  %121 = load i32, i32* %120, align 4
  %122 = load double, double* %11, align 8
  %123 = call i32 @hqdn3d_precalc_coef(i32 %121, double %122)
  %124 = load i8**, i8*** %4, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @hb_dict_extract_double(double*, i32, i8*) #1

declare dso_local i32 @hqdn3d_precalc_coef(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
