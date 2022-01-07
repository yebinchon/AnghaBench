; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i32* }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @gxf_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_write_trailer(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = call i32 @ff_audio_interleave_close(%struct.TYPE_9__* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @gxf_write_eos_packet(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @avio_tell(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @avio_seek(i32* %21, i32 0, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 @gxf_write_map_packet(%struct.TYPE_9__* %24, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %75

29:                                               ; preds = %1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = call i32 @gxf_write_flt_packet(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @gxf_write_umf_packet(%struct.TYPE_9__* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @avio_flush(i32* %34)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %61, %29
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SEEK_SET, align 4
  %52 = call i32 @avio_seek(i32* %43, i32 %50, i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @gxf_write_map_packet(%struct.TYPE_9__* %53, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %75

58:                                               ; preds = %42
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @avio_flush(i32* %59)
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %36

64:                                               ; preds = %36
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SEEK_SET, align 4
  %68 = call i32 @avio_seek(i32* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = call i32 @av_freep(i32** %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = call i32 @av_freep(i32** %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %64, %56, %27
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ff_audio_interleave_close(%struct.TYPE_9__*) #1

declare dso_local i32 @gxf_write_eos_packet(i32*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @gxf_write_map_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @gxf_write_flt_packet(%struct.TYPE_9__*) #1

declare dso_local i32 @gxf_write_umf_packet(%struct.TYPE_9__*) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
