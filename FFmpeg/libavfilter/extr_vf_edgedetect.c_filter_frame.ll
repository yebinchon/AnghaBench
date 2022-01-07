; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_edgedetect.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, %struct.plane_info* }
%struct.plane_info = type { i32, i32, i32*, i32*, i32* }
%struct.TYPE_17__ = type { i32*, i32* }

@MODE_COLORMIX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.plane_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %6, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %26, i64 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %8, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MODE_COLORMIX, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = call i64 @av_frame_is_writable(%struct.TYPE_17__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %11, align 8
  br label %59

40:                                               ; preds = %34, %2
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__* %41, i32 %44, i32 %47)
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %11, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = icmp ne %struct.TYPE_17__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %250

55:                                               ; preds = %40
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %56, %struct.TYPE_17__* %57)
  br label %59

59:                                               ; preds = %55, %38
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %238, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %241

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 5
  %69 = load %struct.plane_info*, %struct.plane_info** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %69, i64 %71
  store %struct.plane_info* %72, %struct.plane_info** %12, align 8
  %73 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %74 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %13, align 8
  %76 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %77 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %14, align 8
  %79 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %80 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %15, align 8
  %82 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %83 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %16, align 4
  %85 = load %struct.plane_info*, %struct.plane_info** %12, align 8
  %86 = getelementptr inbounds %struct.plane_info, %struct.plane_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 1, %88
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %131, label %95

95:                                               ; preds = %66
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %130, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @av_image_copy_plane(i32 %105, i32 %112, i32 %119, i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %98, %95
  br label %238

131:                                              ; preds = %66
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @gaussian_blur(%struct.TYPE_19__* %132, i32 %133, i32 %134, i32* %135, i32 %136, i32 %143, i32 %150)
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %17, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %15, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @sobel(i32 %152, i32 %153, i32* %154, i32 %155, i32* %156, i32 %157, i32* %158, i32 %159)
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = mul nsw i32 %162, %163
  %165 = call i32 @memset(i32* %161, i32 0, i32 %164)
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = load i32, i32* %16, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = load i32, i32* %16, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @non_maximum_suppression(i32 %166, i32 %167, i32* %168, i32 %169, i32* %170, i32 %171, i32* %172, i32 %173)
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @double_threshold(i32 %177, i32 %180, i32 %181, i32 %182, i32 %189, i32 %196, i32* %197, i32 %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MODE_COLORMIX, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %131
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @color_mix(i32 %206, i32 %207, i32 %214, i32 %221, i32 %228, i32 %235)
  br label %237

237:                                              ; preds = %205, %131
  br label %238

238:                                              ; preds = %237, %130
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %60

241:                                              ; preds = %60
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %241
  %245 = call i32 @av_frame_free(%struct.TYPE_17__** %5)
  br label %246

246:                                              ; preds = %244, %241
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %249 = call i32 @ff_filter_frame(%struct.TYPE_18__* %247, %struct.TYPE_17__* %248)
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %246, %51
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_video_buffer(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gaussian_blur(%struct.TYPE_19__*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @sobel(i32, i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @non_maximum_suppression(i32, i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @double_threshold(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @color_mix(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
