; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_data.c_ff_audio_data_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i32**, i64, i32* }

@audio_data_class = common dso_local global i32 0, align 4
@AVRESAMPLE_MAX_CHANNELS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid channel count: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid sample format\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"invalid NULL pointer for src[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"{no name}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_audio_data_init(%struct.TYPE_6__* %0, i32** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = call i32 @memset(%struct.TYPE_6__* %19, i32 0, i32 88)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 14
  store i32* @audio_data_class, i32** %22, align 8
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @AVRESAMPLE_MAX_CHANNELS, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %30, i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %9, align 4
  br label %168

36:                                               ; preds = %25
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @av_get_bytes_per_sample(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %46, i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %168

51:                                               ; preds = %36
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @ff_sample_fmt_is_planar(i32 %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 13
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 13
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %13, align 4
  br label %64

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 1, %63 ]
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 13
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %78

76:                                               ; preds = %64
  %77 = load i32, i32* %13, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 1, %75 ], [ %77, %76 ]
  %80 = mul nsw i32 %70, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %121, %78
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 13
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %13, align 4
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 1, %91 ]
  %94 = icmp slt i32 %84, %93
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  %96 = load i32**, i32*** %11, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %103, i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %9, align 4
  br label %168

109:                                              ; preds = %95
  %110 = load i32**, i32*** %11, align 8
  %111 = load i32, i32* %18, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 12
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  store i32* %114, i32** %120, align 8
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %18, align 4
  br label %83

124:                                              ; preds = %92
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = mul nsw i32 %125, %129
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 11
  store i64 0, i64* %149, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %124
  %153 = load i8*, i8** %17, align 8
  br label %155

154:                                              ; preds = %124
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i8* [ %153, %152 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %154 ]
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 9
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %160 = call i32 @calc_ptr_alignment(%struct.TYPE_6__* %159)
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %161, %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 10
  store i32 %165, i32* %167, align 8
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %155, %102, %45, %29
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @ff_sample_fmt_is_planar(i32, i32) #1

declare dso_local i32 @calc_ptr_alignment(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
