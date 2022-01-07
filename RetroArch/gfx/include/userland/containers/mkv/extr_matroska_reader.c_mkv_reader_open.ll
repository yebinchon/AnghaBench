; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 (%struct.TYPE_18__*)*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@mkv_elements_list = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_NO_TRACK_AVAILABLE = common dso_local global i64 0, align 8
@mkv_reader_read = common dso_local global i32 0, align 4
@mkv_reader_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mkv: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mkv_reader_open(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i32], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  %7 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %10 = call i32 @PEEK_BYTES(%struct.TYPE_18__* %8, i32* %9, i32 4)
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ne i32 %14, 26
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 69
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 223
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 163
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %20, %16, %12, %1
  %29 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %29, i64* %2, align 8
  br label %182

30:                                               ; preds = %24
  %31 = call %struct.TYPE_19__* @malloc(i32 56)
  store %struct.TYPE_19__* %31, %struct.TYPE_19__** %4, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %35, i64* %5, align 8
  br label %171

36:                                               ; preds = %30
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = call i32 @memset(%struct.TYPE_19__* %37, i32 0, i32 56)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %43, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @mkv_elements_list, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = call i32 @INT64_C(i32 -1)
  %54 = load i32, i32* @MKV_ELEMENT_ID_UNKNOWN, align 4
  %55 = call i64 @mkv_read_element(%struct.TYPE_18__* %52, i32 %53, i32 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %36
  br label %171

60:                                               ; preds = %36
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %66, i64* %5, align 8
  br label %171

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %84, %67
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = call i32 @INT64_C(i32 -1)
  %71 = load i32, i32* @MKV_ELEMENT_ID_UNKNOWN, align 4
  %72 = call i64 @mkv_read_element(%struct.TYPE_18__* %69, i32 %70, i32 %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %85

77:                                               ; preds = %68
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %85

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  br i1 true, label %68, label %85

85:                                               ; preds = %84, %82, %76
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* @VC_CONTAINER_ERROR_NO_TRACK_AVAILABLE, align 8
  store i64 %91, i64* %5, align 8
  br label %171

92:                                               ; preds = %85
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  store i32 (%struct.TYPE_18__*)* @mkv_reader_close, i32 (%struct.TYPE_18__*)** %96, align 8
  %97 = load i32, i32* @mkv_reader_read, align 4
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @mkv_reader_seek, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sdiv i32 %109, 1000
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %118 = call i32 @STREAM_SEEKABLE(%struct.TYPE_18__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %92
  %121 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %121, i64* %2, align 8
  br label %182

122:                                              ; preds = %92
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %130, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %127, %122
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @SEEK(%struct.TYPE_18__* %147, i64 %150)
  store i64 %151, i64* %5, align 8
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = call i32 @INT64_C(i32 -1)
  %158 = load i32, i32* @MKV_ELEMENT_ID_SEGMENT, align 4
  %159 = call i64 @mkv_read_element(%struct.TYPE_18__* %156, i32 %157, i32 %158)
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %155, %146
  br label %161

161:                                              ; preds = %160, %141
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i64 1
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @SEEK(%struct.TYPE_18__* %162, i64 %169)
  store i64 %170, i64* %2, align 8
  br label %182

171:                                              ; preds = %90, %65, %59, %34
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = load i64, i64* %5, align 8
  %174 = call i32 @LOG_DEBUG(%struct.TYPE_18__* %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %173)
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = icmp ne %struct.TYPE_19__* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = call i32 @mkv_reader_close(%struct.TYPE_18__* %178)
  br label %180

180:                                              ; preds = %177, %171
  %181 = load i64, i64* %5, align 8
  store i64 %181, i64* %2, align 8
  br label %182

182:                                              ; preds = %180, %161, %120, %28
  %183 = load i64, i64* %2, align 8
  ret i64 %183
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local %struct.TYPE_19__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i64 @mkv_read_element(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @mkv_reader_close(%struct.TYPE_18__*) #1

declare dso_local i32 @STREAM_SEEKABLE(%struct.TYPE_18__*) #1

declare dso_local i64 @SEEK(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_18__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
