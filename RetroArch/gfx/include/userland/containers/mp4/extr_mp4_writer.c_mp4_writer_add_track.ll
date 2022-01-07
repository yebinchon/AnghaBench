; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_writer_add_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_writer_add_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i64 }

@VC_CONTAINER_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@MP4_TRACKS_MAX = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STTS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSZ = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSC = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STCO = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_STSS = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_CO64 = common dso_local global i64 0, align 8
@MP4_SAMPLE_TABLE_CTTS = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @mp4_writer_add_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_writer_add_track(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION, align 8
  store i64 %16, i64* %3, align 8
  br label %204

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %58 [
    i32 142, label %21
    i32 141, label %23
    i32 140, label %25
    i32 139, label %27
    i32 130, label %29
    i32 128, label %31
    i32 129, label %33
    i32 136, label %35
    i32 138, label %37
    i32 137, label %39
    i32 135, label %48
    i32 134, label %50
    i32 133, label %52
    i32 132, label %54
    i32 131, label %56
  ]

21:                                               ; preds = %17
  %22 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 97, i8 signext 109, i8 signext 114)
  store i64 %22, i64* %8, align 8
  br label %59

23:                                               ; preds = %17
  %24 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 97, i8 signext 119, i8 signext 98)
  store i64 %24, i64* %8, align 8
  br label %59

25:                                               ; preds = %17
  %26 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 97, i8 signext 119, i8 signext 112)
  store i64 %26, i64* %8, align 8
  br label %59

27:                                               ; preds = %17
  %28 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 101, i8 signext 118, i8 signext 99)
  store i64 %28, i64* %8, align 8
  br label %59

29:                                               ; preds = %17
  %30 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 97)
  store i64 %30, i64* %8, align 8
  br label %59

31:                                               ; preds = %17
  %32 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 97)
  store i64 %32, i64* %8, align 8
  br label %59

33:                                               ; preds = %17
  %34 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 118)
  store i64 %34, i64* %8, align 8
  br label %59

35:                                               ; preds = %17
  %36 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 52, i8 signext 118)
  store i64 %36, i64* %8, align 8
  br label %59

37:                                               ; preds = %17
  %38 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 50, i8 signext 54, i8 signext 51)
  store i64 %38, i64* %8, align 8
  br label %59

39:                                               ; preds = %17
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 99, i8 signext 67)
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i64 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 99, i8 signext 49)
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %45, %39
  br label %59

48:                                               ; preds = %17
  %49 = call i64 @VC_FOURCC(i8 signext 106, i8 signext 112, i8 signext 101, i8 signext 103)
  store i64 %49, i64* %8, align 8
  br label %59

50:                                               ; preds = %17
  %51 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 106, i8 signext 112, i8 signext 97)
  store i64 %51, i64* %8, align 8
  br label %59

52:                                               ; preds = %17
  %53 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 106, i8 signext 112, i8 signext 98)
  store i64 %53, i64* %8, align 8
  br label %59

54:                                               ; preds = %17
  %55 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 101, i8 signext 103)
  store i64 %55, i64* %8, align 8
  br label %59

56:                                               ; preds = %17
  %57 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 112, i8 signext 101, i8 signext 103)
  store i64 %57, i64* %8, align 8
  br label %59

58:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %58, %56, %54, %52, %50, %48, %47, %37, %35, %33, %31, %29, %27, %25, %23, %21
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* @VC_CONTAINER_ERROR_TRACK_FORMAT_NOT_SUPPORTED, align 8
  store i64 %63, i64* %3, align 8
  br label %204

64:                                               ; preds = %59
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MP4_TRACKS_MAX, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 8
  store i64 %71, i64* %3, align 8
  br label %204

72:                                               ; preds = %64
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = call %struct.TYPE_19__* @vc_container_allocate_track(%struct.TYPE_20__* %73, i32 24)
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %7, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %77, i64 %80
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = icmp ne %struct.TYPE_19__* %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %72
  %85 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %85, i64* %3, align 8
  br label %204

86:                                               ; preds = %72
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @vc_container_track_allocate_extradata(%struct.TYPE_20__* %92, %struct.TYPE_19__* %93, i32 %96)
  store i64 %97, i64* %6, align 8
  %98 = load i64, i64* %6, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %199

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %86
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @vc_container_format_copy(i32 %105, %struct.TYPE_21__* %106, i32 %109)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  store i64 %111, i64* %117, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i64, i64* @MP4_SAMPLE_TABLE_STTS, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  store i32 8, i32* %133, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load i64, i64* @MP4_SAMPLE_TABLE_STSZ, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i32 4, i32* %143, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = load i64, i64* @MP4_SAMPLE_TABLE_STSC, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i32 12, i32* %153, align 4
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i64, i64* @MP4_SAMPLE_TABLE_STCO, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  store i32 4, i32* %163, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = load i64, i64* @MP4_SAMPLE_TABLE_STSS, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  store i32 4, i32* %173, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = load i64, i64* @MP4_SAMPLE_TABLE_CO64, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  store i32 8, i32* %183, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = load i64, i64* @MP4_SAMPLE_TABLE_CTTS, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  store i32 8, i32* %193, align 4
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %195, align 8
  %198 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %198, i64* %3, align 8
  br label %204

199:                                              ; preds = %100
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %202 = call i32 @vc_container_free_track(%struct.TYPE_20__* %200, %struct.TYPE_19__* %201)
  %203 = load i64, i64* %6, align 8
  store i64 %203, i64* %3, align 8
  br label %204

204:                                              ; preds = %199, %102, %84, %70, %62, %15
  %205 = load i64, i64* %3, align 8
  ret i64 %205
}

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_19__* @vc_container_allocate_track(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @vc_container_track_allocate_extradata(%struct.TYPE_20__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vc_container_format_copy(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
