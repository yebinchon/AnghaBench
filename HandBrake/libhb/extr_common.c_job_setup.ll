; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_job_setup.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_job_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, i64*, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, i64*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }

@HB_ANAMORPHIC_NONE = common dso_local global i32 0, align 4
@HB_KEEP_DISPLAY_ASPECT = common dso_local global i32 0, align 4
@HB_VCODEC_FFMPEG_MPEG4 = common dso_local global i32 0, align 4
@HB_INVALID_VIDEO_QUALITY = common dso_local global i32 0, align 4
@HB_PASS_ENCODE = common dso_local global i32 0, align 4
@AV_PIX_FMT_YUV420P = common dso_local global i32 0, align 4
@HB_COLR_PRI_UNDEF = common dso_local global i32 0, align 4
@HB_COLR_TRA_UNDEF = common dso_local global i32 0, align 4
@HB_COLR_MAT_UNDEF = common dso_local global i32 0, align 4
@HB_MUX_MP4 = common dso_local global i32 0, align 4
@HB_DECODE_SUPPORT_QSV = common dso_local global i32 0, align 4
@HB_QSV_ASYNC_DEPTH_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_17__*)* @job_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @job_setup(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = icmp eq %struct.TYPE_18__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = icmp eq %struct.TYPE_17__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %169

14:                                               ; preds = %10
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 28
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %17, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hb_list_count(i32 %22)
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 27
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hb_chapter_list_copy(i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 26
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 25
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i64* %34, i32 %37, i32 16)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 9
  %41 = bitcast %struct.TYPE_19__* %6 to i8*
  %42 = bitcast %struct.TYPE_19__* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = call i32 @memset(%struct.TYPE_20__* %7, i32 0, i32 32)
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @memcpy(i64* %45, i32 %48, i32 16)
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %51, %55
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %56, %60
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %70, %74
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @HB_ANAMORPHIC_NONE, align 4
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @HB_KEEP_DISPLAY_ASPECT, align 4
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = call i32 @hb_set_anamorphic_size2(%struct.TYPE_19__* %6, %struct.TYPE_20__* %7, %struct.TYPE_19__* %5)
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 24
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 23
  store i64 %88, i64* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 22
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @HB_VCODEC_FFMPEG_MPEG4, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 21
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @HB_INVALID_VIDEO_QUALITY, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 20
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  store i32 1000, i32* %102, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 19
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @HB_PASS_ENCODE, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 18
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 17
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @AV_PIX_FMT_YUV420P, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 16
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 15
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 14
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 13
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 12
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* @HB_COLR_PRI_UNDEF, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 11
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @HB_COLR_TRA_UNDEF, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @HB_COLR_MAT_UNDEF, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @HB_MUX_MP4, align 4
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 8
  %148 = call i8* (...) @hb_list_init()
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 7
  store i8* %148, i8** %150, align 8
  %151 = call i8* (...) @hb_list_init()
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  %154 = call i8* (...) @hb_list_init()
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @hb_attachment_list_copy(i32 %159)
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @hb_metadata_copy(i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %14, %13
  ret void
}

declare dso_local i32 @hb_list_count(i32) #1

declare dso_local i32 @hb_chapter_list_copy(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @hb_set_anamorphic_size2(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i8* @hb_list_init(...) #1

declare dso_local i32 @hb_attachment_list_copy(i32) #1

declare dso_local i32 @hb_metadata_copy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
