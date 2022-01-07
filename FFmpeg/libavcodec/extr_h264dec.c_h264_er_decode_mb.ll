; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_h264_er_decode_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264dec.c_h264_er_decode_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i64, i64, i32***, i32**, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32** }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Reference not available for error concealing\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Reference invalid\0A\00", align 1
@scan8 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, [2 x [4 x [2 x i32]]]*, i32, i32, i32, i32)* @h264_er_decode_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h264_er_decode_mb(i8* %0, i32 %1, i32 %2, i32 %3, [2 x [4 x [2 x i32]]]* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x [4 x [2 x i32]]]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store [2 x [4 x [2 x i32]]]* %4, [2 x [4 x [2 x i32]]]** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %19, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 0
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %20, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  %39 = add nsw i32 %33, %38
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load i32, i32* %11, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @av_assert1(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %50, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %9
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %57, %9
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %58
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @AV_LOG_DEBUG, align 4
  %77 = call i32 @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %72, %58
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @AV_LOG_DEBUG, align 4
  %96 = call i32 @av_log(i32 %94, i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %155

97:                                               ; preds = %78
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 4, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @fill_rectangle(i32* %109, i32 2, i32 2, i32 2, i32 %110, i32 1)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 7
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64*, i64** @scan8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @fill_rectangle(i32* %120, i32 4, i32 4, i32 8, i32 %121, i32 1)
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 6
  %125 = load i32***, i32**** %124, align 8
  %126 = getelementptr inbounds i32**, i32*** %125, i64 0
  %127 = load i32**, i32*** %126, align 8
  %128 = load i64*, i64** @scan8, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load [2 x [4 x [2 x i32]]]*, [2 x [4 x [2 x i32]]]** %14, align 8
  %134 = getelementptr inbounds [2 x [4 x [2 x i32]]], [2 x [4 x [2 x i32]]]* %133, i64 0, i64 0
  %135 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %134, i64 0, i64 0
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %135, i64 0, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load [2 x [4 x [2 x i32]]]*, [2 x [4 x [2 x i32]]]** %14, align 8
  %139 = getelementptr inbounds [2 x [4 x [2 x i32]]], [2 x [4 x [2 x i32]]]* %138, i64 0, i64 0
  %140 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %139, i64 0, i64 0
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %140, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pack16to32(i32 %137, i32 %142)
  %144 = call i32 @fill_rectangle(i32* %132, i32 4, i32 4, i32 8, i32 %143, i32 4)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 0
  %154 = call i32 @ff_h264_hl_decode_mb(%struct.TYPE_10__* %149, %struct.TYPE_9__* %153)
  br label %155

155:                                              ; preds = %97, %91
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @fill_rectangle(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack16to32(i32, i32) #1

declare dso_local i32 @ff_h264_hl_decode_mb(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
