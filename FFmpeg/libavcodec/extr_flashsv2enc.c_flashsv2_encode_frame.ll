; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_flashsv2_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flashsv2enc.c_flashsv2_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32*, i32* }

@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Recommending key frame at frame %d\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Inserting key frame at frame %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*, i32*)* @flashsv2_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashsv2_encode_frame(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, %struct.TYPE_18__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AV_INPUT_BUFFER_MIN_SIZE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ff_alloc_packet2(%struct.TYPE_19__* %16, %struct.TYPE_17__* %17, i64 %22, i32 0)
  store i32 %23, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %157

27:                                               ; preds = %4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = icmp sge i64 %41, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %80, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = icmp sgt i64 %58, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %55
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %69 = call i32 @recommend_keyframe(%struct.TYPE_16__* %68, i32* %12)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = load i32, i32* @AV_LOG_DEBUG, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @av_log(%struct.TYPE_19__* %73, i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %72, %67
  br label %80

80:                                               ; preds = %79, %55, %52
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @reconfigure_at_keyframe(%struct.TYPE_16__* %84, i32 %89, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %5, align 4
  br label %157

100:                                              ; preds = %83
  br label %101

101:                                              ; preds = %100, %80
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = call i32 @optimum_dist(%struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @write_bitstream(%struct.TYPE_16__* %112, i32 %117, i32 %122, i32 %125, i32 %128, i32 %129)
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %111
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = call i32 @new_key_frame(%struct.TYPE_16__* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = load i32, i32* @AV_LOG_DEBUG, align 4
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @av_log(%struct.TYPE_19__* %146, i32 %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %133, %111
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load i32*, i32** %9, align 8
  store i32 1, i32* %156, align 4
  store i32 0, i32* %5, align 4
  br label %157

157:                                              ; preds = %152, %98, %25
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_19__*, %struct.TYPE_17__*, i64, i32) #1

declare dso_local i32 @recommend_keyframe(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, i64) #1

declare dso_local i32 @reconfigure_at_keyframe(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @optimum_dist(%struct.TYPE_16__*) #1

declare dso_local i32 @write_bitstream(%struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @new_key_frame(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
