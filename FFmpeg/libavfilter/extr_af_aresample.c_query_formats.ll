; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"osf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"osr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ocl\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i64], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %4, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %25, i64 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @av_opt_get_sample_fmt(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32* %5)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @av_opt_get_int(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i64* %6)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @av_opt_get_int(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i64* %7)
  %45 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %46 = call i32* @ff_all_formats(i32 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 5
  %50 = call i32 @ff_formats_ref(i32* %47, i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %2, align 4
  br label %129

54:                                               ; preds = %1
  %55 = call i32* (...) @ff_all_samplerates()
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  %59 = call i32 @ff_formats_ref(i32* %56, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %2, align 4
  br label %129

63:                                               ; preds = %54
  %64 = call i32* (...) @ff_all_channel_counts()
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = call i32 @ff_channel_layouts_ref(i32* %65, i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %2, align 4
  br label %129

72:                                               ; preds = %63
  %73 = load i64, i64* %6, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %77 = load i64, i64* %6, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 -1, i32* %79, align 4
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %81 = call i32* @ff_make_format_list(i32* %80)
  store i32* %81, i32** %13, align 8
  br label %84

82:                                               ; preds = %72
  %83 = call i32* (...) @ff_all_samplerates()
  store i32* %83, i32** %13, align 8
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @ff_formats_ref(i32* %85, i32* %87)
  store i32 %88, i32* %16, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %2, align 4
  br label %129

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %97, align 4
  %99 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 -1, i32* %99, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %101 = call i32* @ff_make_format_list(i32* %100)
  store i32* %101, i32** %11, align 8
  br label %105

102:                                              ; preds = %92
  %103 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %104 = call i32* @ff_all_formats(i32 %103)
  store i32* %104, i32** %11, align 8
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32*, i32** %11, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = call i32 @ff_formats_ref(i32* %106, i32* %108)
  store i32 %109, i32* %16, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %2, align 4
  br label %129

113:                                              ; preds = %105
  %114 = load i64, i64* %7, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %118 = load i64, i64* %7, align 8
  store i64 %118, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 1
  store i64 -1, i64* %119, align 8
  %120 = getelementptr inbounds [2 x i64], [2 x i64]* %19, i64 0, i64 0
  %121 = call i32* @avfilter_make_format64_list(i64* %120)
  store i32* %121, i32** %15, align 8
  br label %124

122:                                              ; preds = %113
  %123 = call i32* (...) @ff_all_channel_counts()
  store i32* %123, i32** %15, align 8
  br label %124

124:                                              ; preds = %122, %116
  %125 = load i32*, i32** %15, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = call i32 @ff_channel_layouts_ref(i32* %125, i32* %127)
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %111, %90, %70, %61, %52
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @av_opt_get_sample_fmt(i32, i8*, i32, i32*) #1

declare dso_local i32 @av_opt_get_int(i32, i8*, i32, i64*) #1

declare dso_local i32* @ff_all_formats(i32) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @ff_channel_layouts_ref(i32*, i32*) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32* @avfilter_make_format64_list(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
