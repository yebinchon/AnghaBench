; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_audiointerleave.c_ff_audio_rechunk_interleave.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_audiointerleave.c_ff_audio_rechunk_interleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_32__** }
%struct.TYPE_32__ = type { %struct.TYPE_28__*, %struct.TYPE_31__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i32, i32, i64, i32, i32, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_audio_rechunk_interleave(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, %struct.TYPE_30__* %2, i32 %3, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)* %4, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)*, align 8
  %13 = alloca i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca %struct.TYPE_30__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)* %4, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)** %12, align 8
  store i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* %5, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)** %13, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %22 = icmp ne %struct.TYPE_30__* %21, null
  br i1 %22, label %23, label %107

23:                                               ; preds = %6
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %25, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %26, i64 %29
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %30, align 8
  store %struct.TYPE_32__* %31, %struct.TYPE_32__** %16, align 8
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %17, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %23
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @av_fifo_size(i32 %45)
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %46, %49
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ugt i32 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %42
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i64 @av_fifo_realloc2(i32 %59, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %7, align 4
  br label %161

66:                                               ; preds = %56
  %67 = load i32, i32* %18, align 4
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %42
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @av_fifo_generic_write(i32 %73, i32 %76, i32 %79, i32* null)
  br label %106

81:                                               ; preds = %23
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 5
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %100 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)** %13, align 8
  %101 = call i32 @ff_interleave_add_packet(%struct.TYPE_29__* %98, %struct.TYPE_30__* %99, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* %100)
  store i32 %101, i32* %15, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %81
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %7, align 4
  br label %161

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %70
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %10, align 8
  br label %107

107:                                              ; preds = %106, %6
  store i32 0, i32* %14, align 4
  br label %108

108:                                              ; preds = %152, %107
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %155

114:                                              ; preds = %108
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %117, i64 %119
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %120, align 8
  store %struct.TYPE_32__* %121, %struct.TYPE_32__** %19, align 8
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %151

129:                                              ; preds = %114
  %130 = bitcast %struct.TYPE_30__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %130, i8 0, i64 40, i1 false)
  br label %131

131:                                              ; preds = %144, %129
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @interleave_new_audio_packet(%struct.TYPE_29__* %132, %struct.TYPE_30__* %20, i32 %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %131
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %139 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)** %13, align 8
  %140 = call i32 @ff_interleave_add_packet(%struct.TYPE_29__* %138, %struct.TYPE_30__* %20, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)* %139)
  store i32 %140, i32* %15, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* %15, align 4
  store i32 %143, i32* %7, align 4
  br label %161

144:                                              ; preds = %137
  br label %131

145:                                              ; preds = %131
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %7, align 4
  br label %161

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %114
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %14, align 4
  br label %108

155:                                              ; preds = %108
  %156 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*, i32)** %12, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 %156(%struct.TYPE_29__* %157, %struct.TYPE_30__* %158, %struct.TYPE_30__* null, i32 %159)
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %155, %148, %142, %103, %63
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i64 @av_fifo_realloc2(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_fifo_generic_write(i32, i32, i32, i32*) #1

declare dso_local i32 @ff_interleave_add_packet(%struct.TYPE_29__*, %struct.TYPE_30__*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_30__*)*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @interleave_new_audio_packet(%struct.TYPE_29__*, %struct.TYPE_30__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
