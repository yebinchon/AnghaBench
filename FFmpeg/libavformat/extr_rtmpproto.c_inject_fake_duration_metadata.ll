; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_inject_fake_duration_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_inject_fake_duration_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@FLV_TAG_TYPE_META = common dso_local global i32 0, align 4
@AMF_DATA_TYPE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@AMF_DATA_TYPE_MIXEDARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@AMF_DATA_TYPE_NUMBER = common dso_local global i32 0, align 4
@AMF_END_OF_OBJECT = common dso_local global i32 0, align 4
@RTMP_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @inject_fake_duration_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_fake_duration_metadata(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 55
  %13 = call i32* @av_malloc(i32 %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = icmp ne i32* %13, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @memcpy(i32* %26, i32* %27, i32 13)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 13
  %33 = getelementptr inbounds i32, i32* %32, i64 55
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 13
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 13
  %40 = call i32 @memcpy(i32* %33, i32* %35, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 55
  store i32 %44, i32* %42, align 8
  %45 = call i32 @av_freep(i32** %5)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 13
  store i32* %49, i32** %4, align 8
  %50 = load i32, i32* @FLV_TAG_TYPE_META, align 4
  %51 = call i32 @bytestream_put_byte(i32** %4, i32 %50)
  %52 = call i32 @bytestream_put_be24(i32** %4, i32 40)
  %53 = call i32 @bytestream_put_be24(i32** %4, i32 0)
  %54 = call i32 @bytestream_put_be32(i32** %4, i32 0)
  %55 = load i32, i32* @AMF_DATA_TYPE_STRING, align 4
  %56 = call i32 @bytestream_put_byte(i32** %4, i32 %55)
  %57 = call i32 @bytestream_put_be16(i32** %4, i32 10)
  %58 = call i32 @bytestream_put_buffer(i32** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %59 = load i32, i32* @AMF_DATA_TYPE_MIXEDARRAY, align 4
  %60 = call i32 @bytestream_put_byte(i32** %4, i32 %59)
  %61 = call i32 @bytestream_put_be32(i32** %4, i32 1)
  %62 = call i32 @bytestream_put_be16(i32** %4, i32 8)
  %63 = call i32 @bytestream_put_buffer(i32** %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %64 = load i32, i32* @AMF_DATA_TYPE_NUMBER, align 4
  %65 = call i32 @bytestream_put_byte(i32** %4, i32 %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @av_double2int(i32 %68)
  %70 = call i32 @bytestream_put_be64(i32** %4, i32 %69)
  %71 = call i32 @bytestream_put_be16(i32** %4, i32 0)
  %72 = load i32, i32* @AMF_END_OF_OBJECT, align 4
  %73 = call i32 @bytestream_put_byte(i32** %4, i32 %72)
  %74 = load i32, i32* @RTMP_HEADER, align 4
  %75 = add nsw i32 40, %74
  %76 = call i32 @bytestream_put_be32(i32** %4, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %23, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @bytestream_put_byte(i32**, i32) #1

declare dso_local i32 @bytestream_put_be24(i32**, i32) #1

declare dso_local i32 @bytestream_put_be32(i32**, i32) #1

declare dso_local i32 @bytestream_put_be16(i32**, i32) #1

declare dso_local i32 @bytestream_put_buffer(i32**, i8*, i32) #1

declare dso_local i32 @bytestream_put_be64(i32**, i32) #1

declare dso_local i32 @av_double2int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
