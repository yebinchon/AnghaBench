; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_segmenttimeline.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_parse_manifest_segmenttimeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.timeline = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"parse_manifest_segmenttimeline attr->name = %s val is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.representation*, %struct.TYPE_5__*)* @parse_manifest_segmenttimeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_manifest_segmenttimeline(i32* %0, %struct.representation* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.representation*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeline*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.representation* %1, %struct.representation** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @av_strcasecmp(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %96, label %16

16:                                               ; preds = %3
  %17 = call %struct.timeline* @av_mallocz(i32 24)
  store %struct.timeline* %17, %struct.timeline** %10, align 8
  %18 = load %struct.timeline*, %struct.timeline** %10, align 8
  %19 = icmp ne %struct.timeline* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %8, align 8
  br label %27

27:                                               ; preds = %83, %38, %23
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @xmlGetProp(%struct.TYPE_5__* %31, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @AV_LOG_WARNING, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @av_log(i32* %39, i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %27

45:                                               ; preds = %30
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @av_strcasecmp(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @strtoll(i8* %52, i32* null, i32 10)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.timeline*, %struct.timeline** %10, align 8
  %56 = getelementptr inbounds %struct.timeline, %struct.timeline* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %83

57:                                               ; preds = %45
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @av_strcasecmp(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = call i64 @strtoll(i8* %64, i32* null, i32 10)
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.timeline*, %struct.timeline** %10, align 8
  %68 = getelementptr inbounds %struct.timeline, %struct.timeline* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %82

69:                                               ; preds = %57
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @av_strcasecmp(i32 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %9, align 8
  %77 = call i64 @strtoll(i8* %76, i32* null, i32 10)
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.timeline*, %struct.timeline** %10, align 8
  %80 = getelementptr inbounds %struct.timeline, %struct.timeline* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @xmlFree(i8* %87)
  br label %27

89:                                               ; preds = %27
  %90 = load %struct.representation*, %struct.representation** %6, align 8
  %91 = getelementptr inbounds %struct.representation, %struct.representation* %90, i32 0, i32 1
  %92 = load %struct.representation*, %struct.representation** %6, align 8
  %93 = getelementptr inbounds %struct.representation, %struct.representation* %92, i32 0, i32 0
  %94 = load %struct.timeline*, %struct.timeline** %10, align 8
  %95 = call i32 @dynarray_add(i32* %91, i32* %93, %struct.timeline* %94)
  br label %96

96:                                               ; preds = %89, %3
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %20
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @av_strcasecmp(i32, i8*) #1

declare dso_local %struct.timeline* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @xmlGetProp(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.timeline*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
