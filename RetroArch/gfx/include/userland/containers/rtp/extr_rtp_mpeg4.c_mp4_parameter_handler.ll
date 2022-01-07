; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_parameter_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_mpeg4.c_mp4_parameter_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"sizeLength\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"indexLength\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"indexDeltaLength\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"CTSDeltaLength\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"DTSDeltaLength\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"objectType\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"constantSize\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"constantDuration\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"auxiliaryDataSizeLength\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"MPEG4: constantSize and sizeLength cannot both be set.\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@mp4_payload_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp4_parameter_handler(i32* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i64 @malloc(i32 72)
  %11 = inttoptr i64 %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %15, i64* %4, align 8
  br label %133

16:                                               ; preds = %3
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = call i32 @memset(%struct.TYPE_15__* %24, i32 0, i32 72)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @mp4_get_stream_type(i32* %26, %struct.TYPE_14__* %27, i32* %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %133

35:                                               ; preds = %16
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @mp4_get_config(i32* %36, %struct.TYPE_14__* %37, i32* %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %4, align 8
  br label %133

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i64 @mp4_get_mode(i32* %46, %struct.TYPE_14__* %47, i32* %48)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %4, align 8
  br label %133

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i64 @mp4_check_unsupported_features(i32* %56, %struct.TYPE_14__* %57, i32* %58)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i64, i64* %9, align 8
  store i64 %64, i64* %4, align 8
  br label %133

65:                                               ; preds = %55
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = call i32 @rtp_get_parameter_u32(i32* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 8
  %73 = call i32 @rtp_get_parameter_u32(i32* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 7
  %77 = call i32 @rtp_get_parameter_u32(i32* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 6
  %81 = call i32 @rtp_get_parameter_u32(i32* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 5
  %85 = call i32 @rtp_get_parameter_u32(i32* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 4
  %89 = call i32 @rtp_get_parameter_u32(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64* %88)
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = call i32 @rtp_get_parameter_u32(i32* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64* %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 3
  %97 = call i32 @rtp_get_parameter_u32(i32* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64* %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = call i32 @rtp_get_parameter_u32(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %65
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @LOG_ERROR(i32* %112, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %114 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %114, i64* %4, align 8
  br label %133

115:                                              ; preds = %106, %65
  %116 = load i32*, i32** %5, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = call i64 @mp4_check_parameters(i32* %116, %struct.TYPE_14__* %117)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %115
  %123 = load i64, i64* %9, align 8
  store i64 %123, i64* %4, align 8
  br label %133

124:                                              ; preds = %115
  %125 = load i32, i32* @mp4_payload_handler, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 8
  %132 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %124, %122, %111, %63, %53, %43, %33, %14
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @mp4_get_stream_type(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @mp4_get_config(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @mp4_get_mode(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @mp4_check_unsupported_features(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @rtp_get_parameter_u32(i32*, i8*, i64*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i64 @mp4_check_parameters(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
