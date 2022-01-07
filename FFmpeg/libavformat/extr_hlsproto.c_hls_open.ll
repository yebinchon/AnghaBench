; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsproto.c_hls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hlsproto.c_hls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32, i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i8* }

@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hls+\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"hls://\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"No nested protocol specified. Specify e.g. hls+http://%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Unsupported url %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [241 x i8] c"Using the hls protocol is discouraged, please try using the hls demuxer instead. The hls demuxer should be more complete and work as well as the protocol implementation. (If not, please report it.) To use the demuxer, simply use %s as url.\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Empty playlist\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32)* @hls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_open(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %4, align 4
  br label %180

24:                                               ; preds = %3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @av_strstart(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @av_strlcpy(i32 %33, i8* %34, i32 4)
  br label %54

36:                                               ; preds = %24
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @av_strstart(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %41, i32 %42, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %9, align 4
  br label %176

47:                                               ; preds = %36
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %48, i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %9, align 4
  br label %176

54:                                               ; preds = %30
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i32, i32* @AV_LOG_WARNING, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %55, i32 %56, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @parse_playlist(%struct.TYPE_9__* %61, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %176

68:                                               ; preds = %54
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %137

73:                                               ; preds = %68
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %137

78:                                               ; preds = %73
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %112, %78
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %79
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %88, i64 %90
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %97, %85
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 6
  %103 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %103, i64 %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %100, %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %79

115:                                              ; preds = %79
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %121, i64 %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @av_strlcpy(i32 %118, i8* %127, i32 4)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @parse_playlist(%struct.TYPE_9__* %129, i32 %132)
  store i32 %133, i32* %9, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %115
  br label %176

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136, %73, %68
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = load i32, i32* @AV_LOG_WARNING, align 4
  %145 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %143, i32 %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @EIO, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %9, align 4
  br label %176

148:                                              ; preds = %137
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %148
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sge i32 %161, 3
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %166, %170
  %172 = sub nsw i64 %171, 3
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %163, %158, %148
  store i32 0, i32* %4, align 4
  br label %180

176:                                              ; preds = %142, %135, %67, %47, %40
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %178 = call i32 @hls_close(%struct.TYPE_9__* %177)
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %176, %175, %21
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_strstart(i8*, i8*, i8**) #1

declare dso_local i32 @av_strlcpy(i32, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @parse_playlist(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @hls_close(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
