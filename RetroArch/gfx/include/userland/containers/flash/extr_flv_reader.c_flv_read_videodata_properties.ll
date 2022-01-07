; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_videodata_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_read_videodata_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__*, i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@VC_CONTAINER_CODEC_VP6 = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_H264 = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32)* @flv_read_videodata_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flv_read_videodata_properties(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VC_CONTAINER_CODEC_VP6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @VC_FOURCC(i8 signext 118, i8 signext 112, i8 signext 54, i8 signext 97)
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %20, %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @_READ_U8(i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @_SKIP_U16(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @_READ_U8(i32* %33)
  %35 = mul nsw i32 %34, 16
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @_READ_U8(i32* %36)
  %38 = mul nsw i32 %37, 16
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = ashr i32 %39, 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 15
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %100

47:                                               ; preds = %20
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VC_CONTAINER_CODEC_H264, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %47
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @_READ_U8(i32* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = icmp sle i32 %63, 8
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %55
  %66 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %66, i32* %4, align 4
  br label %119

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @_SKIP_U24(i32* %68)
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 3
  store i32 %71, i32* %7, align 4
  %72 = call i64 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 99, i8 signext 67)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 4
  store i64 %72, i64* %76, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @vc_container_track_allocate_extradata(i32* %77, %struct.TYPE_10__* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %67
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %119

86:                                               ; preds = %67
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @READ_BYTES(i32* %87, i32 %92, i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %86, %47
  br label %100

100:                                              ; preds = %99, %28
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 %109, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @STREAM_STATUS(i32* %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %100, %84, %65
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @_READ_U8(i32*) #1

declare dso_local i32 @_SKIP_U16(i32*) #1

declare dso_local i32 @_SKIP_U24(i32*) #1

declare dso_local i32 @vc_container_track_allocate_extradata(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @READ_BYTES(i32*, i32, i32) #1

declare dso_local i32 @STREAM_STATUS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
