; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_handle_missing_index_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_handle_missing_index_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_14__** }
%struct.TYPE_18__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i32, i32, i64, i32, i64, i64 }

@ClipWrapped = common dso_local global i64 0, align 8
@IndexTableSegment = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"guessing index for stream %d using edit unit byte count %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @mxf_handle_missing_index_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_handle_missing_index_segment(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ClipWrapped, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store i32 0, i32* %3, align 4
  br label %234

26:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %64, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %36, i64 %38
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IndexTableSegment, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %48, i64 %50
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = bitcast %struct.TYPE_14__* %52 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %13, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %234

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %27

67:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %97, %67
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %97

88:                                               ; preds = %74
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i64 %93
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %88, %87
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %68

100:                                              ; preds = %68
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %234

104:                                              ; preds = %100
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %104
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @is_pcm(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @av_get_bits_per_sample(i32 %125)
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %126, %131
  %133 = ashr i32 %132, 3
  store i32 %133, i32* %10, align 4
  br label %165

134:                                              ; preds = %112, %104
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %134
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %139
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = srem i32 %149, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sdiv i32 %159, %162
  store i32 %163, i32* %10, align 4
  br label %164

164:                                              ; preds = %155, %145, %139, %134
  br label %165

165:                                              ; preds = %164, %120
  %166 = load i32, i32* %10, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 0, i32* %3, align 4
  br label %234

169:                                              ; preds = %165
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @AV_LOG_WARNING, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @av_log(i32 %172, i32 %173, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %176, i32 %177)
  %179 = call %struct.TYPE_19__* @av_mallocz(i32 48)
  store %struct.TYPE_19__* %179, %struct.TYPE_19__** %7, align 8
  %180 = icmp ne %struct.TYPE_19__* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %169
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = call i32 @AVERROR(i32 %182)
  store i32 %183, i32* %3, align 4
  br label %234

184:                                              ; preds = %169
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %187 = call i32 @mxf_add_metadata_set(%struct.TYPE_20__* %185, %struct.TYPE_19__* %186)
  store i32 %187, i32* %12, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = bitcast %struct.TYPE_19__** %7 to i32**
  %191 = call i32 @mxf_free_metadataset(i32** %190, i32 1)
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %3, align 4
  br label %234

193:                                              ; preds = %184
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %204, label %198

198:                                              ; preds = %193
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %198, %193
  %205 = load i64, i64* @IndexTableSegment, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 6
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 5
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @av_inv_q(i32 %220)
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 3
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  store i32 0, i32* %3, align 4
  br label %234

234:                                              ; preds = %204, %189, %181, %168, %103, %61, %25
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @is_pcm(i32) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mxf_add_metadata_set(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @mxf_free_metadataset(i32**, i32) #1

declare dso_local i32 @av_inv_q(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
