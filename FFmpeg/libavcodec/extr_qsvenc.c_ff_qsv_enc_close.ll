; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_ff_qsv_enc_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsvenc.c_ff_qsv_enc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, %struct.TYPE_12__, i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsv_enc_close(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 7
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @MFXVideoENCODE_Close(i32* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 6
  %23 = call i32 @ff_qsv_close_internal_session(i32* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = call i32 @av_buffer_unref(i32* %26)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = call i32 @av_buffer_unref(i32* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %5, align 8
  br label %35

35:                                               ; preds = %38, %18
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = call i32 @av_frame_free(i32* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @av_free(i32 %50)
  %52 = call i32 @av_freep(%struct.TYPE_14__** %5)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %5, align 8
  br label %35

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %70, %56
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @av_fifo_size(i32* %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  br i1 %69, label %70, label %86

70:                                               ; preds = %68
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @av_fifo_generic_read(i32* %73, %struct.TYPE_14__** %6, i32 8, i32* null)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @av_fifo_generic_read(i32* %77, %struct.TYPE_14__** %7, i32 8, i32* null)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @av_fifo_generic_read(i32* %81, %struct.TYPE_14__** %8, i32 8, i32* null)
  %83 = call i32 @av_freep(%struct.TYPE_14__** %7)
  %84 = call i32 @av_freep(%struct.TYPE_14__** %8)
  %85 = call i32 @av_packet_unref(%struct.TYPE_14__** %6)
  br label %57

86:                                               ; preds = %68
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @av_fifo_free(i32* %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = call i32 @av_freep(%struct.TYPE_14__** %94)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  %98 = call i32 @av_buffer_unref(i32* %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = call i32 @av_freep(%struct.TYPE_14__** %100)
  ret i32 0
}

declare dso_local i32 @MFXVideoENCODE_Close(i32*) #1

declare dso_local i32 @ff_qsv_close_internal_session(i32*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @av_free(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i64 @av_fifo_size(i32*) #1

declare dso_local i32 @av_fifo_generic_read(i32*, %struct.TYPE_14__**, i32, i32*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_14__**) #1

declare dso_local i32 @av_fifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
