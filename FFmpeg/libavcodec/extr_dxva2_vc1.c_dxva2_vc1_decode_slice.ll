; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vc1.c_dxva2_vc1_decode_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxva2_vc1.c_dxva2_vc1_decode_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.dxva2_picture_context* }
%struct.dxva2_picture_context = type { i64, i32, i32*, i32* }

@MAX_SLICES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"%d slices in dxva2\00", align 1
@AV_CODEC_ID_VC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @dxva2_vc1_decode_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxva2_vc1_decode_slice(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.dxva2_picture_context*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %20, align 8
  store %struct.dxva2_picture_context* %21, %struct.dxva2_picture_context** %10, align 8
  %22 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %23 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_SLICES, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %30 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @avpriv_request_sample(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 -1, i32* %4, align 4
  br label %88

33:                                               ; preds = %3
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_CODEC_ID_VC1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 4
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @AV_RB32(i32* %43)
  %45 = call i64 @IS_MARKER(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %42, %39, %33
  %53 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %54 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %60 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %64 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %69 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = ptrtoint i32* %67 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %78 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.dxva2_picture_context*, %struct.dxva2_picture_context** %10, align 8
  %81 = getelementptr inbounds %struct.dxva2_picture_context, %struct.dxva2_picture_context* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds i32, i32* %79, i64 %82
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @fill_slice(%struct.TYPE_11__* %76, i32* %84, i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %61, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_11__*, i8*, i64) #1

declare dso_local i64 @IS_MARKER(i32) #1

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @fill_slice(%struct.TYPE_11__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
