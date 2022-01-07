; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_writer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_writer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__, i8*, i8*, i32, i32, i32 }
%struct.TYPE_21__ = type { i64 }

@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3gp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"skm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"m4v\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"m4a\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@MP4_BRAND_3GP5 = common dso_local global i32 0, align 4
@MP4_BRAND_SKM2 = common dso_local global i32 0, align 4
@MP4_BRAND_QT = common dso_local global i32 0, align 4
@MP4_BRAND_ISOM = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MP4_BOX_TYPE_FTYP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@mp4_writer_close = common dso_local global i32 0, align 4
@mp4_writer_write = common dso_local global i32 0, align 4
@mp4_writer_control = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"mp4: error opening stream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp4_writer_open(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %8 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @vc_uri_path_extension(i32 %13)
  store i8* %14, i8** %5, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vc_uri_find_query(i32 %19, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %24, i64* %2, align 8
  br label %171

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcasecmp(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcasecmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %50, i64* %2, align 8
  br label %171

51:                                               ; preds = %45, %41, %37, %33, %29, %25
  %52 = call %struct.TYPE_20__* @malloc(i32 40)
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %54 = icmp ne %struct.TYPE_20__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %56, i64* %4, align 8
  br label %150

57:                                               ; preds = %51
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = call i32 @memset(%struct.TYPE_20__* %58, i32 0, i32 40)
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %64, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcasecmp(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %57
  %74 = load i32, i32* @MP4_BRAND_3GP5, align 4
  store i32 %74, i32* %7, align 4
  br label %91

75:                                               ; preds = %57
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @strcasecmp(i8* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @MP4_BRAND_SKM2, align 4
  store i32 %80, i32* %7, align 4
  br label %90

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @strcasecmp(i8* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @MP4_BRAND_QT, align 4
  store i32 %86, i32* %7, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @MP4_BRAND_ISOM, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = call i64 @vc_container_writer_extraio_create_null(%struct.TYPE_19__* %95, %struct.TYPE_21__* %97)
  store i64 %98, i64* %4, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %150

103:                                              ; preds = %91
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 3
  %107 = call i64 @vc_container_writer_extraio_create_temp(%struct.TYPE_19__* %104, i32* %106)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %150

112:                                              ; preds = %103
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %114 = load i32, i32* @MP4_BOX_TYPE_FTYP, align 4
  %115 = call i64 @mp4_write_box(%struct.TYPE_19__* %113, i32 %114)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %150

120:                                              ; preds = %112
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %122 = call i8* @STREAM_POSITION(%struct.TYPE_19__* %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %126 = call i32 @WRITE_U32(%struct.TYPE_19__* %125, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = call i32 @VC_FOURCC(i8 signext 109, i8 signext 100, i8 signext 97, i8 signext 116)
  %129 = call i32 @WRITE_FOURCC(%struct.TYPE_19__* %127, i32 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = call i8* @STREAM_POSITION(%struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* @mp4_writer_close, align 4
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* @mp4_writer_write, align 4
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  %144 = load i32, i32* @mp4_writer_control, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  %149 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %149, i64* %2, align 8
  br label %171

150:                                              ; preds = %119, %111, %102, %55
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = call i32 @LOG_DEBUG(%struct.TYPE_19__* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = icmp ne %struct.TYPE_20__* %153, null
  br i1 %154, label %155, label %169

155:                                              ; preds = %150
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %155
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = call i32 @vc_container_writer_extraio_delete(%struct.TYPE_19__* %162, %struct.TYPE_21__* %164)
  br label %166

166:                                              ; preds = %161, %155
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = call i32 @free(%struct.TYPE_20__* %167)
  br label %169

169:                                              ; preds = %166, %150
  %170 = load i64, i64* %4, align 8
  store i64 %170, i64* %2, align 8
  br label %171

171:                                              ; preds = %169, %120, %49, %23
  %172 = load i64, i64* %2, align 8
  ret i64 %172
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local %struct.TYPE_20__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @vc_container_writer_extraio_create_null(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i64 @vc_container_writer_extraio_create_temp(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @mp4_write_box(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @STREAM_POSITION(%struct.TYPE_19__*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @vc_container_writer_extraio_delete(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
