; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_21__*, %struct.TYPE_24__** }
%struct.TYPE_21__ = type { i32*, i64, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_23__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VAR_N = common dso_local global i64 0, align 8
@NAN = common dso_local global i32 0, align 4
@VAR_POS = common dso_local global i64 0, align 8
@VAR_T = common dso_local global i64 0, align 8
@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %6, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %22, i64 0
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %7, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %8, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %31, i32 %34, i32 %37)
  store %struct.TYPE_23__* %38, %struct.TYPE_23__** %9, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %40 = icmp ne %struct.TYPE_23__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %2
  %42 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %227

45:                                               ; preds = %2
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = call i32 @av_frame_copy_props(%struct.TYPE_23__* %46, %struct.TYPE_23__* %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_22__* @av_pix_fmt_desc_get(i32 %51)
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %11, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @VAR_N, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* @NAN, align 4
  br label %67

65:                                               ; preds = %45
  %66 = load i32, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @VAR_POS, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TS2T(i32 %76, i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @VAR_T, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %67
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %93 = call i32 @set_gamma(%struct.TYPE_21__* %92)
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %95 = call i32 @set_contrast(%struct.TYPE_21__* %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %97 = call i32 @set_brightness(%struct.TYPE_21__* %96)
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %99 = call i32 @set_saturation(%struct.TYPE_21__* %98)
  br label %100

100:                                              ; preds = %91, %67
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %219, %100
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %222

107:                                              ; preds = %101
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %13, align 4
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %130

119:                                              ; preds = %116, %107
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @AV_CEIL_RSHIFT(i32 %120, i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @AV_CEIL_RSHIFT(i32 %125, i32 %128)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %119, %116
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)** %137, align 8
  %139 = icmp ne i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)* %138, null
  br i1 %139, label %140, label %186

140:                                              ; preds = %130
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32)** %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i64 %153
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load i32, i32* %14, align 4
  %185 = call i32 %148(%struct.TYPE_26__* %154, i32 %161, i32 %168, i32 %175, i32 %182, i32 %183, i32 %184)
  br label %218

186:                                              ; preds = %130
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %12, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @av_image_copy_plane(i32 %193, i32 %200, i32 %207, i32 %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %186, %140
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %101

222:                                              ; preds = %101
  %223 = call i32 @av_frame_free(%struct.TYPE_23__** %5)
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %226 = call i32 @ff_filter_frame(%struct.TYPE_24__* %224, %struct.TYPE_23__* %225)
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %222, %41
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @TS2T(i32, i32) #1

declare dso_local i32 @set_gamma(%struct.TYPE_21__*) #1

declare dso_local i32 @set_contrast(%struct.TYPE_21__*) #1

declare dso_local i32 @set_brightness(%struct.TYPE_21__*) #1

declare dso_local i32 @set_saturation(%struct.TYPE_21__*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
