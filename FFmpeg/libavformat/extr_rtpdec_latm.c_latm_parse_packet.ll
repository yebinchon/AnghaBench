; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_latm.c_latm_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_latm.c_latm_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i64, i64, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No data available yet\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Malformed LATM packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i64*, i32*, i32, i32, i32)* @latm_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latm_parse_packet(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, %struct.TYPE_10__* %3, i64* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %14, align 8
  store i64* %4, i64** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i32*, i32** %16, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %85

25:                                               ; preds = %9
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 4
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %15, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30, %25
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = call i32 @av_freep(i32** %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = call i32 @ffio_free_dyn_buf(i32** %42)
  %44 = load i64*, i64** %15, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  %50 = call i32 @avio_open_dyn_buf(i32** %49)
  store i32 %50, i32* %20, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %37
  %53 = load i32, i32* %20, align 4
  store i32 %53, i32* %10, align 4
  br label %178

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54, %30
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @avio_write(i32* %58, i32* %59, i32 %60)
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %10, align 4
  br label %178

69:                                               ; preds = %55
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = call i32 @av_freep(i32** %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = call i64 @avio_close_dyn_buf(i32* %75, i32** %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %69, %9
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* @AV_LOG_ERROR, align 4
  %93 = call i32 @av_log(i32* %91, i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = call i32 @AVERROR(i32 %94)
  store i32 %95, i32* %10, align 4
  br label %178

96:                                               ; preds = %85
  store i32 0, i32* %21, align 4
  br label %97

97:                                               ; preds = %121, %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %100, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = getelementptr inbounds i32, i32* %108, i64 %111
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %22, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 255
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %122

121:                                              ; preds = %105
  br label %97

122:                                              ; preds = %120, %97
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %125, %127
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 @av_log(i32* %134, i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @EIO, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %10, align 4
  br label %178

139:                                              ; preds = %122
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @av_new_packet(%struct.TYPE_10__* %140, i32 %141)
  store i32 %142, i32* %20, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* %20, align 4
  store i32 %145, i32* %10, align 4
  br label %178

146:                                              ; preds = %139
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %21, align 4
  %158 = call i32 @memcpy(i32 %149, i32* %156, i32 %157)
  %159 = load i32, i32* %21, align 4
  %160 = sext i32 %159 to i64
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %172, %175
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %146, %144, %133, %90, %66, %52
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @ffio_free_dyn_buf(i32**) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
