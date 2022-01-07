; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_ff_mov_add_hinted_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_ff_mov_add_hinted_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32* }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RTP_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mov_add_hinted_packet(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %14, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %30
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %15, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %33, align 8
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %21, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %36 = icmp ne %struct.TYPE_17__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOENT, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %136

40:                                               ; preds = %6
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %136

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @sample_queue_push(i32* %53, i32* %54, i32 %55, i32 %56)
  br label %69

58:                                               ; preds = %48
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @sample_queue_push(i32* %60, i32* %63, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %58, %51
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = call i32 @ff_write_chained(%struct.TYPE_17__* %70, i32 0, %struct.TYPE_16__* %71, %struct.TYPE_17__* %72, i32 0)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @avio_close_dyn_buf(i32* %76, i32** %17)
  store i32 %77, i32* %18, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* @RTP_MAX_PACKET_SIZE, align 4
  %81 = call i32 @ffio_open_dyn_packet_buf(i32** %79, i32 %80)
  store i32 %81, i32* %21, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %129

84:                                               ; preds = %69
  %85 = load i32, i32* %18, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %129

88:                                               ; preds = %84
  %89 = call i32 @avio_open_dyn_buf(i32** %19)
  store i32 %89, i32* %21, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %129

92:                                               ; preds = %88
  %93 = call i32 @av_init_packet(%struct.TYPE_16__* %20)
  %94 = load i32*, i32** %19, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %99 = call i32 @write_hint_packets(i32* %94, i32* %95, i32 %96, %struct.TYPE_14__* %97, i32* %98)
  store i32 %99, i32* %22, align 4
  %100 = call i32 @av_freep(i32** %17)
  %101 = load i32*, i32** %19, align 8
  %102 = call i32 @avio_close_dyn_buf(i32* %101, i32** %17)
  store i32 %102, i32* %18, align 4
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i32 %102, i32* %103, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  store i32* %104, i32** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 4
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %92
  %118 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %92
  %123 = load i32, i32* %22, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = call i32 @ff_mov_write_packet(%struct.TYPE_17__* %126, %struct.TYPE_16__* %20)
  br label %128

128:                                              ; preds = %125, %122
  br label %129

129:                                              ; preds = %128, %91, %87, %83
  %130 = load i32*, i32** %17, align 8
  %131 = call i32 @av_free(i32* %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = call i32 @sample_queue_retain(i32* %133)
  %135 = load i32, i32* %21, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %129, %45, %37
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @sample_queue_push(i32*, i32*, i32, i32) #1

declare dso_local i32 @ff_write_chained(%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @ffio_open_dyn_packet_buf(i32**, i32) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_16__*) #1

declare dso_local i32 @write_hint_packets(i32*, i32*, i32, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @ff_mov_write_packet(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @sample_queue_retain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
