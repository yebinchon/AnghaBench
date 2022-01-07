; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_set_reference_frames.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_set_reference_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__**, %struct.TYPE_16__**, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.vdpau_picture_context* }
%struct.vdpau_picture_context = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32 }

@PICT_TOP_FIELD = common dso_local global i32 0, align 4
@VDP_TRUE = common dso_local global i32 0, align 4
@VDP_FALSE = common dso_local global i32 0, align 4
@PICT_BOTTOM_FIELD = common dso_local global i32 0, align 4
@H264_RF_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @vdpau_h264_set_reference_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdpau_h264_set_reference_frames(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.vdpau_picture_context*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %3, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %21, align 8
  store %struct.vdpau_picture_context* %22, %struct.vdpau_picture_context** %4, align 8
  %23 = load %struct.vdpau_picture_context*, %struct.vdpau_picture_context** %4, align 8
  %24 = getelementptr inbounds %struct.vdpau_picture_context, %struct.vdpau_picture_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 0
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %187, %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %190

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %38, align 8
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %42, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi %struct.TYPE_16__** [ %39, %36 ], [ %43, %40 ]
  store %struct.TYPE_16__** %45, %struct.TYPE_16__*** %8, align 8
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = phi i32 [ 16, %48 ], [ %52, %49 ]
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %183, %53
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %186

59:                                               ; preds = %55
  %60 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %60, i64 %62
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %11, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67, %59
  br label %183

73:                                               ; preds = %67
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  br label %86

82:                                               ; preds = %73
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @ff_vdpau_get_surface_id(i32 %90)
  store i64 %91, i64* %13, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 0
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %12, align 8
  br label %96

96:                                               ; preds = %121, %86
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = icmp ne %struct.TYPE_14__* %97, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %124

121:                                              ; preds = %114, %106, %100
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 1
  store %struct.TYPE_14__* %123, %struct.TYPE_14__** %12, align 8
  br label %96

124:                                              ; preds = %120, %96
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %127 = icmp ne %struct.TYPE_14__* %125, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %124
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PICT_TOP_FIELD, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @VDP_TRUE, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @VDP_FALSE, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PICT_BOTTOM_FIELD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %139
  %152 = load i32, i32* @VDP_TRUE, align 4
  br label %155

153:                                              ; preds = %139
  %154 = load i32, i32* @VDP_FALSE, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %183

161:                                              ; preds = %124
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %167, align 8
  %169 = call i32 (%struct.TYPE_14__*, ...) bitcast (i32 (...)* @FF_ARRAY_ELEMS to i32 (%struct.TYPE_14__*, ...)*)(%struct.TYPE_14__* %168)
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %170
  %172 = icmp uge %struct.TYPE_14__* %162, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %161
  br label %183

174:                                              ; preds = %161
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @vdpau_h264_set_rf(%struct.TYPE_14__* %175, %struct.TYPE_16__* %176, i32 %179)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 1
  store %struct.TYPE_14__* %182, %struct.TYPE_14__** %7, align 8
  br label %183

183:                                              ; preds = %174, %173, %155, %72
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %55

186:                                              ; preds = %55
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %30

190:                                              ; preds = %30
  br label %191

191:                                              ; preds = %206, %190
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = call i32 (%struct.TYPE_14__*, ...) bitcast (i32 (...)* @FF_ARRAY_ELEMS to i32 (%struct.TYPE_14__*, ...)*)(%struct.TYPE_14__* %198)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 %200
  %202 = icmp ult %struct.TYPE_14__* %192, %201
  br i1 %202, label %203, label %209

203:                                              ; preds = %191
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %205 = call i32 @vdpau_h264_clear_rf(%struct.TYPE_14__* %204)
  br label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 1
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %7, align 8
  br label %191

209:                                              ; preds = %191
  ret void
}

declare dso_local i64 @ff_vdpau_get_surface_id(i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(...) #1

declare dso_local i32 @vdpau_h264_set_rf(%struct.TYPE_14__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @vdpau_h264_clear_rf(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
