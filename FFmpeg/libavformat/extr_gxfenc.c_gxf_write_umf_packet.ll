; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_umf_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_umf_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32 }

@PKT_UMF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @gxf_write_umf_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_write_umf_packet(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i8* @avio_tell(i32* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @PKT_UMF, align 4
  %16 = call i32 @gxf_write_packet_header(i32* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @avio_w8(i32* %17, i32 3)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @avio_wb32(i32* %19, i8* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i8* @avio_tell(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @gxf_write_umf_payload(%struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = call i32 @gxf_write_umf_material_description(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = call i32 @gxf_write_umf_track_description(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @gxf_write_umf_media_description(%struct.TYPE_9__* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @avio_tell(i32* %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %41 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @updatePacketSize(i32* %51, i8* %52)
  ret i32 %53
}

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @gxf_write_packet_header(i32*, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i8*) #1

declare dso_local i32 @gxf_write_umf_payload(%struct.TYPE_9__*) #1

declare dso_local i32 @gxf_write_umf_material_description(%struct.TYPE_9__*) #1

declare dso_local i32 @gxf_write_umf_track_description(%struct.TYPE_9__*) #1

declare dso_local i32 @gxf_write_umf_media_description(%struct.TYPE_9__*) #1

declare dso_local i32 @updatePacketSize(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
