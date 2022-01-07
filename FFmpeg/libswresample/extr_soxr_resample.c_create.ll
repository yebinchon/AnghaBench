; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_create.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_soxr_resample.c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ResampleContext = type { i32 }
%struct.TYPE_4__ = type { double, i32, i32 }

@AV_SAMPLE_FMT_S16P = common dso_local global i32 0, align 4
@SOXR_INT16_S = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@SOXR_INT16_I = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32P = common dso_local global i32 0, align 4
@SOXR_INT32_S = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S32 = common dso_local global i32 0, align 4
@SOXR_INT32_I = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@SOXR_FLOAT32_S = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@SOXR_FLOAT32_I = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBLP = common dso_local global i32 0, align 4
@SOXR_FLOAT64_S = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBL = common dso_local global i32 0, align 4
@SOXR_FLOAT64_I = common dso_local global i32 0, align 4
@SOXR_HI_PREC_CLOCK = common dso_local global i32 0, align 4
@SOXR_ROLLOFF_NONE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"soxr_create: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ResampleContext* (%struct.ResampleContext*, i32, i32, i32, i32, i32, double, i32, i32, double, double, i32, i32)* @create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ResampleContext* @create(%struct.ResampleContext* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double %6, i32 %7, i32 %8, double %9, double %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.ResampleContext*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_4__, align 8
  store %struct.ResampleContext* %0, %struct.ResampleContext** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store double %6, double* %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store double %9, double* %23, align 8
  store double %10, double* %24, align 8
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* @AV_SAMPLE_FMT_S16P, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %13
  %35 = load i32, i32* @SOXR_INT16_S, align 4
  br label %93

36:                                               ; preds = %13
  %37 = load i32, i32* %21, align 4
  %38 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @SOXR_INT16_I, align 4
  br label %91

42:                                               ; preds = %36
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* @AV_SAMPLE_FMT_S32P, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @SOXR_INT32_S, align 4
  br label %89

48:                                               ; preds = %42
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* @AV_SAMPLE_FMT_S32, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @SOXR_INT32_I, align 4
  br label %87

54:                                               ; preds = %48
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @SOXR_FLOAT32_S, align 4
  br label %85

60:                                               ; preds = %54
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @SOXR_FLOAT32_I, align 4
  br label %83

66:                                               ; preds = %60
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* @AV_SAMPLE_FMT_DBLP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @SOXR_FLOAT64_S, align 4
  br label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* @AV_SAMPLE_FMT_DBL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @SOXR_FLOAT64_I, align 4
  br label %79

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ -1, %78 ]
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi i32 [ %71, %70 ], [ %80, %79 ]
  br label %83

83:                                               ; preds = %81, %64
  %84 = phi i32 [ %65, %64 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %58
  %86 = phi i32 [ %59, %58 ], [ %84, %83 ]
  br label %87

87:                                               ; preds = %85, %52
  %88 = phi i32 [ %53, %52 ], [ %86, %85 ]
  br label %89

89:                                               ; preds = %87, %46
  %90 = phi i32 [ %47, %46 ], [ %88, %87 ]
  br label %91

91:                                               ; preds = %89, %40
  %92 = phi i32 [ %41, %40 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %34
  %94 = phi i32 [ %35, %34 ], [ %92, %91 ]
  store i32 %94, i32* %28, align 4
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %28, align 4
  %97 = call i32 @soxr_io_spec(i32 %95, i32 %96)
  store i32 %97, i32* %29, align 4
  %98 = load double, double* %24, align 8
  %99 = fsub double %98, 2.000000e+00
  %100 = fdiv double %99, 4.000000e+00
  %101 = fptosi double %100 to i32
  %102 = load i32, i32* @SOXR_HI_PREC_CLOCK, align 4
  %103 = load i32, i32* @SOXR_ROLLOFF_NONE, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %25, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = mul nsw i32 %104, %109
  %111 = call { double, i64 } @soxr_quality_spec(i32 %101, i32 %110)
  %112 = bitcast %struct.TYPE_4__* %30 to { double, i64 }*
  %113 = getelementptr inbounds { double, i64 }, { double, i64 }* %112, i32 0, i32 0
  %114 = extractvalue { double, i64 } %111, 0
  store double %114, double* %113, align 8
  %115 = getelementptr inbounds { double, i64 }, { double, i64 }* %112, i32 0, i32 1
  %116 = extractvalue { double, i64 } %111, 1
  store i64 %116, i64* %115, align 8
  %117 = load double, double* %24, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store double %117, double* %118, align 8
  %119 = load double, double* %20, align 8
  %120 = fcmp une double %119, 0.000000e+00
  br i1 %120, label %121, label %126

121:                                              ; preds = %93
  %122 = load double, double* %20, align 8
  %123 = call i32 @FFMIN(double %122, double 0x3FEFD70A3D70A3D7)
  %124 = call i32 @FFMAX(i32 %123, double 8.000000e-01)
  %125 = mul nsw i32 %124, 100
  br label %129

126:                                              ; preds = %93
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i32 [ %125, %121 ], [ %128, %126 ]
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %130, i32* %131, align 8
  %132 = load %struct.ResampleContext*, %struct.ResampleContext** %14, align 8
  %133 = ptrtoint %struct.ResampleContext* %132 to i32
  %134 = call i32 @soxr_delete(i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i64 @soxr_create(i32 %135, i32 %136, i32 0, i32* %27, i32* %29, %struct.TYPE_4__* %30, i32 0)
  %138 = inttoptr i64 %137 to %struct.ResampleContext*
  store %struct.ResampleContext* %138, %struct.ResampleContext** %14, align 8
  %139 = load %struct.ResampleContext*, %struct.ResampleContext** %14, align 8
  %140 = icmp ne %struct.ResampleContext* %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %129
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = load i32, i32* %27, align 4
  %144 = call i32 @av_log(i32* null, i32 %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %129
  %146 = load %struct.ResampleContext*, %struct.ResampleContext** %14, align 8
  ret %struct.ResampleContext* %146
}

declare dso_local i32 @soxr_io_spec(i32, i32) #1

declare dso_local { double, i64 } @soxr_quality_spec(i32, i32) #1

declare dso_local i32 @FFMAX(i32, double) #1

declare dso_local i32 @FFMIN(double, double) #1

declare dso_local i32 @soxr_delete(i32) #1

declare dso_local i64 @soxr_create(i32, i32, i32, i32*, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
