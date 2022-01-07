; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodecdec.c_mediacodec_receive_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mediacodecdec.c_mediacodec_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_21__*, %struct.TYPE_19__, i64, i64 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"could not send entire packet in single input buffer (%d < %d)\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @mediacodec_receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mediacodec_receive_frame(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %6, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = call i64 @ff_mediacodec_dec_is_flushing(%struct.TYPE_20__* %18, %struct.TYPE_21__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = call i32 @ff_mediacodec_dec_flush(%struct.TYPE_20__* %25, %struct.TYPE_21__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %208

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %17, %2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ff_mediacodec_dec_receive(%struct.TYPE_20__* %36, %struct.TYPE_21__* %39, i32* %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EAGAIN, align 4
  %44 = call i32 @AVERROR(i32 %43)
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %208

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %153, %207
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %49
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ff_AMediaCodec_dequeueInputBuffer(i32 %61, i32 0)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @ff_mediacodec_dec_receive(%struct.TYPE_20__* %66, %struct.TYPE_21__* %69, i32* %70, i32 1)
  store i32 %71, i32* %3, align 4
  br label %208

72:                                               ; preds = %56
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %49
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %155

84:                                               ; preds = %78
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = call i32 @ff_mediacodec_dec_send(%struct.TYPE_20__* %85, %struct.TYPE_21__* %88, %struct.TYPE_19__* %90, i32 0)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %130

94:                                               ; preds = %84
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, %96
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sle i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %94
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = call i32 @av_packet_unref(%struct.TYPE_19__* %115)
  br label %129

117:                                              ; preds = %94
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %119 = load i32, i32* @AV_LOG_WARNING, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = call i32 @av_log(%struct.TYPE_20__* %118, i32 %119, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %127)
  br label %129

129:                                              ; preds = %117, %113
  br label %141

130:                                              ; preds = %84
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = call i32 @AVERROR(i32 %135)
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %208

140:                                              ; preds = %133, %130
  br label %141

141:                                              ; preds = %140, %129
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sle i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %154

153:                                              ; preds = %146, %141
  br label %49

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %78
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = call i32 @ff_decode_get_packet(%struct.TYPE_20__* %156, %struct.TYPE_19__* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @AVERROR_EOF, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %155
  %164 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %164, i8 0, i64 16, i1 false)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %167, align 8
  %169 = call i32 @ff_mediacodec_dec_send(%struct.TYPE_20__* %165, %struct.TYPE_21__* %168, %struct.TYPE_19__* %9, i32 1)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %3, align 4
  br label %208

174:                                              ; preds = %163
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @ff_mediacodec_dec_receive(%struct.TYPE_20__* %175, %struct.TYPE_21__* %178, i32* %179, i32 1)
  store i32 %180, i32* %3, align 4
  br label %208

181:                                              ; preds = %155
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @EAGAIN, align 4
  %184 = call i32 @AVERROR(i32 %183)
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %181
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %186
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @ff_mediacodec_dec_receive(%struct.TYPE_20__* %194, %struct.TYPE_21__* %197, i32* %198, i32 1)
  store i32 %199, i32* %3, align 4
  br label %208

200:                                              ; preds = %186, %181
  %201 = load i32, i32* %7, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %3, align 4
  br label %208

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %49

208:                                              ; preds = %203, %193, %174, %172, %138, %65, %46, %31
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i64 @ff_mediacodec_dec_is_flushing(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ff_mediacodec_dec_flush(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_mediacodec_dec_receive(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i32) #1

declare dso_local i64 @ff_AMediaCodec_dequeueInputBuffer(i32, i32) #1

declare dso_local i32 @ff_mediacodec_dec_send(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_19__*) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*, i32, i64) #1

declare dso_local i32 @ff_decode_get_packet(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
