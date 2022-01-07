; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_free_playlist_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_free_playlist_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.playlist**, i32 }
%struct.playlist = type { %struct.TYPE_7__*, i64, i32, i64, i32, %struct.TYPE_5__, i32, %struct.playlist**, i32, i32, %struct.playlist**, %struct.playlist**, %struct.playlist** }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_5__ = type { %struct.playlist** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @free_playlist_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_playlist_list(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.playlist*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %79, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %82

11:                                               ; preds = %5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.playlist**, %struct.playlist*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.playlist*, %struct.playlist** %14, i64 %16
  %18 = load %struct.playlist*, %struct.playlist** %17, align 8
  store %struct.playlist* %18, %struct.playlist** %4, align 8
  %19 = load %struct.playlist*, %struct.playlist** %4, align 8
  %20 = call i32 @free_segment_list(%struct.playlist* %19)
  %21 = load %struct.playlist*, %struct.playlist** %4, align 8
  %22 = call i32 @free_init_section_list(%struct.playlist* %21)
  %23 = load %struct.playlist*, %struct.playlist** %4, align 8
  %24 = getelementptr inbounds %struct.playlist, %struct.playlist* %23, i32 0, i32 12
  %25 = call i32 @av_freep(%struct.playlist*** %24)
  %26 = load %struct.playlist*, %struct.playlist** %4, align 8
  %27 = getelementptr inbounds %struct.playlist, %struct.playlist* %26, i32 0, i32 11
  %28 = call i32 @av_freep(%struct.playlist*** %27)
  %29 = load %struct.playlist*, %struct.playlist** %4, align 8
  %30 = getelementptr inbounds %struct.playlist, %struct.playlist* %29, i32 0, i32 10
  %31 = call i32 @av_freep(%struct.playlist*** %30)
  %32 = load %struct.playlist*, %struct.playlist** %4, align 8
  %33 = getelementptr inbounds %struct.playlist, %struct.playlist* %32, i32 0, i32 9
  %34 = call i32 @av_dict_free(i32* %33)
  %35 = load %struct.playlist*, %struct.playlist** %4, align 8
  %36 = getelementptr inbounds %struct.playlist, %struct.playlist* %35, i32 0, i32 8
  %37 = call i32 @ff_id3v2_free_extra_meta(i32* %36)
  %38 = load %struct.playlist*, %struct.playlist** %4, align 8
  %39 = getelementptr inbounds %struct.playlist, %struct.playlist* %38, i32 0, i32 7
  %40 = call i32 @av_freep(%struct.playlist*** %39)
  %41 = load %struct.playlist*, %struct.playlist** %4, align 8
  %42 = getelementptr inbounds %struct.playlist, %struct.playlist* %41, i32 0, i32 6
  %43 = call i32 @av_packet_unref(i32* %42)
  %44 = load %struct.playlist*, %struct.playlist** %4, align 8
  %45 = getelementptr inbounds %struct.playlist, %struct.playlist* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @av_freep(%struct.playlist*** %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.playlist*, %struct.playlist** %4, align 8
  %52 = getelementptr inbounds %struct.playlist, %struct.playlist* %51, i32 0, i32 4
  %53 = call i32 @ff_format_io_close(i32 %50, i32* %52)
  %54 = load %struct.playlist*, %struct.playlist** %4, align 8
  %55 = getelementptr inbounds %struct.playlist, %struct.playlist* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.playlist*, %struct.playlist** %4, align 8
  %60 = getelementptr inbounds %struct.playlist, %struct.playlist* %59, i32 0, i32 2
  %61 = call i32 @ff_format_io_close(i32 %58, i32* %60)
  %62 = load %struct.playlist*, %struct.playlist** %4, align 8
  %63 = getelementptr inbounds %struct.playlist, %struct.playlist* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.playlist*, %struct.playlist** %4, align 8
  %65 = getelementptr inbounds %struct.playlist, %struct.playlist* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = icmp ne %struct.TYPE_7__* %66, null
  br i1 %67, label %68, label %76

68:                                               ; preds = %11
  %69 = load %struct.playlist*, %struct.playlist** %4, align 8
  %70 = getelementptr inbounds %struct.playlist, %struct.playlist* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load %struct.playlist*, %struct.playlist** %4, align 8
  %74 = getelementptr inbounds %struct.playlist, %struct.playlist* %73, i32 0, i32 0
  %75 = call i32 @avformat_close_input(%struct.TYPE_7__** %74)
  br label %76

76:                                               ; preds = %68, %11
  %77 = load %struct.playlist*, %struct.playlist** %4, align 8
  %78 = call i32 @av_free(%struct.playlist* %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %5

82:                                               ; preds = %5
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = call i32 @av_freep(%struct.playlist*** %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  ret void
}

declare dso_local i32 @free_segment_list(%struct.playlist*) #1

declare dso_local i32 @free_init_section_list(%struct.playlist*) #1

declare dso_local i32 @av_freep(%struct.playlist***) #1

declare dso_local i32 @av_dict_free(i32*) #1

declare dso_local i32 @ff_id3v2_free_extra_meta(i32*) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @ff_format_io_close(i32, i32*) #1

declare dso_local i32 @avformat_close_input(%struct.TYPE_7__**) #1

declare dso_local i32 @av_free(%struct.playlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
