; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_update_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparsevorbis.c_vorbis_update_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.ogg* }
%struct.TYPE_6__ = type { i64 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @vorbis_update_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vorbis_update_metadata(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.ogg_stream*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load %struct.ogg*, %struct.ogg** %11, align 8
  store %struct.ogg* %12, %struct.ogg** %6, align 8
  %13 = load %struct.ogg*, %struct.ogg** %6, align 8
  %14 = getelementptr inbounds %struct.ogg, %struct.ogg* %13, i32 0, i32 0
  %15 = load %struct.ogg_stream*, %struct.ogg_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %15, i64 %17
  store %struct.ogg_stream* %18, %struct.ogg_stream** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %27 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @av_dict_free(i64* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %38 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %41 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = add nsw i64 %43, 7
  %45 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %46 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 8
  %49 = call i32 @ff_vorbis_stream_comment(%struct.TYPE_7__* %35, %struct.TYPE_6__* %36, i64 %44, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %79

54:                                               ; preds = %31
  %55 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %56 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %55, i32 0, i32 2
  %57 = call i32 @av_freep(i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %67 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %66, i32 0, i32 1
  %68 = call i32 @av_packet_pack_dictionary(i64 %65, i64* %67)
  %69 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %70 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  br label %77

71:                                               ; preds = %54
  %72 = call i32 @av_malloc(i32 1)
  %73 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %74 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ogg_stream*, %struct.ogg_stream** %7, align 8
  %76 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %62
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %52, %30
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @av_dict_free(i64*) #1

declare dso_local i32 @ff_vorbis_stream_comment(%struct.TYPE_7__*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_packet_pack_dictionary(i64, i64*) #1

declare dso_local i32 @av_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
