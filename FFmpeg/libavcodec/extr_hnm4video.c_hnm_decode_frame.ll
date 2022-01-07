; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_hnm_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hnm4video.c_hnm_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"packet too small\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HNM4_CHUNK_ID_PL = common dso_local global i64 0, align 8
@HNM4_CHUNK_ID_IZ = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@HNM4_CHUNK_ID_IU = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid chunk id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i8*, i32*, %struct.TYPE_19__*)* @hnm_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnm_decode_frame(%struct.TYPE_21__* %0, i8* %1, i32* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %10, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %11, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = load i32, i32* @AV_LOG_ERROR, align 4
  %27 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %25, i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %5, align 4
  br label %226

29:                                               ; preds = %4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 4
  %34 = call i64 @AV_RL16(i64 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @HNM4_CHUNK_ID_PL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hnm_update_palette(%struct.TYPE_21__* %39, i64 %42, i32 %45)
  br label %222

47:                                               ; preds = %29
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @HNM4_CHUNK_ID_IZ, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %134

51:                                               ; preds = %47
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 12
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %57, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %60, i32* %5, align 4
  br label %226

61:                                               ; preds = %51
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %64 = call i32 @ff_get_buffer(%struct.TYPE_21__* %62, %struct.TYPE_20__* %63, i32 0)
  store i32 %64, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %226

68:                                               ; preds = %61
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 12
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 12
  %78 = call i32 @unpack_intraframe(%struct.TYPE_21__* %69, i64 %73, i32 %77)
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = call i32 @memcpy(i32 %81, i32 %84, i32 %91)
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 74
  br i1 %96, label %97, label %112

97:                                               ; preds = %68
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = call i32 @memcpy(i32 %100, i32 %103, i32 %110)
  br label %115

112:                                              ; preds = %68
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = call i32 @postprocess_current_frame(%struct.TYPE_21__* %113)
  br label %115

115:                                              ; preds = %112, %97
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %118 = call i32 @copy_processed_frame(%struct.TYPE_21__* %116, %struct.TYPE_20__* %117)
  %119 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32 %128, i32 %131, i32 1024)
  %133 = load i32*, i32** %8, align 8
  store i32 1, i32* %133, align 4
  br label %221

134:                                              ; preds = %47
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* @HNM4_CHUNK_ID_IU, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %214

138:                                              ; preds = %134
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %141 = call i32 @ff_get_buffer(%struct.TYPE_21__* %139, %struct.TYPE_20__* %140, i32 0)
  store i32 %141, i32* %12, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %5, align 4
  br label %226

145:                                              ; preds = %138
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 74
  br i1 %149, label %150, label %175

150:                                              ; preds = %145
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %158, 8
  %160 = call i32 @decode_interframe_v4a(%struct.TYPE_21__* %151, i64 %155, i32 %159)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %169, %172
  %174 = call i32 @memcpy(i32 %163, i32 %166, i32 %173)
  br label %193

175:                                              ; preds = %145
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 8
  %185 = call i32 @decode_interframe_v4(%struct.TYPE_21__* %176, i64 %180, i32 %184)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i32, i32* %14, align 4
  store i32 %189, i32* %5, align 4
  br label %226

190:                                              ; preds = %175
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %192 = call i32 @postprocess_current_frame(%struct.TYPE_21__* %191)
  br label %193

193:                                              ; preds = %190, %150
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %196 = call i32 @copy_processed_frame(%struct.TYPE_21__* %194, %struct.TYPE_20__* %195)
  %197 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @memcpy(i32 %206, i32 %209, i32 1024)
  %211 = load i32*, i32** %8, align 8
  store i32 1, i32* %211, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %213 = call i32 @hnm_flip_buffers(%struct.TYPE_18__* %212)
  br label %220

214:                                              ; preds = %134
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %216 = load i32, i32* @AV_LOG_ERROR, align 4
  %217 = load i64, i64* %13, align 8
  %218 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @av_log(%struct.TYPE_21__* %215, i32 %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %217)
  %219 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %219, i32* %5, align 4
  br label %226

220:                                              ; preds = %193
  br label %221

221:                                              ; preds = %220, %115
  br label %222

222:                                              ; preds = %221, %38
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %222, %214, %188, %143, %66, %56, %24
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i64 @AV_RL16(i64) #1

declare dso_local i32 @hnm_update_palette(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @unpack_intraframe(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @postprocess_current_frame(%struct.TYPE_21__*) #1

declare dso_local i32 @copy_processed_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @decode_interframe_v4a(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @decode_interframe_v4(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @hnm_flip_buffers(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
