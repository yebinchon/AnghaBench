; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_notify.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"onMetaData\00", align 1
@AMF_DATA_TYPE_MIXEDARRAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"videocodecid\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"audiocodecid\00", align 1
@AMF_END_OF_OBJECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"@setDataFrame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @handle_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_notify(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bytestream2_init(%struct.TYPE_19__* %12, i32 %18, i32 %21)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %24 = call i32 @ff_amf_read_string(%struct.TYPE_19__* %12, i8* %23, i32 64, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %27, i32* %3, align 4
  br label %107

28:                                               ; preds = %2
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  %33 = call i64 @bytestream2_get_byte(%struct.TYPE_19__* %12)
  %34 = load i64, i64* @AMF_DATA_TYPE_MIXEDARRAY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = call i32 @bytestream2_skip(%struct.TYPE_19__* %12, i32 4)
  br label %40

40:                                               ; preds = %75, %36
  %41 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_19__* %12)
  %42 = icmp sgt i32 %41, 3
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %45 = call i64 @ff_amf_get_string(%struct.TYPE_19__* %12, i8* %44, i32 128, i32* %9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ff_amf_tag_size(i32 %51, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %3, align 4
  br label %107

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @bytestream2_skip(%struct.TYPE_19__* %12, i32 %60)
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %40

76:                                               ; preds = %40
  %77 = call i64 @bytestream2_get_be24(%struct.TYPE_19__* %12)
  %78 = load i64, i64* @AMF_END_OF_OBJECT, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %3, align 4
  br label %107

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %32
  br label %84

84:                                               ; preds = %83, %28
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %102, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %90, %93
  store i32 %94, i32* %11, align 4
  %95 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %96 = call i32 @ff_amf_read_string(%struct.TYPE_19__* %12, i8* %95, i32 128, i32* %9)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %3, align 4
  br label %107

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @append_flv_data(%struct.TYPE_18__* %103, %struct.TYPE_17__* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %99, %80, %57, %47, %26
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @bytestream2_init(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ff_amf_read_string(%struct.TYPE_19__*, i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @bytestream2_get_byte(%struct.TYPE_19__*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_19__*) #1

declare dso_local i64 @ff_amf_get_string(%struct.TYPE_19__*, i8*, i32, i32*) #1

declare dso_local i32 @ff_amf_tag_size(i32, i32) #1

declare dso_local i64 @bytestream2_get_be24(%struct.TYPE_19__*) #1

declare dso_local i32 @append_flv_data(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
