; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_audio_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_push_audio_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.record_audio_data = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.record_audio_data*, i32)* @ffmpeg_push_audio_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_push_audio_thread(%struct.TYPE_16__* %0, %struct.record_audio_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.record_audio_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.record_audio_data* %1, %struct.record_audio_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.record_audio_data*, %struct.record_audio_data** %6, align 8
  %18 = call i32 @ffmpeg_audio_resample(%struct.TYPE_16__* %16, %struct.record_audio_data* %17)
  br label %19

19:                                               ; preds = %155, %3
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.record_audio_data*, %struct.record_audio_data** %6, align 8
  %22 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %156

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %31, %35
  store i64 %36, i64* %10, align 8
  %37 = load %struct.record_audio_data*, %struct.record_audio_data** %6, align 8
  %38 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = sub i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i64, i64* %10, align 8
  br label %49

47:                                               ; preds = %25
  %48 = load i64, i64* %11, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %51, %55
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = mul i64 %56, %60
  store i64 %61, i64* %13, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %65, %69
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %70, %74
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %76, %80
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = mul i64 %81, %85
  store i64 %86, i64* %15, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %90, %91
  %93 = load %struct.record_audio_data*, %struct.record_audio_data** %6, align 8
  %94 = getelementptr inbounds %struct.record_audio_data, %struct.record_audio_data* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i32*
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @memcpy(i64 %92, i32* %98, i64 %99)
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, %104
  store i64 %109, i64* %107, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %113, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %49
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %156

125:                                              ; preds = %121, %49
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %127 = call i32 @encode_audio(%struct.TYPE_16__* %126, %struct.TYPE_17__* %9, i32 0)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %157

130:                                              ; preds = %125
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %134
  store i64 %139, i64* %137, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %130
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @av_interleaved_write_frame(i32 %150, %struct.TYPE_17__* %9)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %157

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %130
  br label %19

156:                                              ; preds = %124, %19
  store i32 1, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %153, %129
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @ffmpeg_audio_resample(%struct.TYPE_16__*, %struct.record_audio_data*) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @encode_audio(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @av_interleaved_write_frame(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
