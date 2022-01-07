; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"L * D must be <= 100\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid RTP base port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ttl\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"ProMPEG CoP#3-R2 FEC L=%d D=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @prompeg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompeg_open(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = icmp sgt i32 %26, 100
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %29, i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %4, align 4
  br label %139

34:                                               ; preds = %3
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @av_url_split(i32* null, i32 0, i32* null, i32 0, i8* %35, i32 256, i32* %10, i32* null, i32 0, i8* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @UINT16_MAX, align 4
  %43 = sub nsw i32 %42, 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40, %34
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %46, i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %139

52:                                               ; preds = %40
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @snprintf(i8* %58, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %64 = call i32 @av_dict_set(i32** %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %63, i32 0)
  br label %65

65:                                               ; preds = %57, %52
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 2
  %70 = call i32 @ff_url_join(i8* %66, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %67, i32 %69, i32* null)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = call i64 @ffurl_open_whitelist(%struct.TYPE_10__** %72, i8* %73, i32 %74, i32* %76, i32** %9, i32 %79, i32 %82, %struct.TYPE_8__* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %65
  br label %129

87:                                               ; preds = %65
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 4
  %92 = call i32 @ff_url_join(i8* %88, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null, i8* %89, i32 %91, i32* null)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = call i64 @ffurl_open_whitelist(%struct.TYPE_10__** %94, i8* %95, i32 %96, i32* %98, i32** %9, i32 %101, i32 %104, %struct.TYPE_8__* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %87
  br label %129

109:                                              ; preds = %87
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  %119 = call i32 @av_dict_free(i32** %9)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = load i32, i32* @AV_LOG_INFO, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %120, i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %127)
  store i32 0, i32* %4, align 4
  br label %139

129:                                              ; preds = %108, %86
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 5
  %132 = call i32 @ffurl_closep(%struct.TYPE_10__** %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = call i32 @ffurl_closep(%struct.TYPE_10__** %134)
  %136 = call i32 @av_dict_free(i32** %9)
  %137 = load i32, i32* @EIO, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %129, %109, %45, %28
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_url_split(i32*, i32, i32*, i32, i8*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @ffurl_open_whitelist(%struct.TYPE_10__**, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @ffurl_closep(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
