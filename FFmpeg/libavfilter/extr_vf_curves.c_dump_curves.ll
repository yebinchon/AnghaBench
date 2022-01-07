; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_dump_curves.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_curves.c_dump_curves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keypoint = type { %struct.keypoint*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@NB_COMP = common dso_local global i32 0, align 4
@dump_curves.colors = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"#404040\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Cannot open file '%s' for writing: %s\0A\00", align 1
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"set xtics 0.1\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"set ytics 0.1\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"set size square\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"set grid\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s'-' using 1:2 with lines lc '%s' title ''\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"plot \00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c", '-' using 1:2 with points pointtype 3 lc '%s' title ''\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"e\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, double**, %struct.keypoint**, i32)* @dump_curves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_curves(i8* %0, double** %1, %struct.keypoint** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double**, align 8
  %8 = alloca %struct.keypoint**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__, align 4
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.keypoint*, align 8
  store i8* %0, i8** %6, align 8
  store double** %1, double*** %7, align 8
  store %struct.keypoint** %2, %struct.keypoint*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @NB_COMP, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @NB_COMP, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sitofp i32 %24 to double
  %26 = fdiv double 1.000000e+00, %25
  store double %26, double* %12, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @av_fopen_utf8(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %28, i32** %13, align 8
  %29 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @dump_curves.colors, i64 0, i64 0))
  %30 = load i32, i32* @NB_COMP, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @av_assert0(i32 %33)
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @errno, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @av_err2str(i32 %42)
  %44 = call i32 @av_log(i32* null, i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %41, i32 %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %5, align 4
  br label %158

46:                                               ; preds = %4
  %47 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %48 = call i32 @av_bprint_init(%struct.TYPE_5__* %11, i32 0, i32 %47)
  %49 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %51 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %52 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %80, %46
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @dump_curves.colors, i64 0, i64 0))
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %53
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_curves.colors, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i8* %61, i8* %65)
  %67 = load %struct.keypoint**, %struct.keypoint*** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.keypoint*, %struct.keypoint** %67, i64 %69
  %71 = load %struct.keypoint*, %struct.keypoint** %70, align 8
  %72 = icmp ne %struct.keypoint* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* @dump_curves.colors, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %57
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %53

83:                                               ; preds = %53
  %84 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %145, %83
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @FF_ARRAY_ELEMS(i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @dump_curves.colors, i64 0, i64 0))
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %148

89:                                               ; preds = %85
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = sitofp i32 %95 to double
  %97 = load double, double* %12, align 8
  %98 = fmul double %96, %97
  %99 = load double**, double*** %7, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double*, double** %99, i64 %101
  %103 = load double*, double** %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double, double* %103, i64 %105
  %107 = load double, double* %106, align 8
  %108 = load double, double* %12, align 8
  %109 = fmul double %107, %108
  %110 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), double %98, double %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %90

114:                                              ; preds = %90
  %115 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %116 = load %struct.keypoint**, %struct.keypoint*** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.keypoint*, %struct.keypoint** %116, i64 %118
  %120 = load %struct.keypoint*, %struct.keypoint** %119, align 8
  %121 = icmp ne %struct.keypoint* %120, null
  br i1 %121, label %122, label %144

122:                                              ; preds = %114
  %123 = load %struct.keypoint**, %struct.keypoint*** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.keypoint*, %struct.keypoint** %123, i64 %125
  %127 = load %struct.keypoint*, %struct.keypoint** %126, align 8
  store %struct.keypoint* %127, %struct.keypoint** %16, align 8
  br label %128

128:                                              ; preds = %131, %122
  %129 = load %struct.keypoint*, %struct.keypoint** %16, align 8
  %130 = icmp ne %struct.keypoint* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load %struct.keypoint*, %struct.keypoint** %16, align 8
  %133 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.keypoint*, %struct.keypoint** %16, align 8
  %136 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load %struct.keypoint*, %struct.keypoint** %16, align 8
  %140 = getelementptr inbounds %struct.keypoint, %struct.keypoint* %139, i32 0, i32 0
  %141 = load %struct.keypoint*, %struct.keypoint** %140, align 8
  store %struct.keypoint* %141, %struct.keypoint** %16, align 8
  br label %128

142:                                              ; preds = %128
  %143 = call i32 (%struct.TYPE_5__*, i8*, ...) @av_bprintf(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %114
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %85

148:                                              ; preds = %85
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @fwrite(i32 %150, i32 1, i32 %152, i32* %153)
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @fclose(i32* %155)
  %157 = call i32 @av_bprint_finalize(%struct.TYPE_5__* %11, i32* null)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %148, %37
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32* @av_fopen_utf8(i8*, i8*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
