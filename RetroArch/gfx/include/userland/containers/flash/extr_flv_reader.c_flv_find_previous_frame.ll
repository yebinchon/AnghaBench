; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_find_previous_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_find_previous_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__**, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@FLV_FLAG_DISCARD = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@FLV_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i32, i32*, i64*, i32*, i32, i32)* @flv_find_previous_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flv_find_previous_frame(%struct.TYPE_21__* %0, i32 %1, i32* %2, i64* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  store %struct.TYPE_22__* %29, %struct.TYPE_22__** %16, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %32, i64 %34
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %17, align 8
  %43 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %43, i64* %22, align 8
  br label %44

44:                                               ; preds = %156, %7
  %45 = load i64, i64* %22, align 8
  %46 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %169

48:                                               ; preds = %44
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %24, align 8
  %56 = load i64, i64* %24, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %24, align 8
  br label %65

65:                                               ; preds = %61, %48
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %67 = load i64, i64* %24, align 8
  %68 = call i64 @SEEK(%struct.TYPE_21__* %66, i64 %67)
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* %22, align 8
  store i64 %73, i64* %8, align 8
  br label %193

74:                                               ; preds = %65
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %76 = call i64 @flv_read_frame_header(%struct.TYPE_21__* %75, i32* %19, i32* %18, i32* %20, i64* %23, i32* %21, i32 0)
  store i64 %76, i64* %22, align 8
  %77 = load i64, i64* %22, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %169

80:                                               ; preds = %74
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @FLV_FLAG_DISCARD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %132

86:                                               ; preds = %80
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %132

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %91
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %97, i64 %99
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* @FLV_FLAG_KEYFRAME, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %132

114:                                              ; preds = %108, %94, %91
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i64 @flv_validate_frame_data(%struct.TYPE_21__* %115, i32 %116, i32* %20, i64* %23)
  %118 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %132

121:                                              ; preds = %114
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = load i64, i64* %24, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %127 = call i64 @STREAM_POSITION(%struct.TYPE_21__* %126)
  %128 = load i32, i32* %20, align 4
  %129 = load i64, i64* %23, align 8
  %130 = load i32, i32* %21, align 4
  %131 = call i32 @flv_update_track_position(%struct.TYPE_21__* %122, i32 %123, i64 %124, i32 %125, i64 %127, i32 %128, i64 %129, i32 %130)
  br label %169

132:                                              ; preds = %120, %113, %90, %85
  %133 = load i64, i64* %24, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sle i64 %133, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @flv_update_track_position(%struct.TYPE_21__* %139, i32 %140, i64 %143, i32 0, i64 %146, i32 0, i64 0, i32 0)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i64 @flv_find_next_frame(%struct.TYPE_21__* %148, i32 %149, i32* %150, i64* %151, i32* %152, i32 %153, i32 %154)
  store i64 %155, i64* %8, align 8
  br label %193

156:                                              ; preds = %132
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i64, i64* %24, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %162 = call i64 @STREAM_POSITION(%struct.TYPE_21__* %161)
  %163 = load i32, i32* %20, align 4
  %164 = load i64, i64* %23, align 8
  %165 = call i32 @flv_update_track_position(%struct.TYPE_21__* %157, i32 %158, i64 %159, i32 %160, i64 %162, i32 %163, i64 %164, i32 0)
  %166 = load i32, i32* %20, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %44

169:                                              ; preds = %121, %79, %44
  %170 = load i64, i64* %22, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %169
  %173 = load i32*, i32** %11, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %20, align 4
  %177 = load i32*, i32** %11, align 8
  store i32 %176, i32* %177, align 4
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i64*, i64** %12, align 8
  %180 = icmp ne i64* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i64, i64* %23, align 8
  %183 = load i64*, i64** %12, align 8
  store i64 %182, i64* %183, align 8
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32*, i32** %13, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %21, align 4
  %189 = load i32*, i32** %13, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %169
  %192 = load i64, i64* %22, align 8
  store i64 %192, i64* %8, align 8
  br label %193

193:                                              ; preds = %191, %138, %72
  %194 = load i64, i64* %8, align 8
  ret i64 %194
}

declare dso_local i64 @SEEK(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @flv_read_frame_header(%struct.TYPE_21__*, i32*, i32*, i32*, i64*, i32*, i32) #1

declare dso_local i64 @flv_validate_frame_data(%struct.TYPE_21__*, i32, i32*, i64*) #1

declare dso_local i32 @flv_update_track_position(%struct.TYPE_21__*, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_21__*) #1

declare dso_local i64 @flv_find_next_frame(%struct.TYPE_21__*, i32, i32*, i64*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
