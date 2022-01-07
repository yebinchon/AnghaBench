; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggdec.c_ogg_read_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.ogg* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ogg = type { i32, %struct.ogg_stream* }
%struct.ogg_stream = type { i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, i32)* @ogg_read_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ogg_read_seek(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ogg*, align 8
  %10 = alloca %struct.ogg_stream*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.ogg*, %struct.ogg** %13, align 8
  store %struct.ogg* %14, %struct.ogg** %9, align 8
  %15 = load %struct.ogg*, %struct.ogg** %9, align 8
  %16 = getelementptr inbounds %struct.ogg, %struct.ogg* %15, i32 0, i32 1
  %17 = load %struct.ogg_stream*, %struct.ogg_stream** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %17, i64 %19
  store %struct.ogg_stream* %20, %struct.ogg_stream** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.ogg*, %struct.ogg** %9, align 8
  %23 = getelementptr inbounds %struct.ogg, %struct.ogg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert0(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i32 @ogg_reset(%struct.TYPE_9__* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.ogg_stream*, %struct.ogg_stream** %10, align 8
  %50 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43, %4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ff_seek_frame_binary(%struct.TYPE_9__* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = call i32 @ogg_reset(%struct.TYPE_9__* %57)
  %59 = load %struct.ogg*, %struct.ogg** %9, align 8
  %60 = getelementptr inbounds %struct.ogg, %struct.ogg* %59, i32 0, i32 1
  %61 = load %struct.ogg_stream*, %struct.ogg_stream** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %61, i64 %63
  store %struct.ogg_stream* %64, %struct.ogg_stream** %10, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load %struct.ogg_stream*, %struct.ogg_stream** %10, align 8
  %69 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %51
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ogg_reset(%struct.TYPE_9__*) #1

declare dso_local i32 @ff_seek_frame_binary(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
