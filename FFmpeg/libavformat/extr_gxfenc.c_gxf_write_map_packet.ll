; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_map_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_map_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not realloc map offsets\0A\00", align 1
@PKT_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @gxf_write_map_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_write_map_packet(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @avio_tell(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = srem i32 %23, 30
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 30
  %33 = call i32 @av_reallocp_array(i32** %28, i32 %32, i32 4)
  store i32 %33, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 @av_log(%struct.TYPE_8__* %38, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %69

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  store i32 %44, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %2
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @PKT_MAP, align 4
  %57 = call i32 @gxf_write_packet_header(i32* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @avio_w8(i32* %58, i32 224)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @avio_w8(i32* %60, i32 255)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = call i32 @gxf_write_material_data_section(%struct.TYPE_8__* %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i32 @gxf_write_track_description_section(%struct.TYPE_8__* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @updatePacketSize(i32* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %54, %35
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_reallocp_array(i32**, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @gxf_write_packet_header(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @gxf_write_material_data_section(%struct.TYPE_8__*) #1

declare dso_local i32 @gxf_write_track_description_section(%struct.TYPE_8__*) #1

declare dso_local i32 @updatePacketSize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
