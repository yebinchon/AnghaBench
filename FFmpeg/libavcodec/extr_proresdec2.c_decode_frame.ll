; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresdec2.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"icpf\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid frame header\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error decoding picture header\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"error decoding picture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_17__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_19__* %0, i8* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %21, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %12, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 28
  br i1 %32, label %39, label %33

33:                                               ; preds = %4
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = call i64 @AV_RL32(i8* %35)
  %37 = call i64 @AV_RL32(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = load i32, i32* @AV_LOG_ERROR, align 4
  %42 = call i32 @av_log(%struct.TYPE_19__* %40, i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %43, i32* %5, align 4
  br label %141

44:                                               ; preds = %33
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %47, align 8
  %48 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8* %60, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, 8
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = call i32 @decode_frame_header(%struct.TYPE_16__* %63, i8* %64, i32 %65, %struct.TYPE_19__* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %5, align 4
  br label %141

72:                                               ; preds = %44
  %73 = load i32, i32* %15, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %133, %72
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @decode_picture_header(%struct.TYPE_19__* %81, i8* %82, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = load i32, i32* @AV_LOG_ERROR, align 4
  %90 = call i32 @av_log(%struct.TYPE_19__* %88, i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %5, align 4
  br label %141

92:                                               ; preds = %80
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = call i32 @ff_thread_get_buffer(%struct.TYPE_19__* %98, %struct.TYPE_15__* %11, i32 0)
  store i32 %99, i32* %17, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %5, align 4
  br label %141

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %92
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %106 = call i32 @decode_picture(%struct.TYPE_19__* %105)
  store i32 %106, i32* %17, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load i32, i32* @AV_LOG_ERROR, align 4
  %111 = call i32 @av_log(%struct.TYPE_19__* %109, i32 %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %5, align 4
  br label %141

113:                                              ; preds = %104
  %114 = load i32, i32* %16, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %13, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %119, %118
  store i32 %120, i32* %14, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %113
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  br label %80

136:                                              ; preds = %128, %125, %113
  %137 = load i32*, i32** %8, align 8
  store i32 1, i32* %137, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %136, %108, %101, %87, %70, %39
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @AV_RL32(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @decode_frame_header(%struct.TYPE_16__*, i8*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @decode_picture_header(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_19__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @decode_picture(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
