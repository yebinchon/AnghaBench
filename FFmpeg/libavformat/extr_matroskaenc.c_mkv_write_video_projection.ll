; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_video_projection.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_write_video_projection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32 }

@AV_PKT_DATA_SPHERICAL = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOPROJECTIONTYPE = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOPROJECTIONPRIVATE = common dso_local global i32 0, align 4
@MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown projection type\0A\00", align 1
@MATROSKA_ID_VIDEOPROJECTIONPOSEYAW = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOPROJECTIONPOSEROLL = common dso_local global i32 0, align 4
@MATROSKA_ID_VIDEOPROJECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @mkv_write_video_projection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_write_video_projection(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca [20 x i32], align 16
  %15 = alloca %struct.TYPE_2__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @AV_PKT_DATA_SPHERICAL, align 4
  %19 = call i64 @av_stream_get_side_data(i32* %17, i32 %18, i32* %10)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %15, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

24:                                               ; preds = %3
  %25 = call i32 @avio_open_dyn_buf(i32** %9)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %152

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %86 [
    i32 129, label %34
    i32 128, label %39
    i32 130, label %68
  ]

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONTYPE, align 4
  %37 = load i32, i32* @MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR, align 4
  %38 = call i32 @put_ebml_uint(i32* %35, i32 %36, i32 %37)
  br label %90

39:                                               ; preds = %30
  %40 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %41 = call i32 @ffio_init_context(i32* %8, i32* %40, i32 20, i32 1, i32* null, i32* null, i32* null, i32* null)
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONTYPE, align 4
  %44 = load i32, i32* @MATROSKA_VIDEO_PROJECTION_TYPE_EQUIRECTANGULAR, align 4
  %45 = call i32 @put_ebml_uint(i32* %42, i32 %43, i32 %44)
  %46 = call i32 @avio_wb32(i32* %8, i32 0)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @avio_wb32(i32* %8, i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @avio_wb32(i32* %8, i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @avio_wb32(i32* %8, i32 %57)
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @avio_wb32(i32* %8, i32 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONPRIVATE, align 4
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %66 = call i32 @avio_tell(i32* %8)
  %67 = call i32 @put_ebml_binary(i32* %63, i32 %64, i32* %65, i32 %66)
  br label %90

68:                                               ; preds = %30
  %69 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %70 = call i32 @ffio_init_context(i32* %8, i32* %69, i32 12, i32 1, i32* null, i32* null, i32* null, i32* null)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONTYPE, align 4
  %73 = load i32, i32* @MATROSKA_VIDEO_PROJECTION_TYPE_CUBEMAP, align 4
  %74 = call i32 @put_ebml_uint(i32* %71, i32 %72, i32 %73)
  %75 = call i32 @avio_wb32(i32* %8, i32 0)
  %76 = call i32 @avio_wb32(i32* %8, i32 0)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @avio_wb32(i32* %8, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONPRIVATE, align 4
  %83 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 0, i64 0
  %84 = call i32 @avio_tell(i32* %8)
  %85 = call i32 @put_ebml_binary(i32* %81, i32 %82, i32* %83, i32 %84)
  br label %90

86:                                               ; preds = %30
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @AV_LOG_WARNING, align 4
  %89 = call i32 @av_log(i32* %87, i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %133

90:                                               ; preds = %68, %39, %34
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONPOSEYAW, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %101, 6.553600e+04
  %103 = call i32 @put_ebml_float(i32* %96, i32 %97, double %102)
  br label %104

104:                                              ; preds = %95, %90
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONPOSEPITCH, align 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to double
  %116 = fdiv double %115, 6.553600e+04
  %117 = call i32 @put_ebml_float(i32* %110, i32 %111, double %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %118
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTIONPOSEROLL, align 4
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to double
  %130 = fdiv double %129, 6.553600e+04
  %131 = call i32 @put_ebml_float(i32* %124, i32 %125, double %130)
  br label %132

132:                                              ; preds = %123, %118
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @avio_close_dyn_buf(i32* %134, i32** %13)
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* @MATROSKA_ID_VIDEOPROJECTION, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @start_ebml_master(i32* %139, i32 %140, i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @avio_write(i32* %143, i32* %144, i32 %145)
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @end_ebml_master(i32* %147, i32 %148)
  br label %150

150:                                              ; preds = %138, %133
  %151 = call i32 @av_freep(i32** %13)
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %150, %28, %23
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i64 @av_stream_get_side_data(i32*, i32, i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @put_ebml_uint(i32*, i32, i32) #1

declare dso_local i32 @ffio_init_context(i32*, i32*, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @put_ebml_binary(i32*, i32, i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @put_ebml_float(i32*, i32, double) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @start_ebml_master(i32*, i32, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @end_ebml_master(i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
