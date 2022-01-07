; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decodeFrame.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decavcodec.c_decodeFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i64, i32* }
%struct.TYPE_20__ = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64 }

@global_verbosity_level = common dso_local global i32 0, align 4
@AV_LOG_QUIET = common dso_local global i32 0, align 4
@HB_FRAME_MASK_KEY = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AV_PKT_FLAG_DISCARD = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @decodeFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodeFrame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @global_verbosity_level, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = call i32 (...) @av_log_get_level()
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @AV_LOG_QUIET, align 4
  %18 = call i32 @av_log_set_level(i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @av_init_packet(%struct.TYPE_20__* %9)
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = icmp ne %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %90

23:                                               ; preds = %19
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32* %26, i32** %27, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  %40 = call %struct.TYPE_17__* @malloc(i32 24)
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %10, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = icmp ne %struct.TYPE_17__* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %23
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = sext i32 %46 to i64
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = call i32 @reordered_hash_add(%struct.TYPE_19__* %66, %struct.TYPE_17__* %67)
  br label %69

69:                                               ; preds = %43, %23
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HB_FRAME_MASK_KEY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AV_PKT_FLAG_DISCARD, align 4
  %86 = mul nsw i32 %84, %85
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %93

90:                                               ; preds = %19
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %81
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = icmp ne %struct.TYPE_21__* %96, null
  br i1 %97, label %98, label %120

98:                                               ; preds = %93
  %99 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %100 = load i32, i32* @AVPALETTE_SIZE, align 4
  %101 = call i32* @av_packet_new_side_data(%struct.TYPE_20__* %9, i32 %99, i32 %100)
  store i32* %101, i32** %11, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AVPALETTE_SIZE, align 4
  %108 = call i32 @MIN(i32 %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @memcpy(i32* %109, i32 %114, i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 3
  %119 = call i32 @hb_buffer_close(%struct.TYPE_21__** %118)
  br label %120

120:                                              ; preds = %98, %93
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @avcodec_send_packet(i32 %123, %struct.TYPE_20__* %9)
  store i32 %124, i32* %8, align 4
  %125 = call i32 @av_packet_unref(%struct.TYPE_20__* %9)
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @AVERROR_EOF, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  store i32 0, i32* %3, align 4
  br label %182

137:                                              ; preds = %128, %120
  br label %138

138:                                              ; preds = %171, %137
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @avcodec_receive_frame(i32 %141, i32 %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @EAGAIN, align 4
  %151 = call i32 @AVERROR(i32 %150)
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @AVERROR_EOF, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %157, %153, %148, %138
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %174

166:                                              ; preds = %162
  store i32 1, i32* %6, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %168 = call i32 @compute_frame_duration(%struct.TYPE_19__* %167)
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %170 = call i32 @filter_video(%struct.TYPE_19__* %169)
  br label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %8, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %138, label %174

174:                                              ; preds = %171, %165
  %175 = load i32, i32* @global_verbosity_level, align 4
  %176 = icmp sle i32 %175, 1
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @av_log_set_level(i32 %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %132
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @av_log_get_level(...) #1

declare dso_local i32 @av_log_set_level(i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_17__* @malloc(i32) #1

declare dso_local i32 @reordered_hash_add(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_21__**) #1

declare dso_local i32 @avcodec_send_packet(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_20__*) #1

declare dso_local i32 @avcodec_receive_frame(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @compute_frame_duration(%struct.TYPE_19__*) #1

declare dso_local i32 @filter_video(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
