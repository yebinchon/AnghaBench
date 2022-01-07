; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_find_next_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/flash/extr_flv_reader.c_flv_find_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i64, i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@FLV_FLAG_DISCARD = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@FLV_FLAG_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32, i32*, i32*, i32*, i32, i32)* @flv_find_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flv_find_next_frame(%struct.TYPE_19__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %24 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %24, i64* %20, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %27, i64 %29
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %21, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32 %38)
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %23, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %7
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  store i64 %54, i64* %23, align 8
  br label %55

55:                                               ; preds = %47, %7
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = load i64, i64* %23, align 8
  %58 = call i64 @SEEK(%struct.TYPE_19__* %56, i64 %57)
  store i64 %58, i64* %20, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i64, i64* %20, align 8
  store i64 %63, i64* %8, align 8
  br label %177

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %152, %64
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %153

69:                                               ; preds = %65
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = call i64 @STREAM_POSITION(%struct.TYPE_19__* %70)
  store i64 %71, i64* %23, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = call i64 @flv_read_frame_header(%struct.TYPE_19__* %72, i32* %17, i32* %16, i32* %18, i32* %22, i32* %19, i32 0)
  store i64 %73, i64* %20, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %153

78:                                               ; preds = %69
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @FLV_FLAG_DISCARD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %130

84:                                               ; preds = %78
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %130

89:                                               ; preds = %84
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %95, i64 %97
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* @FLV_FLAG_KEYFRAME, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %130

112:                                              ; preds = %106, %92, %89
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @flv_validate_frame_data(%struct.TYPE_19__* %113, i32 %114, i32* %18, i32* %22)
  %116 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %130

119:                                              ; preds = %112
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i64, i64* %23, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = call i64 @STREAM_POSITION(%struct.TYPE_19__* %124)
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @flv_update_track_position(%struct.TYPE_19__* %120, i32 %121, i64 %122, i32 %123, i64 %125, i32 %126, i32 %127, i32 %128)
  br label %153

130:                                              ; preds = %118, %111, %88, %83
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i64, i64* %23, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %136 = call i64 @STREAM_POSITION(%struct.TYPE_19__* %135)
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %22, align 4
  %139 = call i32 @flv_update_track_position(%struct.TYPE_19__* %131, i32 %132, i64 %133, i32 %134, i64 %136, i32 %137, i32 %138, i32 0)
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i64 @SKIP_BYTES(%struct.TYPE_19__* %143, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %130
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = call i64 @STREAM_STATUS(%struct.TYPE_19__* %150)
  store i64 %151, i64* %20, align 8
  br label %152

152:                                              ; preds = %149, %130
  br label %65

153:                                              ; preds = %119, %77, %65
  %154 = load i64, i64* %20, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %175, label %156

156:                                              ; preds = %153
  %157 = load i32*, i32** %11, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %18, align 4
  %161 = load i32*, i32** %11, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32*, i32** %12, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %22, align 4
  %167 = load i32*, i32** %12, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32*, i32** %13, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* %19, align 4
  %173 = load i32*, i32** %13, align 8
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %153
  %176 = load i64, i64* %20, align 8
  store i64 %176, i64* %8, align 8
  br label %177

177:                                              ; preds = %175, %62
  %178 = load i64, i64* %8, align 8
  ret i64 %178
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32) #1

declare dso_local i64 @SEEK(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_19__*) #1

declare dso_local i64 @flv_read_frame_header(%struct.TYPE_19__*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @flv_validate_frame_data(%struct.TYPE_19__*, i32, i32*, i32*) #1

declare dso_local i32 @flv_update_track_position(%struct.TYPE_19__*, i32, i64, i32, i64, i32, i32, i32) #1

declare dso_local i64 @SKIP_BYTES(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
