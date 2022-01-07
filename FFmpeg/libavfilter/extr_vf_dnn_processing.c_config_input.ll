; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dnn_processing.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dnn_processing.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_10__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64 (i32, %struct.TYPE_12__*, i32)*, i64 (i32, %struct.TYPE_15__*, i32, i8**, i32)*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }

@DNN_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not get input from the model\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"the model requires frame height %d but got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"the model requires frame width %d but got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"the model requires input channels %d\0A\00", align 1
@DNN_FLOAT = common dso_local global i64 0, align 8
@DNN_UINT8 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [68 x i8] c"only support dnn models with input data type as float32 and uint8.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"could not set input and output for the model\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64 (i32, %struct.TYPE_12__*, i32)*, i64 (i32, %struct.TYPE_12__*, i32)** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 %18(i32 %23, %struct.TYPE_12__* %7, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @DNN_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = load i32, i32* @AV_LOG_ERROR, align 4
  %34 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %32, i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %161

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %49, i32 %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = call i32 @AVERROR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %161

59:                                               ; preds = %41, %37
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %161

81:                                               ; preds = %63, %59
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EIO, align 4
  %92 = call i32 @AVERROR(i32 %91)
  store i32 %92, i32* %2, align 4
  br label %161

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DNN_FLOAT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DNN_UINT8, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %104, i32 %105, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @EIO, align 4
  %108 = call i32 @AVERROR(i32 %107)
  store i32 %108, i32* %2, align 4
  br label %161

109:                                              ; preds = %98, %93
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  store i64 %128, i64* %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i64 (i32, %struct.TYPE_15__*, i32, i8**, i32)*, i64 (i32, %struct.TYPE_15__*, i32, i8**, i32)** %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = bitcast i32* %148 to i8**
  %150 = call i64 %136(i32 %141, %struct.TYPE_15__* %143, i32 %146, i8** %149, i32 1)
  store i64 %150, i64* %6, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* @DNN_SUCCESS, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %109
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = load i32, i32* @AV_LOG_ERROR, align 4
  %157 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %155, i32 %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i32, i32* @EIO, align 4
  %159 = call i32 @AVERROR(i32 %158)
  store i32 %159, i32* %2, align 4
  br label %161

160:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %160, %154, %103, %85, %70, %48, %31
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
