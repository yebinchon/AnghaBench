; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_get_format.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_qsvdec.c_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_QSV = common dso_local global i32 0, align 4
@MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"The QSV pixel format not offered in get_format()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_format(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %10

10:                                               ; preds = %81, %2
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %6, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_12__* @av_hwframe_ctx_alloc(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %20
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %7, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %8, align 8
  %46 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @FFALIGN(i32 %56, i32 32)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @FFALIGN(i32 %62, i32 32)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 32, i32* %67, align 4
  %68 = load i32, i32* @MFX_MEMTYPE_VIDEO_MEMORY_DECODER_TARGET, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @av_hwframe_ctx_init(%struct.TYPE_12__* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %36
  %78 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %78, i32* %3, align 4
  br label %88

79:                                               ; preds = %36
  %80 = load i32, i32* @AV_PIX_FMT_QSV, align 4
  store i32 %80, i32* %3, align 4
  br label %88

81:                                               ; preds = %15
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %5, align 8
  br label %10

84:                                               ; preds = %10
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 @fprintf(i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %79, %77, %34
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_12__* @av_hwframe_ctx_alloc(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_hwframe_ctx_init(%struct.TYPE_12__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
