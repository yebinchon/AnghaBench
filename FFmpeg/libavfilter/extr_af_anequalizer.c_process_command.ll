; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_process_command.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_anequalizer.c_process_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { double }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { double, double, double }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%d|f=%lf|w=%lf|g=%lf\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*, i8*, i32, i32)* @process_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_command(%struct.TYPE_10__* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %14, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %26, i64 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %15, align 8
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = call i32 @AVERROR(i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %113, label %34

34:                                               ; preds = %6
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @sscanf(i8* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %20, double* %17, double* %18, double* %19)
  %37 = icmp ne i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %7, align 4
  br label %115

41:                                               ; preds = %34
  %42 = load i32, i32* %20, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %20, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %115

53:                                               ; preds = %44
  %54 = load double, double* %17, align 8
  %55 = fcmp olt double %54, 0.000000e+00
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load double, double* %17, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = fcmp ogt double %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56, %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %7, align 4
  br label %115

66:                                               ; preds = %56
  %67 = load double, double* %17, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store double %67, double* %74, align 8
  %75 = load double, double* %18, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store double %75, double* %82, align 8
  %83 = load double, double* %19, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %20, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store double %83, double* %90, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load double, double* %98, align 8
  %100 = call i32 @equalizer(%struct.TYPE_11__* %96, double %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %66
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @draw_curves(%struct.TYPE_10__* %106, %struct.TYPE_9__* %107, i32 %110)
  br label %112

112:                                              ; preds = %105, %66
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %6
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %63, %50, %38
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, double*, double*, double*) #1

declare dso_local i32 @equalizer(%struct.TYPE_11__*, double) #1

declare dso_local i32 @draw_curves(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
