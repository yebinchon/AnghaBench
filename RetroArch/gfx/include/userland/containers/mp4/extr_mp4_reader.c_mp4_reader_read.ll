; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_reader_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_reader_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32*, i32, i32 }

@VC_CONTAINER_READ_FLAG_FORCE_TRACK = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VC_CONTAINER_PACKET_FLAG_FRAME_END = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@VC_CONTAINER_PACKET_FLAG_FRAME_START = common dso_local global i32 0, align 4
@VC_CONTAINER_READ_FLAG_SKIP = common dso_local global i64 0, align 8
@VC_CONTAINER_READ_FLAG_INFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_17__*, i64)* @mp4_reader_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_reader_read(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @VC_CONTAINER_READ_FLAG_FORCE_TRACK, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 -1, i32* %15, align 4
  br label %21

21:                                               ; preds = %62, %20
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %65

27:                                               ; preds = %21
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %29, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %30, i64 %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %8, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %62

45:                                               ; preds = %27
  %46 = load i32, i32* %15, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %62

56:                                               ; preds = %48, %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %15, align 4
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %56, %55, %44
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %11, align 8
  br label %21

65:                                               ; preds = %21
  br label %70

66:                                               ; preds = %3
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp uge i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* @VC_CONTAINER_ERROR_INVALID_ARGUMENT, align 8
  store i64 %77, i64* %4, align 8
  br label %217

78:                                               ; preds = %70
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %81, i64 %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %8, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %10, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %94 = call i64 @mp4_read_sample_header(%struct.TYPE_16__* %91, i64 %92, %struct.TYPE_18__* %93)
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %78
  %99 = load i64, i64* %9, align 8
  store i64 %99, i64* %4, align 8
  br label %217

100:                                              ; preds = %78
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = icmp ne %struct.TYPE_17__* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %107 = call i64 @mp4_read_sample_data(%struct.TYPE_16__* %104, i64 %105, %struct.TYPE_18__* %106, i32* null, i32* null)
  store i64 %107, i64* %4, align 8
  br label %217

108:                                              ; preds = %100
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_KEYFRAME, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %108
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_START, align 4
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sub i32 %154, %157
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load i64, i64* %7, align 8
  %162 = load i64, i64* @VC_CONTAINER_READ_FLAG_SKIP, align 8
  %163 = and i64 %161, %162
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %143
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %169 = call i64 @mp4_read_sample_data(%struct.TYPE_16__* %166, i64 %167, %struct.TYPE_18__* %168, i32* null, i32* null)
  store i64 %169, i64* %4, align 8
  br label %217

170:                                              ; preds = %143
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* @VC_CONTAINER_READ_FLAG_INFO, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %175, %170
  %181 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %181, i64* %4, align 8
  br label %217

182:                                              ; preds = %175
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  store i32* %186, i32** %14, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %13, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = load i64, i64* %12, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %193 = load i32*, i32** %14, align 8
  %194 = call i64 @mp4_read_sample_data(%struct.TYPE_16__* %190, i64 %191, %struct.TYPE_18__* %192, i32* %193, i32* %13)
  store i64 %194, i64* %9, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %183
  %199 = load i64, i64* %9, align 8
  store i64 %199, i64* %4, align 8
  br label %217

200:                                              ; preds = %183
  %201 = load i32, i32* %13, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %200
  %209 = load i32, i32* @VC_CONTAINER_PACKET_FLAG_FRAME_END, align 4
  %210 = xor i32 %209, -1
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %208, %200
  %216 = load i64, i64* %9, align 8
  store i64 %216, i64* %4, align 8
  br label %217

217:                                              ; preds = %215, %198, %180, %165, %103, %98, %76
  %218 = load i64, i64* %4, align 8
  ret i64 %218
}

declare dso_local i64 @mp4_read_sample_header(%struct.TYPE_16__*, i64, %struct.TYPE_18__*) #1

declare dso_local i64 @mp4_read_sample_data(%struct.TYPE_16__*, i64, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
