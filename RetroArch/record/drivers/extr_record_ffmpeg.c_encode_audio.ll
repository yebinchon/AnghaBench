; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_encode_audio.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_encode_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32*, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, i32)* @encode_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_audio(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %12 = call i32 @av_init_packet(%struct.TYPE_22__* %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = call %struct.TYPE_23__* (...) @av_frame_alloc()
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %8, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %27 = icmp ne %struct.TYPE_23__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %205

29:                                               ; preds = %3
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = call i32 @planarize_audio(%struct.TYPE_21__* %58)
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @av_samples_get_buffer_size(i32* null, i32 %65, i32 %69, i32 %75, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %29
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  br label %106

101:                                              ; preds = %29
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i32* [ %100, %95 ], [ %105, %101 ]
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @avcodec_fill_audio_frame(%struct.TYPE_23__* %77, i32 %83, i32 %89, i32* %107, i32 %108, i32 0)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %120

118:                                              ; preds = %106
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi %struct.TYPE_23__* [ null, %117 ], [ %119, %118 ]
  %122 = call i64 @avcodec_encode_audio2(%struct.TYPE_17__* %113, %struct.TYPE_22__* %114, %struct.TYPE_23__* %121, i32* %10)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = call i32 @av_frame_free(%struct.TYPE_23__** %8)
  store i32 0, i32* %4, align 4
  br label %205

126:                                              ; preds = %120
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = call i32 @av_frame_free(%struct.TYPE_23__** %8)
  store i32 1, i32* %4, align 4
  br label %205

141:                                              ; preds = %126
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = icmp ne i64 %144, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %141
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @av_rescale_q(i64 %151, i32 %157, i32 %163)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %148, %141
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %173 = ptrtoint i8* %172 to i64
  %174 = icmp ne i64 %171, %173
  br i1 %174, label %175, label %195

175:                                              ; preds = %168
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @av_rescale_q(i64 %178, i32 %184, i32 %190)
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %195

195:                                              ; preds = %175, %168
  %196 = call i32 @av_frame_free(%struct.TYPE_23__** %8)
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  store i32 1, i32* %4, align 4
  br label %205

205:                                              ; preds = %195, %129, %124, %28
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i32 @av_init_packet(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @av_frame_alloc(...) #1

declare dso_local i32 @planarize_audio(%struct.TYPE_21__*) #1

declare dso_local i32 @av_samples_get_buffer_size(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @avcodec_fill_audio_frame(%struct.TYPE_23__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @avcodec_encode_audio2(%struct.TYPE_17__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_23__**) #1

declare dso_local i8* @av_rescale_q(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
