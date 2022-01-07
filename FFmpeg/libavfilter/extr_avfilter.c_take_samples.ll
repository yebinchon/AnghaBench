; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_take_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_take_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32, %struct.TYPE_17__**)* @take_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_samples(%struct.TYPE_18__* %0, i32 %1, i32 %2, %struct.TYPE_17__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__** %3, %struct.TYPE_17__*** %9, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @samples_ready(%struct.TYPE_18__* %19, i32 %22)
  %24 = call i32 @av_assert1(i32 %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = call %struct.TYPE_17__* @ff_framequeue_peek(%struct.TYPE_19__* %26, i32 0)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %10, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = call %struct.TYPE_17__* @ff_framequeue_take(%struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %49, align 8
  store i32 0, i32* %5, align 4
  br label %179

50:                                               ; preds = %39, %33, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %80
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %85

66:                                               ; preds = %51
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = call i32 @ff_framequeue_queued_frames(%struct.TYPE_19__* %76)
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %85

80:                                               ; preds = %66
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.TYPE_17__* @ff_framequeue_peek(%struct.TYPE_19__* %82, i32 %83)
  store %struct.TYPE_17__* %84, %struct.TYPE_17__** %11, align 8
  br label %51

85:                                               ; preds = %79, %65
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__* %86, i32 %87)
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %12, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %90 = icmp ne %struct.TYPE_17__* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = call i32 @AVERROR(i32 %92)
  store i32 %93, i32* %5, align 4
  br label %179

94:                                               ; preds = %85
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = call i32 @av_frame_copy_props(%struct.TYPE_17__* %95, %struct.TYPE_17__* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = call i32 @av_frame_free(%struct.TYPE_17__** %12)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %5, align 4
  br label %179

103:                                              ; preds = %94
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %140, %103
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = call %struct.TYPE_17__* @ff_framequeue_take(%struct.TYPE_19__* %115)
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %11, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @av_samples_copy(i32 %119, i32 %122, i32 %123, i32 0, i32 %126, i32 %129, i32 %132)
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %16, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %16, align 4
  %139 = call i32 @av_frame_free(%struct.TYPE_17__** %11)
  br label %140

140:                                              ; preds = %113
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %109

143:                                              ; preds = %109
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %176

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %16, align 4
  %150 = sub i32 %148, %149
  store i32 %150, i32* %18, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = call %struct.TYPE_17__* @ff_framequeue_peek(%struct.TYPE_19__* %152, i32 0)
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %11, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @av_samples_copy(i32 %156, i32 %159, i32 %160, i32 0, i32 %161, i32 %164, i32 %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load i32, i32* %18, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ff_framequeue_skip_samples(%struct.TYPE_19__* %170, i32 %171, i32 %174)
  br label %176

176:                                              ; preds = %147, %143
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %178 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %177, %struct.TYPE_17__** %178, align 8
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %176, %100, %91, %45
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @samples_ready(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @ff_framequeue_peek(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_17__* @ff_framequeue_take(%struct.TYPE_19__*) #1

declare dso_local i32 @ff_framequeue_queued_frames(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @ff_get_audio_buffer(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i32 @av_samples_copy(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_framequeue_skip_samples(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
