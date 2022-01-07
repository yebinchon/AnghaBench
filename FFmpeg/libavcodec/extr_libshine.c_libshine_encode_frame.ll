; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libshine.c_libshine_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libshine.c_libshine_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32, i32, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@BUFFER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"internal buffer too small\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"free format output not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*)* @libshine_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libshine_encode_frame(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %10, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32**
  %29 = call i8* @shine_encode_buffer(i32 %24, i32** %28, i32* %13)
  store i8* %29, i8** %12, align 8
  br label %35

30:                                               ; preds = %4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @shine_flush(i32 %33, i32* %13)
  store i8* %34, i8** %12, align 8
  br label %35

35:                                               ; preds = %30, %21
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %165

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %39
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @BUFFER_SIZE, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(%struct.TYPE_21__* %51, i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %54, i32* %5, align 4
  br label %165

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %55, %39
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = icmp ne %struct.TYPE_20__* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = call i32 @ff_af_queue_add(%struct.TYPE_16__* %77, %struct.TYPE_20__* %78)
  store i32 %79, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %165

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %72
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %89, %84
  store i32 0, i32* %5, align 4
  br label %165

96:                                               ; preds = %89
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @AV_RB32(i8* %99)
  %101 = call i64 @avpriv_mpegaudio_decode_header(%struct.TYPE_18__* %11, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 @av_log(%struct.TYPE_21__* %104, i32 %105, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %165

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %110, %113
  br i1 %114, label %115, label %164

115:                                              ; preds = %107
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @ff_alloc_packet2(%struct.TYPE_21__* %116, %struct.TYPE_19__* %117, i32 %118, i32 0)
  store i32 %119, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %5, align 4
  br label %165

123:                                              ; preds = %115
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @memcpy(i8* %126, i8* %129, i32 %130)
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @memmove(i8* %139, i8* %145, i32 %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = call i32 @ff_af_queue_remove(%struct.TYPE_16__* %151, i32 %154, i32* %156, i32* %158)
  %160 = load i32, i32* %15, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 8
  %163 = load i32*, i32** %9, align 8
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %123, %107
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %121, %103, %95, %81, %50, %38
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i8* @shine_encode_buffer(i32, i32**, i32*) #1

declare dso_local i8* @shine_flush(i32, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ff_af_queue_add(%struct.TYPE_16__*, %struct.TYPE_20__*) #1

declare dso_local i64 @avpriv_mpegaudio_decode_header(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_21__*, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @ff_af_queue_remove(%struct.TYPE_16__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
