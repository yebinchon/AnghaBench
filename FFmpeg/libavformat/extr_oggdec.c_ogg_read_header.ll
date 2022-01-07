; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__**, %struct.ogg* }
%struct.TYPE_11__ = type { i32 }
%struct.ogg = type { i32, i32, %struct.ogg_stream*, i32 }
%struct.ogg_stream = type { i64, i64, i64, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"found headers\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Header parsing failed for stream %d\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Headers mismatch for stream %d: expected %d received %d.\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@OGG_NOGRANULE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ogg_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.ogg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ogg_stream*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load %struct.ogg*, %struct.ogg** %9, align 8
  store %struct.ogg* %10, %struct.ogg** %4, align 8
  %11 = load %struct.ogg*, %struct.ogg** %4, align 8
  %12 = getelementptr inbounds %struct.ogg, %struct.ogg* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  br label %13

13:                                               ; preds = %23, %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32 @ogg_packet(%struct.TYPE_12__* %14, i32* null, i32* null, i32* null, i32* null)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call i32 @ogg_read_close(%struct.TYPE_12__* %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %152

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.ogg*, %struct.ogg** %4, align 8
  %25 = getelementptr inbounds %struct.ogg, %struct.ogg* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %13, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = load i32, i32* @AV_LOG_TRACE, align 4
  %32 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %139, %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ogg*, %struct.ogg** %4, align 8
  %36 = getelementptr inbounds %struct.ogg, %struct.ogg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %142

39:                                               ; preds = %33
  %40 = load %struct.ogg*, %struct.ogg** %4, align 8
  %41 = getelementptr inbounds %struct.ogg, %struct.ogg* %40, i32 0, i32 2
  %42 = load %struct.ogg_stream*, %struct.ogg_stream** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %42, i64 %44
  store %struct.ogg_stream* %45, %struct.ogg_stream** %7, align 8
  %46 = load %struct.ogg*, %struct.ogg** %4, align 8
  %47 = getelementptr inbounds %struct.ogg, %struct.ogg* %46, i32 0, i32 2
  %48 = load %struct.ogg_stream*, %struct.ogg_stream** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %48, i64 %50
  %52 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %39
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %56, i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.ogg*, %struct.ogg** %4, align 8
  %61 = getelementptr inbounds %struct.ogg, %struct.ogg* %60, i32 0, i32 2
  %62 = load %struct.ogg_stream*, %struct.ogg_stream** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %62, i64 %64
  %66 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %65, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %66, align 8
  %67 = load %struct.ogg*, %struct.ogg** %4, align 8
  %68 = getelementptr inbounds %struct.ogg, %struct.ogg* %67, i32 0, i32 2
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i64 %71
  %73 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %72, i32 0, i32 5
  %74 = call i32 @av_freep(i32* %73)
  br label %115

75:                                               ; preds = %39
  %76 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %77 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %76, i32 0, i32 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %114

80:                                               ; preds = %75
  %81 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %82 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %85 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %84, i32 0, i32 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %83, %88
  br i1 %89, label %90, label %114

90:                                               ; preds = %80
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32, i32* @AV_LOG_WARNING, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %95 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %94, i32 0, i32 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %100 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %91, i32 %92, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %93, i64 %98, i64 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AV_EF_EXPLODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %90
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = call i32 @ogg_read_close(%struct.TYPE_12__* %110)
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %2, align 4
  br label %152

113:                                              ; preds = %90
  br label %114

114:                                              ; preds = %113, %80, %75
  br label %115

115:                                              ; preds = %114, %55
  %116 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %117 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @OGG_NOGRANULE_VALUE, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %115
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %125 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @ogg_gptopts(%struct.TYPE_12__* %122, i32 %123, i64 %126, i32* null)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 %127, i32* %135, align 4
  %136 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %137 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %136, i32 0, i32 3
  store i32 %127, i32* %137, align 8
  br label %138

138:                                              ; preds = %121, %115
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %33

142:                                              ; preds = %33
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = call i32 @ogg_get_length(%struct.TYPE_12__* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = call i32 @ogg_read_close(%struct.TYPE_12__* %148)
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %2, align 4
  br label %152

151:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %147, %109, %18
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @ogg_packet(%struct.TYPE_12__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ogg_read_close(%struct.TYPE_12__*) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ogg_gptopts(%struct.TYPE_12__*, i32, i64, i32*) #1

declare dso_local i32 @ogg_get_length(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
