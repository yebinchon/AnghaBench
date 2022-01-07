; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_stream_properties.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/asf/extr_asf_reader.c_asf_read_object_stream_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32, i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Stream Type\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Error Correction Type\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Time Offset\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Type-Specific Data Length\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error Correction Data Length\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@asf_guid_stream_type_video = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@asf_guid_stream_type_audio = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, i32)* @asf_read_object_stream_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @asf_read_object_stream_properties(%struct.TYPE_30__* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  store %struct.TYPE_31__* %19, %struct.TYPE_31__** %7, align 8
  %20 = load i64, i64* @VC_CONTAINER_ES_TYPE_UNKNOWN, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ASF_READ_GUID(%struct.TYPE_30__* %21, i32 %22, i32* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ASF_SKIP_GUID(%struct.TYPE_30__* %24, i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ASF_READ_U64(%struct.TYPE_30__* %27, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @UINT64_C(i32 10)
  %31 = sdiv i32 %29, %30
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ASF_READ_U32(%struct.TYPE_30__* %34, i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %36, i32* %9, align 4
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ASF_SKIP_U32(%struct.TYPE_30__* %37, i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ASF_READ_U16(%struct.TYPE_30__* %40, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @ASF_SKIP_U32(%struct.TYPE_30__* %43, i32 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @CHECK_POINT(%struct.TYPE_30__* %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 127
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %2
  br label %152

53:                                               ; preds = %2
  %54 = call i32 @memcmp(i32* %12, i32* @asf_guid_stream_type_video, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  store i64 %57, i64* %11, align 8
  br label %64

58:                                               ; preds = %53
  %59 = call i32 @memcmp(i32* %12, i32* @asf_guid_stream_type_audio, i32 4)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %61, %58
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* @VC_CONTAINER_ES_TYPE_UNKNOWN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %152

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %74, i64* %3, align 8
  br label %162

75:                                               ; preds = %69
  %76 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call %struct.TYPE_29__* @asf_reader_find_track(%struct.TYPE_30__* %76, i32 %77, i32 1)
  store %struct.TYPE_29__* %78, %struct.TYPE_29__** %8, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %80 = icmp ne %struct.TYPE_29__* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %82, i64* %3, align 8
  br label %162

83:                                               ; preds = %75
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 2
  store i64 %84, i64* %88, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %90 = call i32 @STREAM_POSITION(%struct.TYPE_30__* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %83
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @asf_read_waveformatex(%struct.TYPE_30__* %95, %struct.TYPE_29__* %96, i32 %97)
  store i64 %98, i64* %6, align 8
  br label %109

99:                                               ; preds = %83
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @asf_read_bitmapinfoheader(%struct.TYPE_30__* %104, %struct.TYPE_29__* %105, i32 %106)
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %94
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %111 = call i32 @STREAM_POSITION(%struct.TYPE_30__* %110)
  %112 = load i32, i32* %13, align 4
  %113 = sub i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = sub i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  br label %162

120:                                              ; preds = %109
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %150 [
    i32 128, label %141
  ]

141:                                              ; preds = %120
  %142 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %143
  store i32 %149, i32* %147, align 4
  br label %151

150:                                              ; preds = %120
  br label %151

151:                                              ; preds = %150, %141
  br label %152

152:                                              ; preds = %151, %68, %52
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @SKIP_BYTES(%struct.TYPE_30__* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %152
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %161 = call i64 @STREAM_STATUS(%struct.TYPE_30__* %160)
  store i64 %161, i64* %3, align 8
  br label %162

162:                                              ; preds = %159, %118, %81, %73
  %163 = load i64, i64* %3, align 8
  ret i64 %163
}

declare dso_local i32 @ASF_READ_GUID(%struct.TYPE_30__*, i32, i32*, i8*) #1

declare dso_local i32 @ASF_SKIP_GUID(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @ASF_READ_U64(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @ASF_READ_U32(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @ASF_SKIP_U32(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @ASF_READ_U16(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @CHECK_POINT(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_29__* @asf_reader_find_track(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @STREAM_POSITION(%struct.TYPE_30__*) #1

declare dso_local i64 @asf_read_waveformatex(%struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @asf_read_bitmapinfoheader(%struct.TYPE_30__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @SKIP_BYTES(%struct.TYPE_30__*, i32) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
