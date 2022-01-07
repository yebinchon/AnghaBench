; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_ff_audio_mix_set_func.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_ff_audio_mix_set_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i32, i32, i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"[%d to %d] \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"[%d to any] \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"[any to %d] \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"[any to any] \00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"audio_mix: found function: [fmt=%s] [c=%s] %s(%s)\0A\00", align 1
@coeff_type_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_audio_mix_set_func(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %9
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %119

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %14, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %18, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 11
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %74

64:                                               ; preds = %49
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8*, i8** %18, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %77

74:                                               ; preds = %64, %49
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 8
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %84, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  br label %92

88:                                               ; preds = %80
  %89 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %89, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %104

93:                                               ; preds = %77
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %97, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  br label %103

100:                                              ; preds = %93
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %102 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %92
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AV_LOG_DEBUG, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @av_get_sample_fmt_name(i32 %109)
  %111 = load i32*, i32** @coeff_type_names, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 @av_log(i32 %107, i32 %108, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %115, i8* %116, i8* %117)
  br label %119

119:                                              ; preds = %104, %46, %37, %25, %9
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @av_get_sample_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
