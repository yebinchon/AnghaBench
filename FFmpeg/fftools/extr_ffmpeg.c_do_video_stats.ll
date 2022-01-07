; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_do_video_stats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_do_video_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, i32, i32, double*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32, double, double, i32 }

@vstats_file = common dso_local global i64 0, align 8
@vstats_filename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@vstats_version = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"frame= %5d q= %2.1f \00", align 1
@FF_QP2LAMBDA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"out= %2d st= %2d frame= %5d q= %2.1f \00", align 1
@AV_CODEC_FLAG_PSNR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"PSNR= %6.2f \00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"f_size= %6d \00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"s_size= %8.0fkB time= %0.3f br= %7.1fkbits/s avg_br= %7.1fkbits/s \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"type= %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @do_video_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_video_stats(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i64, i64* @vstats_file, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @vstats_filename, align 4
  %14 = call i64 @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %14, i64* @vstats_file, align 8
  %15 = load i64, i64* @vstats_file, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @exit_program(i32 1)
  br label %20

20:                                               ; preds = %17, %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %5, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %154

30:                                               ; preds = %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @vstats_version, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = load i64, i64* @vstats_file, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load float, float* %42, align 8
  %44 = load i64, i64* @FF_QP2LAMBDA, align 8
  %45 = sitofp i64 %44 to float
  %46 = fdiv float %43, %45
  %47 = fpext float %46 to double
  %48 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %40, double %47)
  br label %66

49:                                               ; preds = %30
  %50 = load i64, i64* @vstats_file, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 8
  %61 = load i64, i64* @FF_QP2LAMBDA, align 8
  %62 = sitofp i64 %61 to float
  %63 = fdiv float %60, %62
  %64 = fpext float %63 to double
  %65 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %56, i32 %57, double %64)
  br label %66

66:                                               ; preds = %49, %38
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 0
  %71 = load double, double* %70, align 8
  %72 = fcmp oge double %71, 0.000000e+00
  br i1 %72, label %73, label %100

73:                                               ; preds = %66
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AV_CODEC_FLAG_PSNR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i64, i64* @vstats_file, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load double*, double** %83, align 8
  %85 = getelementptr inbounds double, double* %84, i64 0
  %86 = load double, double* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load double, double* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load double, double* %91, align 8
  %93 = fmul double %89, %92
  %94 = fmul double %93, 2.550000e+02
  %95 = fmul double %94, 2.550000e+02
  %96 = fdiv double %86, %95
  %97 = call double @psnr(double %96)
  %98 = fptosi double %97 to i32
  %99 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %80, %73, %66
  %101 = load i64, i64* @vstats_file, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = call i32 @av_stream_get_end_pts(%struct.TYPE_7__* %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 6
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @av_q2d(i32 %112)
  %114 = mul nsw i32 %107, %113
  %115 = sitofp i32 %114 to double
  store double %115, double* %7, align 8
  %116 = load double, double* %7, align 8
  %117 = fcmp olt double %116, 1.000000e-02
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  store double 1.000000e-02, double* %7, align 8
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* %4, align 4
  %121 = mul nsw i32 %120, 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @av_q2d(i32 %124)
  %126 = sdiv i32 %121, %125
  %127 = sitofp i32 %126 to double
  %128 = fdiv double %127, 1.000000e+03
  store double %128, double* %8, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 8
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %7, align 8
  %135 = fdiv double %133, %134
  %136 = fdiv double %135, 1.000000e+03
  store double %136, double* %9, align 8
  %137 = load i64, i64* @vstats_file, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sitofp i32 %140 to double
  %142 = fdiv double %141, 1.024000e+03
  %143 = fptosi double %142 to i32
  %144 = load double, double* %7, align 8
  %145 = load double, double* %8, align 8
  %146 = load double, double* %9, align 8
  %147 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %137, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %143, double %144, double %145, double %146)
  %148 = load i64, i64* @vstats_file, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @av_get_picture_type_char(i32 %151)
  %153 = call i32 (i64, i8*, i32, ...) @fprintf(i64 %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %119, %21
  ret void
}

declare dso_local i64 @fopen(i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, ...) #1

declare dso_local double @psnr(double) #1

declare dso_local i32 @av_stream_get_end_pts(%struct.TYPE_7__*) #1

declare dso_local i32 @av_q2d(i32) #1

declare dso_local i32 @av_get_picture_type_char(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
