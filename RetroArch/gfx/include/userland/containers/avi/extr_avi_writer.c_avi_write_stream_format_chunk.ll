; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_format_chunk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_writer.c_avi_write_stream_format_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"Chunk ID\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Chunk Size\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_5__*, i32)* @avi_write_stream_format_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avi_write_stream_format_chunk(i32* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 116, i8 signext 114, float 1.020000e+02)
  %11 = call i32 @WRITE_FOURCC(i32* %9, i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @WRITE_U32(i32* %12, i32 %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @STREAM_STATUS(i32* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %4, align 8
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i64 @vc_container_write_bitmapinfoheader(i32* %30, %struct.TYPE_6__* %33)
  store i64 %34, i64* %8, align 8
  br label %50

35:                                               ; preds = %21
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i64 @vc_container_write_waveformatex(i32* %44, %struct.TYPE_6__* %47)
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %43, %35
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %4, align 8
  br label %61

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @AVI_END_CHUNK(i32* %57)
  %59 = load i32*, i32** %5, align 8
  %60 = call i64 @STREAM_STATUS(i32* %59)
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %56, %54, %19
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @WRITE_FOURCC(i32*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, float) #1

declare dso_local i32 @WRITE_U32(i32*, i32, i8*) #1

declare dso_local i64 @STREAM_STATUS(i32*) #1

declare dso_local i64 @vc_container_write_bitmapinfoheader(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @vc_container_write_waveformatex(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @AVI_END_CHUNK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
