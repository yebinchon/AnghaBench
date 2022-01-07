; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsplaylist.c_ff_hls_write_stream_info.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsplaylist.c_ff_hls_write_stream_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Bandwidth info not available, set audio and video bitrates\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"#EXT-X-STREAM-INF:BANDWIDTH=%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c",RESOLUTION=%dx%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c",CODECS=\22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c",AUDIO=\22group_%s\22\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c",CLOSED-CAPTIONS=\22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hls_write_stream_info(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = load i8*, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %7
  br label %97

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @AV_LOG_WARNING, align 4
  %26 = call i32 @av_log(i32* null, i32 %25, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  br label %97

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32*, i8*, ...) @avio_printf(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32*, i8*, ...) @avio_printf(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %47, %40, %33, %27
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 (i32*, i8*, ...) @avio_printf(i32* %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %67, %63, %60
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @strlen(i8* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32*, i32** %9, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 (i32*, i8*, ...) @avio_printf(i32* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %78, %74, %71
  %83 = load i8*, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32*, i32** %9, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 (i32*, i8*, ...) @avio_printf(i32* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %89, %85, %82
  %94 = load i32*, i32** %9, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 (i32*, i8*, ...) @avio_printf(i32* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %93, %24, %20
  ret void
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avio_printf(i32*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
