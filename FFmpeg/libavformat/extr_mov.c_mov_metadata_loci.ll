; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_loci.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_loci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"loci too short\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"place name too long\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"loci too short (%u bytes left, need at least %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%+08.4f%+09.4f\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%+f\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@AVFMT_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @mov_metadata_loci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_metadata_loci(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca [200 x i8], align 16
  %10 = alloca [100 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [16 x i8], align 16
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %17, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %18, 20
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %4, align 4
  br label %134

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @avio_skip(i32* %28, i32 4)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @avio_rb16(i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %34 = call i32 @ff_mov_lang_to_iso639(i32 %32, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 %35, 6
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %40 = call i64 @avio_get_str(i32* %37, i32 %38, i8* %39, i32 100)
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %27
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %50, i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %134

54:                                               ; preds = %27
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @avio_skip(i32* %55, i32 1)
  %57 = load i32, i32* %7, align 4
  %58 = sub i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ult i32 %59, 12
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %64, i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 12)
  %68 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %68, i32* %4, align 4
  br label %134

69:                                               ; preds = %54
  %70 = load i32*, i32** %6, align 8
  %71 = call i64 @avio_rb32(i32* %70)
  %72 = sitofp i64 %71 to float
  %73 = fdiv float %72, 6.553600e+04
  %74 = fpext float %73 to double
  store double %74, double* %12, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @avio_rb32(i32* %75)
  %77 = sitofp i64 %76 to float
  %78 = fdiv float %77, 6.553600e+04
  %79 = fpext float %78 to double
  store double %79, double* %13, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @avio_rb32(i32* %80)
  %82 = sitofp i64 %81 to float
  %83 = fdiv float %82, 6.553600e+04
  %84 = fpext float %83 to double
  store double %84, double* %14, align 8
  %85 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %86 = load double, double* %13, align 8
  %87 = load double, double* %12, align 8
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 200, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), double %86, double %87)
  %89 = load double, double* %14, align 8
  %90 = fcmp une double %89, 0.000000e+00
  br i1 %90, label %91, label %95

91:                                               ; preds = %69
  %92 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %93 = load double, double* %14, align 8
  %94 = call i32 (i8*, i32, i8*, ...) @av_strlcatf(i8* %92, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %93)
  br label %95

95:                                               ; preds = %91, %69
  %96 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %98 = call i32 (i8*, i32, i8*, ...) @av_strlcatf(i8* %96, i32 200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %95
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %109 = load i8*, i8** %15, align 8
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %111 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %108, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %109, i8* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %117 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %118 = call i32 @av_dict_set(i32* %115, i8* %116, i8* %117, i32 0)
  br label %119

119:                                              ; preds = %107, %103, %95
  %120 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %120
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %133 = call i32 @av_dict_set(i32* %130, i8* %131, i8* %132, i32 0)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %119, %61, %47, %20
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, ...) #2

declare dso_local i32 @avio_skip(i32*, i32) #2

declare dso_local i32 @avio_rb16(i32*) #2

declare dso_local i32 @ff_mov_lang_to_iso639(i32, i8*) #2

declare dso_local i64 @avio_get_str(i32*, i32, i8*, i32) #2

declare dso_local i64 @avio_rb32(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
