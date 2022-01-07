; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvaudio.c_bmv_aud_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvaudio.c_bmv_aud_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32, i64* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"expected %d bytes, got %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@bmv_aud_mults = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, %struct.TYPE_5__*)* @bmv_aud_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmv_aud_decode_frame(i32* %0, i8* %1, i32* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %11, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 %32, 65
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %39, 65
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @av_log(i32* %37, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %44, i32* %5, align 4
  br label %126

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %46, 32
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = call i32 @ff_get_buffer(i32* %50, %struct.TYPE_6__* %51, i32 0)
  store i32 %52, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %5, align 4
  br label %126

56:                                               ; preds = %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %17, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %120, %56
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %123

67:                                               ; preds = %63
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %11, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = ashr i32 %71, 1
  %73 = load i32, i32* %19, align 4
  %74 = shl i32 %73, 7
  %75 = or i32 %72, %74
  store i32 %75, i32* %19, align 4
  %76 = load i32*, i32** @bmv_aud_mults, align 8
  %77 = load i32, i32* %19, align 4
  %78 = and i32 %77, 15
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** @bmv_aud_mults, align 8
  %84 = load i32, i32* %19, align 4
  %85 = ashr i32 %84, 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %116, %67
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 32
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %11, align 8
  %98 = load i32, i32* %96, align 4
  %99 = mul nsw i32 %95, %98
  %100 = ashr i32 %99, 5
  %101 = call i8* @av_clip_int16(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %17, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %17, align 8
  store i32 %102, i32* %103, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %11, align 8
  %109 = load i32, i32* %107, align 4
  %110 = mul nsw i32 %106, %109
  %111 = ashr i32 %110, 5
  %112 = call i8* @av_clip_int16(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %17, align 8
  store i32 %113, i32* %114, align 4
  br label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %15, align 4
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %63

123:                                              ; preds = %63
  %124 = load i32*, i32** %8, align 8
  store i32 1, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %54, %36
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i8* @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
