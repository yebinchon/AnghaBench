; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_mpeg_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64, i32, i32*, i32, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32 }

@SEQ_END_CODE = common dso_local global i64 0, align 8
@AV_CODEC_FLAG_TRUNCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"VCR2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BW10\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"picture in extradata\0A\00", align 1
@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@AV_FRAME_DATA_GOP_TIMECODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, %struct.TYPE_18__*)* @mpeg_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_decode_frame(%struct.TYPE_20__* %0, i8* %1, i32* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %13, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %14, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %15, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %70

37:                                               ; preds = %34
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @AV_RB32(i32* %38)
  %40 = load i64, i64* @SEQ_END_CODE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %37, %4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 6
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = icmp ne %struct.TYPE_14__* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @av_frame_ref(i32* %53, i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %5, align 4
  br label %214

64:                                               ; preds = %52
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %66, align 8
  %67 = load i32*, i32** %8, align 8
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %64, %47, %42
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %214

70:                                               ; preds = %37, %34
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_CODEC_FLAG_TRUNCATED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @ff_mpeg1_find_frame_end(i32* %81, i32* %82, i32 %83, i32* null)
  store i32 %84, i32* %17, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load i32, i32* %17, align 4
  %88 = call i64 @ff_combine_frame(i32* %86, i32 %87, i32** %10, i32* %12)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %214

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @avpriv_toupper4(i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110, %104
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %118 = call i32 @vcr2_init_sequence(%struct.TYPE_20__* %117)
  br label %119

119:                                              ; preds = %116, %110, %93
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %169

126:                                              ; preds = %119
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %169, label %131

131:                                              ; preds = %126
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @decode_chunks(%struct.TYPE_20__* %132, i32* %133, i32* %134, i32* %137, i32 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %131
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %147 = load i32, i32* @AV_LOG_ERROR, align 4
  %148 = call i32 @av_log(%struct.TYPE_20__* %146, i32 %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32*, i32** %14, align 8
  %150 = call i32 @av_frame_unref(i32* %149)
  %151 = load i32*, i32** %8, align 8
  store i32 0, i32* %151, align 4
  br label %152

152:                                              ; preds = %145, %131
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 8
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AV_EF_EXPLODE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 3
  store i32* null, i32** %166, align 8
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %5, align 4
  br label %214

168:                                              ; preds = %157, %152
  br label %169

169:                                              ; preds = %168, %126, %119
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @decode_chunks(%struct.TYPE_20__* %170, i32* %171, i32* %172, i32* %173, i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %169
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %178, %169
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  store i32* null, i32** %184, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, -1
  br i1 %188, label %189, label %211

189:                                              ; preds = %182
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load i32*, i32** %14, align 8
  %195 = load i32, i32* @AV_FRAME_DATA_GOP_TIMECODE, align 4
  %196 = call %struct.TYPE_19__* @av_frame_new_side_data(i32* %194, i32 %195, i32 4)
  store %struct.TYPE_19__* %196, %struct.TYPE_19__** %18, align 8
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %198 = icmp ne %struct.TYPE_19__* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %193
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = call i32 @AVERROR(i32 %200)
  store i32 %201, i32* %5, align 4
  br label %214

202:                                              ; preds = %193
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 2
  %208 = call i32 @memcpy(i32 %205, i32* %207, i32 4)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  store i32 -1, i32* %210, align 8
  br label %211

211:                                              ; preds = %202, %189, %182
  br label %212

212:                                              ; preds = %211, %178
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %199, %164, %90, %68, %62
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i64 @AV_RB32(i32*) #1

declare dso_local i32 @av_frame_ref(i32*, i32) #1

declare dso_local i32 @ff_mpeg1_find_frame_end(i32*, i32*, i32, i32*) #1

declare dso_local i64 @ff_combine_frame(i32*, i32, i32**, i32*) #1

declare dso_local i64 @avpriv_toupper4(i32) #1

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @vcr2_init_sequence(%struct.TYPE_20__*) #1

declare dso_local i32 @decode_chunks(%struct.TYPE_20__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @av_frame_unref(i32*) #1

declare dso_local %struct.TYPE_19__* @av_frame_new_side_data(i32*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
