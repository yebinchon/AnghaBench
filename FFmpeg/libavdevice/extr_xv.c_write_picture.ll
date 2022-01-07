; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_write_picture.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xv.c_write_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }

@ClientMessage = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Window close event.\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32**, i32*)* @write_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_picture(%struct.TYPE_16__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca [3 x i32*], align 16
  %11 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  %18 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  store i32* %28, i32** %18, align 8
  %29 = getelementptr inbounds i32*, i32** %18, i64 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  store i32* %39, i32** %29, align 8
  %40 = getelementptr inbounds i32*, i32** %29, i64 1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  store i32* %50, i32** %40, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %90, label %55

55:                                               ; preds = %3
  br label %56

56:                                               ; preds = %88, %55
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @XPending(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @XNextEvent(i32 %65, %struct.TYPE_15__* %11)
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ClientMessage, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = load i32, i32* @AV_LOG_DEBUG, align 4
  %85 = call i32 @av_log(%struct.TYPE_14__* %83, i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EPIPE, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %4, align 4
  br label %109

88:                                               ; preds = %71, %62
  br label %56

89:                                               ; preds = %56
  br label %90

90:                                               ; preds = %89, %3
  %91 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32**, i32*** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @av_image_copy(i32** %91, i32 %94, i32** %95, i32* %96, i32 %99, i32 %102, i32 %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = call i32 @xv_repaint(%struct.TYPE_16__* %107)
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %90, %82
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @XPending(i32) #1

declare dso_local i32 @XNextEvent(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_copy(i32**, i32, i32**, i32*, i32, i32, i32) #1

declare dso_local i32 @xv_repaint(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
