; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_avpriv_dv_produce_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dv.c_avpriv_dv_produce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32**, i32, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_21__*, %struct.TYPE_16__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i8* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, i32, i32, i8* }

@DV_PROFILE_BYTES = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_dv_produce_packet(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [5 x i32*], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = bitcast [5 x i32*]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false)
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @DV_PROFILE_BYTES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.TYPE_21__* @av_dv_frame_profile(%struct.TYPE_21__* %22, i32* %23, i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 6
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %27, align 8
  %28 = icmp ne %struct.TYPE_21__* %25, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29, %19, %5
  store i32 -1, i32* %6, align 4
  br label %198

38:                                               ; preds = %29
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @dv_extract_audio_info(%struct.TYPE_19__* %39, i32* %40)
  store i32 %41, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %99, %38
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %102

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  store i8* %49, i8** %56, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %67, 30000
  %69 = mul nsw i32 %68, 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %72, i64 %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %69, %80
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %81, i32* %88, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [5 x i32*], [5 x i32*]* %14, i64 0, i64 %97
  store i32* %95, i32** %98, align 8
  br label %99

99:                                               ; preds = %48
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %42

102:                                              ; preds = %42
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds [5 x i32*], [5 x i32*]* %14, i64 0, i64 0
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = call i32 @dv_extract_audio(i32* %108, i32** %109, %struct.TYPE_21__* %112)
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 6
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 720
  br i1 %120, label %121, label %155

121:                                              ; preds = %114
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 12
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i64 3
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 2
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  br label %154

138:                                              ; preds = %121
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %138, %127
  br label %161

155:                                              ; preds = %114
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %154
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @dv_extract_video_info(%struct.TYPE_19__* %162, i32* %163)
  store i32 %164, i32* %12, align 4
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %166 = call i32 @av_init_packet(%struct.TYPE_20__* %165)
  %167 = load i32*, i32** %9, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 5
  store i8* %170, i8** %172, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* %12, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %161, %37
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_21__* @av_dv_frame_profile(%struct.TYPE_21__*, i32*, i32) #2

declare dso_local i32 @dv_extract_audio_info(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @dv_extract_audio(i32*, i32**, %struct.TYPE_21__*) #2

declare dso_local i32 @dv_extract_video_info(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @av_init_packet(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
