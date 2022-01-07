; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_track_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_track_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i8*, i8*, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_NAME = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_LANGUAGE = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_TRACK_CODEC_ID = common dso_local global i32 0, align 4
@MKV_ELEMENT_ID_TRACK_CODEC_NAME = common dso_local global i32 0, align 4
@MKV_MAX_STRING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"string truncated (%i>%i)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MKV_CODECID_MAX = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_TRACK_CODEC_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i32, i32)* @mkv_read_subelements_track_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_subelements_track_entry(%struct.TYPE_21__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %9, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %10, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %11, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MKV_ELEMENT_ID_NAME, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @MKV_ELEMENT_ID_LANGUAGE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MKV_ELEMENT_ID_TRACK_CODEC_ID, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MKV_ELEMENT_ID_TRACK_CODEC_NAME, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %41, %37, %33, %3
  %46 = load i32, i32* @MKV_MAX_STRING_SIZE, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %13, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %14, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @MKV_MAX_STRING_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MKV_MAX_STRING_SIZE, align 4
  %58 = call i32 @LOG_DEBUG(%struct.TYPE_21__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* @MKV_MAX_STRING_SIZE, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @READ_BYTES(%struct.TYPE_21__* %61, i8* %50, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = call i64 @STREAM_STATUS(%struct.TYPE_21__* %68)
  store i64 %69, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %88

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %50, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %75 = call i32 @LOG_FORMAT(%struct.TYPE_21__* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @MKV_ELEMENT_ID_TRACK_CODEC_ID, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* @MKV_CODECID_MAX, align 8
  %84 = sub nsw i64 %83, 1
  %85 = call i32 @strncpy(i32 %82, i8* %50, i64 %84)
  br label %86

86:                                               ; preds = %79, %70
  %87 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %87, i64* %4, align 8
  store i32 1, i32* %15, align 4
  br label %88

88:                                               ; preds = %86, %67
  %89 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %89)
  br label %145

90:                                               ; preds = %41
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MKV_ELEMENT_ID_TRACK_CODEC_PRIVATE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %90
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i64 @vc_container_track_allocate_extradata(%struct.TYPE_21__* %95, %struct.TYPE_19__* %96, i32 %97)
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %4, align 8
  br label %145

104:                                              ; preds = %94
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @READ_BYTES(%struct.TYPE_21__* %105, i8* %110, i32 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %118 = call i64 @STREAM_STATUS(%struct.TYPE_21__* %117)
  store i64 %118, i64* %4, align 8
  br label %145

119:                                              ; preds = %90
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @mkv_read_element_data_uint(%struct.TYPE_21__* %120, i32 %121, i8** %12)
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* %8, align 8
  store i64 %127, i64* %4, align 8
  br label %145

128:                                              ; preds = %119
  %129 = load i32, i32* %6, align 4
  switch i32 %129, label %142 [
    i32 129, label %130
    i32 128, label %134
    i32 130, label %138
  ]

130:                                              ; preds = %128
  %131 = load i8*, i8** %12, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %143

134:                                              ; preds = %128
  %135 = load i8*, i8** %12, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %143

138:                                              ; preds = %128
  %139 = load i8*, i8** %12, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %143

142:                                              ; preds = %128
  br label %143

143:                                              ; preds = %142, %138, %134, %130
  %144 = load i64, i64* %8, align 8
  store i64 %144, i64* %4, align 8
  br label %145

145:                                              ; preds = %143, %126, %104, %102, %88
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_21__*, i8*, i32, i32) #2

declare dso_local i64 @READ_BYTES(%struct.TYPE_21__*, i8*, i32) #2

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_21__*) #2

declare dso_local i32 @LOG_FORMAT(%struct.TYPE_21__*, i8*, i8*) #2

declare dso_local i32 @strncpy(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @vc_container_track_allocate_extradata(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #2

declare dso_local i64 @mkv_read_element_data_uint(%struct.TYPE_21__*, i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
