; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_frames_get_constraints.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_hwcontext_d3d11va.c_d3d11va_frames_get_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i8**, i8** }

@supported_formats = common dso_local global %struct.TYPE_11__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@D3D11_FORMAT_SUPPORT_TEXTURE2D = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i8* null, align 8
@AV_PIX_FMT_D3D11 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, %struct.TYPE_8__*)* @d3d11va_frames_get_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11va_frames_get_constraints(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @supported_formats, align 8
  %17 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %16)
  %18 = add nsw i32 %17, 1
  %19 = call i8* @av_malloc_array(i32 %18, i32 8)
  %20 = bitcast i8* %19 to i8**
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i8** %20, i8*** %22, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %70, %30
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** @supported_formats, align 8
  %34 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @supported_formats, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ID3D11Device_CheckFormatSupport(i32 %39, i32 %45, i32* %12)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @SUCCEEDED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %36
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @D3D11_FORMAT_SUPPORT_TEXTURE2D, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @supported_formats, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %61, i8** %68, align 8
  br label %69

69:                                               ; preds = %55, %50, %36
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %31

73:                                               ; preds = %31
  %74 = load i8*, i8** @AV_PIX_FMT_NONE, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  store i8* %74, i8** %80, align 8
  %81 = call i8* @av_malloc_array(i32 2, i32 8)
  %82 = bitcast i8* %81 to i8**
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i8** %82, i8*** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %103

92:                                               ; preds = %73
  %93 = load i8*, i8** @AV_PIX_FMT_D3D11, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** @AV_PIX_FMT_NONE, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  store i8* %98, i8** %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %89, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ID3D11Device_CheckFormatSupport(i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
