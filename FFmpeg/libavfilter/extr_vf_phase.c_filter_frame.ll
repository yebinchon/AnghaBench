; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_phase.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_phase.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { i32, i32*, %struct.TYPE_20__*, i32*, i32 }
%struct.TYPE_20__ = type { i32*, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@PROGRESSIVE = common dso_local global i32 0, align 4
@BOTTOM_FIRST = common dso_local global i32 0, align 4
@TOP_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %6, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %22, i64 0
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %7, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %35 = call i32 @av_frame_free(%struct.TYPE_20__** %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = call %struct.TYPE_20__* @av_frame_clone(%struct.TYPE_20__* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %39, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = call i32 @ff_filter_frame(%struct.TYPE_21__* %40, %struct.TYPE_20__* %41)
  store i32 %42, i32* %3, align 4
  br label %206

43:                                               ; preds = %2
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__* %44, i32 %47, i32 %50)
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %13, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %53 = icmp ne %struct.TYPE_20__* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = call i32 @av_frame_free(%struct.TYPE_20__** %5)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %206

58:                                               ; preds = %43
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = call i32 @av_frame_copy_props(%struct.TYPE_20__* %59, %struct.TYPE_20__* %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = icmp ne %struct.TYPE_20__* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %69, align 8
  %70 = load i32, i32* @PROGRESSIVE, align 4
  store i32 %70, i32* %9, align 4
  br label %81

71:                                               ; preds = %58
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = call i32 @analyze_plane(%struct.TYPE_22__* %72, i32 %75, %struct.TYPE_20__* %78, %struct.TYPE_20__* %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %71, %66
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %186, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %189

88:                                               ; preds = %82
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  store i32* %97, i32** %14, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %15, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %180, %88
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %113, %120
  br i1 %121, label %122, label %185

122:                                              ; preds = %112
  %123 = load i32*, i32** %16, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @BOTTOM_FIRST, align 4
  br label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @TOP_FIRST, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = icmp eq i32 %124, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32*, i32** %14, align 8
  br label %138

136:                                              ; preds = %131
  %137 = load i32*, i32** %15, align 8
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32* [ %135, %134 ], [ %137, %136 ]
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @memcpy(i32* %123, i32* %139, i32 %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %14, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %14, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %15, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %16, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32* %179, i32** %16, align 8
  br label %180

180:                                              ; preds = %138
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %11, align 4
  %184 = xor i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %112

185:                                              ; preds = %112
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %82

189:                                              ; preds = %82
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = icmp ne %struct.TYPE_20__* %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  %198 = call i32 @av_frame_free(%struct.TYPE_20__** %197)
  br label %199

199:                                              ; preds = %195, %189
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  store %struct.TYPE_20__* %200, %struct.TYPE_20__** %202, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %205 = call i32 @ff_filter_frame(%struct.TYPE_21__* %203, %struct.TYPE_20__* %204)
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %199, %54, %32
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @av_frame_free(%struct.TYPE_20__**) #1

declare dso_local %struct.TYPE_20__* @av_frame_clone(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @ff_get_video_buffer(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @analyze_plane(%struct.TYPE_22__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
