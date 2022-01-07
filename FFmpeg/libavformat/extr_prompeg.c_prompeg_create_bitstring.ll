; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_create_bitstring.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_create_bitstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Unsupported stream format (expected MPEG-TS over RTP)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"The RTP packet size must be constant (set pkt_size)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to allocate the bitstring buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32**)* @prompeg_create_bitstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompeg_create_bitstring(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %29, label %17

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 192
  %22 = icmp ne i32 %21, 128
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 127
  %28 = icmp ne i32 %27, 33
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %17, %4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = call i32 @av_log(%struct.TYPE_5__* %30, i32 %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %5, align 4
  br label %110

35:                                               ; preds = %23
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_5__* %42, i32 %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %110

47:                                               ; preds = %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @av_malloc(i32 %50)
  %52 = load i32**, i32*** %9, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 @av_log(%struct.TYPE_5__* %57, i32 %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @AVERROR(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %110

62:                                               ; preds = %47
  %63 = load i32**, i32*** %9, align 8
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 63
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AV_WB16(i32* %97, i32 %100)
  %102 = load i32*, i32** %11, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 8
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32* %103, i32* %105, i32 %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %62, %56, %41, %29
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AV_WB16(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
