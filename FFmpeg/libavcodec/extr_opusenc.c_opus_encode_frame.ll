; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_opus_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc.c_opus_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_21__, %struct.TYPE_24__, i32*, %struct.TYPE_22__*, i32, %struct.TYPE_23__, %struct.TYPE_25__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_SKIP_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*)* @opus_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_encode_frame(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @ff_af_queue_add(%struct.TYPE_24__* %26, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %228

32:                                               ; preds = %24
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 5
  %36 = load i32*, i32** %8, align 8
  %37 = call i32* @av_frame_clone(i32* %36)
  %38 = call i32 @ff_bufqueue_add(%struct.TYPE_28__* %33, %struct.TYPE_23__* %35, i32* %37)
  br label %55

39:                                               ; preds = %4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 4
  %42 = call i32 @ff_opus_psy_signal_eof(i32* %41)
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %39
  store i32 0, i32* %5, align 4
  br label %228

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = call i64 @ff_opus_psy_process(i32* %57, %struct.TYPE_21__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %228

63:                                               ; preds = %55
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OPUS_BLOCK_SIZE(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %112, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %76, %81
  %83 = mul nsw i32 %75, %82
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %83, %87
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %108, %71
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %96 = call i32* @spawn_empty_frame(%struct.TYPE_26__* %95)
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %5, align 4
  br label %228

102:                                              ; preds = %94
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 5
  %106 = load i32*, i32** %16, align 8
  %107 = call i32 @ff_bufqueue_add(%struct.TYPE_28__* %103, %struct.TYPE_23__* %105, i32* %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %90

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111, %63
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %147, %112
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %113
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %129, align 8
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i64 %132
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @celt_encode_frame(%struct.TYPE_26__* %121, i32* %127, %struct.TYPE_22__* %133, i32 %134)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 3
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %17, align 4
  br label %113

150:                                              ; preds = %113
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 2
  %156 = add nsw i32 2, %155
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %13, align 4
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @ff_alloc_packet2(%struct.TYPE_28__* %159, %struct.TYPE_27__* %160, i32 %161, i32 0)
  store i32 %162, i32* %11, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %150
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %5, align 4
  br label %228

166:                                              ; preds = %150
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %169 = call i32 @opus_packet_assembler(%struct.TYPE_26__* %167, %struct.TYPE_27__* %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 4
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %173, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @ff_opus_psy_postencode_update(i32* %171, %struct.TYPE_22__* %174, i32* %177)
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  %191 = call i32 @ff_af_queue_remove(%struct.TYPE_24__* %180, i32 %186, i32* %188, i32* %190)
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %197, %200
  br i1 %201, label %202, label %226

202:                                              ; preds = %166
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %204 = load i32, i32* @AV_PKT_DATA_SKIP_SAMPLES, align 4
  %205 = call i32* @av_packet_new_side_data(%struct.TYPE_27__* %203, i32 %204, i32 10)
  store i32* %205, i32** %18, align 8
  %206 = load i32*, i32** %18, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = call i32 @AVERROR(i32 %209)
  store i32 %210, i32* %5, align 4
  br label %228

211:                                              ; preds = %202
  %212 = load i32*, i32** %18, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 4
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %219, %222
  %224 = add nsw i32 %223, 120
  %225 = call i32 @AV_WL32(i32* %213, i32 %224)
  br label %226

226:                                              ; preds = %211, %166
  %227 = load i32*, i32** %9, align 8
  store i32 1, i32* %227, align 4
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %226, %208, %164, %99, %62, %53, %30
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local i32 @ff_af_queue_add(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ff_bufqueue_add(%struct.TYPE_28__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32* @av_frame_clone(i32*) #1

declare dso_local i32 @ff_opus_psy_signal_eof(i32*) #1

declare dso_local i64 @ff_opus_psy_process(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @OPUS_BLOCK_SIZE(i32) #1

declare dso_local i32* @spawn_empty_frame(%struct.TYPE_26__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @celt_encode_frame(%struct.TYPE_26__*, i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_28__*, %struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @opus_packet_assembler(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ff_opus_psy_postencode_update(i32*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @ff_af_queue_remove(%struct.TYPE_24__*, i32, i32*, i32*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
