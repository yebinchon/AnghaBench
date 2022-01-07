; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framepack.c_try_push_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_framepack.c_try_push_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32 }

@AV_STEREO3D_FRAMESEQUENCE = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@LEFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AV_STEREO3D_VIEW_LEFT = common dso_local global i32 0, align 4
@AV_STEREO3D_VIEW_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @try_push_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_push_frame(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %15, i64 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %20, i64 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = icmp ne %struct.TYPE_20__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %27, i64 1
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = icmp ne %struct.TYPE_20__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %1
  store i32 0, i32* %2, align 4
  br label %192

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AV_STEREO3D_FRAMESEQUENCE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %46, align 8
  %48 = load i64, i64* @LEFT, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %47, i64 %48
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %44, %38
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %123, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %126

59:                                               ; preds = %56
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %66, i64 %68
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  store i64 %62, i64* %71, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %74, i64 %76
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = call %struct.TYPE_19__* @av_stereo3d_create_side_data(%struct.TYPE_20__* %78)
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %6, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = icmp ne %struct.TYPE_19__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %192

85:                                               ; preds = %59
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @LEFT, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @AV_STEREO3D_VIEW_LEFT, align 4
  br label %99

97:                                               ; preds = %85
  %98 = load i32, i32* @AV_STEREO3D_VIEW_RIGHT, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %106, i64 %108
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = call i32 @ff_filter_frame(%struct.TYPE_21__* %103, %struct.TYPE_20__* %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %114, i64 %116
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %117, align 8
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %99
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %192

122:                                              ; preds = %99
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %56

126:                                              ; preds = %56
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %192

128:                                              ; preds = %32
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__* %129, i32 %132, i32 %135)
  store %struct.TYPE_20__* %136, %struct.TYPE_20__** %9, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %138 = icmp ne %struct.TYPE_20__* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %128
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = call i32 @AVERROR(i32 %140)
  store i32 %141, i32* %2, align 4
  br label %192

142:                                              ; preds = %128
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %145 = call i32 @spatial_frame_pack(%struct.TYPE_21__* %143, %struct.TYPE_20__* %144)
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %148, align 8
  %150 = load i64, i64* @LEFT, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %149, i64 %150
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = call i32 @av_frame_copy_props(%struct.TYPE_20__* %146, %struct.TYPE_20__* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %142
  %157 = call i32 @av_frame_free(%struct.TYPE_20__** %9)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %192

159:                                              ; preds = %142
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %171, %159
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %166, i64 %168
  %170 = call i32 @av_frame_free(%struct.TYPE_20__** %169)
  br label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %160

174:                                              ; preds = %160
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %176 = call %struct.TYPE_19__* @av_stereo3d_create_side_data(%struct.TYPE_20__* %175)
  store %struct.TYPE_19__* %176, %struct.TYPE_19__** %6, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = icmp ne %struct.TYPE_19__* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %174
  %180 = call i32 @av_frame_free(%struct.TYPE_20__** %9)
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = call i32 @AVERROR(i32 %181)
  store i32 %182, i32* %2, align 4
  br label %192

183:                                              ; preds = %174
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %191 = call i32 @ff_filter_frame(%struct.TYPE_21__* %189, %struct.TYPE_20__* %190)
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %183, %179, %156, %139, %126, %120, %82, %31
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_19__* @av_stereo3d_create_side_data(%struct.TYPE_20__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @spatial_frame_pack(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
