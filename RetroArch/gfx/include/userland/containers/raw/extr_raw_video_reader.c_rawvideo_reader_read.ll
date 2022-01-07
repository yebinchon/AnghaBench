; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_rawvideo_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__**, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_TIME_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_21__*, i32)* @rawvideo_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rawvideo_reader_read(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %8, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  br label %225

24:                                               ; preds = %3
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = call i64 @read_yuv4mpeg2_frame_header(%struct.TYPE_20__* %40)
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %4, align 8
  br label %225

53:                                               ; preds = %39
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 2
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %34, %29, %24
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %97, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @INT64_C(i32 1000000)
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %69, i64 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %66, %78
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %82, i64 0
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %79, %91
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  br label %103

97:                                               ; preds = %56
  %98 = load i32, i32* @VC_CONTAINER_TIME_UNKNOWN, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %61
  %104 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %105 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %103
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sub i32 %127, %130
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 7
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @VC_CONTAINER_READ_FLAG_SKIP, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %119
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @SKIP_BYTES(%struct.TYPE_20__* %141, i32 %144)
  store i32 %145, i32* %9, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  store i32 0, i32* %147, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 2
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %155 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %154)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %4, align 8
  br label %225

161:                                              ; preds = %119
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @VC_CONTAINER_READ_FLAG_INFO, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %167, i64* %4, align 8
  br label %225

168:                                              ; preds = %161
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sub i32 %171, %174
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @MIN(i32 %175, i32 %178)
  store i32 %179, i32* %9, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @READ_BYTES(%struct.TYPE_20__* %180, i32 %183, i32 %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add i32 %189, %186
  store i32 %190, i32* %188, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %168
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  store i32 0, i32* %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 2
  store i32 0, i32* %205, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %201, %168
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %210
  %214 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  br label %218

215:                                              ; preds = %210
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %217 = call i64 @STREAM_STATUS(%struct.TYPE_20__* %216)
  br label %218

218:                                              ; preds = %215, %213
  %219 = phi i64 [ %214, %213 ], [ %217, %215 ]
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %4, align 8
  br label %225

225:                                              ; preds = %218, %166, %140, %49, %20
  %226 = load i64, i64* %4, align 8
  ret i64 %226
}

declare dso_local i64 @read_yuv4mpeg2_frame_header(%struct.TYPE_20__*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_20__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @READ_BYTES(%struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
