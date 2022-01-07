; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libmodplug.c_modplug_load_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libmodplug.c_modplug_load_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%u pattern%s, %u channel%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"extra info\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@instrument = common dso_local global i32 0, align 4
@ModPlug_InstrumentName = common dso_local global i32 0, align 4
@sample = common dso_local global i32 0, align 4
@ModPlug_SampleName = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @modplug_load_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modplug_load_metadata(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @ModPlug_GetName(i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @ModPlug_GetMessage(i32* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @ModPlug_NumInstruments(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ModPlug_NumSamples(i32* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ModPlug_NumPatterns(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ModPlug_NumChannels(i32* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @av_dict_set(i32* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %41, i32 0)
  br label %43

43:                                               ; preds = %38, %33, %1
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @av_dict_set(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 0)
  br label %56

56:                                               ; preds = %51, %46, %43
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ugt i32 %58, 1
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ugt i32 %63, 1
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i8* @av_asprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %57, i8* %61, i32 %62, i8* %66)
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %56
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %85

73:                                               ; preds = %56
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %78 = call i32 @av_dict_set(i32* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 %77)
  %79 = load i32, i32* @instrument, align 4
  %80 = load i32, i32* @ModPlug_InstrumentName, align 4
  %81 = call i32 @ADD_META_MULTIPLE_ENTRIES(i32 %79, i32 %80)
  %82 = load i32, i32* @sample, align 4
  %83 = load i32, i32* @ModPlug_SampleName, align 4
  %84 = call i32 @ADD_META_MULTIPLE_ENTRIES(i32 %82, i32 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %73, %70
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i8* @ModPlug_GetName(i32*) #1

declare dso_local i8* @ModPlug_GetMessage(i32*) #1

declare dso_local i32 @ModPlug_NumInstruments(i32*) #1

declare dso_local i32 @ModPlug_NumSamples(i32*) #1

declare dso_local i32 @ModPlug_NumPatterns(i32*) #1

declare dso_local i32 @ModPlug_NumChannels(i32*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i8* @av_asprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ADD_META_MULTIPLE_ENTRIES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
