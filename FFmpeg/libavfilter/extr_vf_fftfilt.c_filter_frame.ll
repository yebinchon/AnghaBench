; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftfilt.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftfilt.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i32, i32*, i32*, i64, i32*, i32*, i32**, i32**, i32*, i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)* }

@ENOMEM = common dso_local global i32 0, align 4
@EVAL_MODE_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %22, i64 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @ff_get_video_buffer(%struct.TYPE_14__* %28, i32 %31, i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = call i32 @av_frame_free(i32** %5)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = call i32 @AVERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %218

42:                                               ; preds = %2
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @av_frame_copy_props(i32* %43, i32* %44)
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %210, %42
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %213

52:                                               ; preds = %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %14, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EVAL_MODE_FRAME, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %52
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @do_eval(%struct.TYPE_13__* %73, %struct.TYPE_14__* %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %52
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 10
  %80 = load i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 %80(%struct.TYPE_13__* %81, i32* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @rdft_vertical(%struct.TYPE_13__* %87, i32 %88, i32 %89)
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %160, %77
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %92, %99
  br i1 %100, label %101, label %163

101:                                              ; preds = %91
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %156, %101
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %103, %110
  br i1 %111, label %112, label %159

112:                                              ; preds = %102
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 7
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %120, %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %119, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 6
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %141, %148
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %140, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, %133
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %112
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %102

159:                                              ; preds = %102
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %91

163:                                              ; preds = %91
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %170, %177
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 8
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %178, %185
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 6
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32*, i32** %189, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, %186
  store i32 %196, i32* %194, align 4
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32 @irdft_vertical(%struct.TYPE_13__* %197, i32 %198, i32 %199)
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 9
  %203 = load i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32*, i32, i32, i32)** %202, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call i32 %203(%struct.TYPE_13__* %204, i32* %205, i32 %206, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %163
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %12, align 4
  br label %46

213:                                              ; preds = %46
  %214 = call i32 @av_frame_free(i32** %5)
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %216 = load i32*, i32** %9, align 8
  %217 = call i32 @ff_filter_frame(%struct.TYPE_14__* %215, i32* %216)
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %213, %38
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32* @ff_get_video_buffer(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(i32*, i32*) #1

declare dso_local i32 @do_eval(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @rdft_vertical(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @irdft_vertical(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
