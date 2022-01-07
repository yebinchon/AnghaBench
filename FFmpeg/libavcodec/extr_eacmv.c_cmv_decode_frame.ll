; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eacmv.c_cmv_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_eacmv.c_cmv_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32* }

@EA_PREAMBLE_SIZE = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@MVIh_TAG = common dso_local global i64 0, align 8
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32*, %struct.TYPE_16__*)* @cmv_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmv_decode_frame(%struct.TYPE_18__* %0, i8* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %12, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %13, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %14, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %178

43:                                               ; preds = %4
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @AV_RL32(i32* %44)
  %46 = load i64, i64* @MVIh_TAG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  %50 = call i64 @AV_RB32(i32* %49)
  %51 = load i64, i64* @MVIh_TAG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %89

53:                                               ; preds = %48, %43
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  %56 = call i64 @AV_RL32(i32* %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @cmv_process_header(%struct.TYPE_15__* %58, i32* %62, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  br label %178

69:                                               ; preds = %53
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %77, %79
  %81 = icmp sgt i64 %71, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %5, align 4
  br label %178

84:                                               ; preds = %69
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %10, align 8
  br label %89

89:                                               ; preds = %84, %48
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @av_image_check_size(i32 %92, i32 %95, i32 0, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %5, align 4
  br label %178

103:                                              ; preds = %89
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %106 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %107 = call i32 @ff_get_buffer(%struct.TYPE_18__* %104, %struct.TYPE_17__* %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %5, align 4
  br label %178

111:                                              ; preds = %103
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AVPALETTE_SIZE, align 4
  %121 = call i32 @memcpy(i32 %116, i32 %119, i32 %120)
  %122 = load i32, i32* @EA_PREAMBLE_SIZE, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %111
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @cmv_decode_inter(%struct.TYPE_15__* %132, %struct.TYPE_17__* %133, i32* %135, i32* %136)
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  br label %155

143:                                              ; preds = %111
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @cmv_decode_intra(%struct.TYPE_15__* %149, %struct.TYPE_17__* %150, i32* %152, i32* %153)
  br label %155

155:                                              ; preds = %143, %131
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @av_frame_unref(i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @av_frame_move_ref(i32 %162, i32 %165)
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %171 = call i32 @av_frame_ref(i32 %169, %struct.TYPE_17__* %170)
  store i32 %171, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %155
  %174 = load i32, i32* %15, align 4
  store i32 %174, i32* %5, align 4
  br label %178

175:                                              ; preds = %155
  %176 = load i32*, i32** %8, align 8
  store i32 1, i32* %176, align 4
  %177 = load i32, i32* %11, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %175, %173, %109, %101, %82, %67, %41
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i64 @AV_RL32(i32*) #1

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @cmv_process_header(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @av_image_check_size(i32, i32, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cmv_decode_inter(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @cmv_decode_intra(%struct.TYPE_15__*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @av_frame_unref(i32) #1

declare dso_local i32 @av_frame_move_ref(i32, i32) #1

declare dso_local i32 @av_frame_ref(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
