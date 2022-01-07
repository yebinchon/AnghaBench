; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mjpegdec.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error dc\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@re = common dso_local global i32 0, align 4
@MIN_CACHE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"error count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32, i32, i32, i32*)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @mjpeg_decode_dc(%struct.TYPE_8__* %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = icmp eq i32 %24, 1048575
  br i1 %25, label %26, label %33

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 (i32, i32, i8*, ...) @av_log(i32 %29, i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %32, i32* %7, align 4
  br label %162

33:                                               ; preds = %6
  %34 = load i32, i32* %18, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %34, %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %38, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @av_clip_int16(i32 %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %15, align 4
  %59 = load i32, i32* @re, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = call i32 @OPEN_READER(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %154, %33
  %64 = load i32, i32* @re, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = call i32 @UPDATE_CACHE(i32 %64, i32* %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @re, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GET_VLC(i32 %68, i32 %69, i32* %71, i32 %81, i32 9, i32 2)
  %83 = load i32, i32* %14, align 4
  %84 = lshr i32 %83, 4
  %85 = load i32, i32* %15, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = and i32 %87, 15
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %153

91:                                               ; preds = %63
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* @MIN_CACHE_BITS, align 4
  %94 = sub nsw i32 %93, 16
  %95 = icmp sgt i32 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* @re, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = call i32 @UPDATE_CACHE(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @re, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = call i32 @GET_CACHE(i32 %102, i32* %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = xor i32 %106, -1
  %108 = ashr i32 %107, 31
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %19, align 4
  %111 = xor i32 %109, %110
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @NEG_USR32(i32 %111, i32 %112)
  %114 = load i32, i32* %20, align 4
  %115 = xor i32 %113, %114
  %116 = load i32, i32* %20, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* @re, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @LAST_SKIP_BITS(i32 %118, i32* %120, i32 %121)
  %123 = load i32, i32* %15, align 4
  %124 = icmp sgt i32 %123, 63
  br i1 %124, label %125, label %133

125:                                              ; preds = %101
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (i32, i32, i8*, ...) @av_log(i32 %128, i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %132, i32* %7, align 4
  br label %162

133:                                              ; preds = %101
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %142, %147
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %133, %63
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %15, align 4
  %156 = icmp slt i32 %155, 63
  br i1 %156, label %63, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @re, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = call i32 @CLOSE_READER(i32 %158, i32* %160)
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %125, %26
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @mjpeg_decode_dc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_clip_int16(i32) #1

declare dso_local i32 @OPEN_READER(i32, i32*) #1

declare dso_local i32 @UPDATE_CACHE(i32, i32*) #1

declare dso_local i32 @GET_VLC(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GET_CACHE(i32, i32*) #1

declare dso_local i32 @NEG_USR32(i32, i32) #1

declare dso_local i32 @LAST_SKIP_BITS(i32, i32*, i32) #1

declare dso_local i32 @CLOSE_READER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
