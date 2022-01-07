; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_send_picture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_avcodec_video_decoder.c_avcodec_send_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_19__, i32, i32, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32*, i64* }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__*, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i64*, i32 }

@MMAL_EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"avpicture_layout failed: %i, %i, %i, %i\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*)* @avcodec_send_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avcodec_send_picture(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34, %24, %2
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @avcodec_send_event_format_changed(%struct.TYPE_20__* %45, i32* %46)
  %48 = load i32, i32* @MMAL_EAGAIN, align 4
  store i32 %48, i32* %3, align 4
  br label %169

49:                                               ; preds = %34
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.TYPE_22__* @mmal_queue_get(i32 %52)
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %7, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %55 = icmp ne %struct.TYPE_22__* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @MMAL_EAGAIN, align 4
  store i32 %57, i32* %3, align 4
  br label %169

58:                                               ; preds = %49
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 7
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @avpicture_layout(i32* %62, i64 %65, i64 %68, i64 %71, i32 %74, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %58
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = call i32 @mmal_queue_put_back(i32 %84, %struct.TYPE_22__* %85)
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %92, i64 %95, i32 %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = load i32, i32* @MMAL_EINVAL, align 4
  %102 = call i32 @mmal_event_error_send(%struct.TYPE_20__* %100, i32 %101)
  %103 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %103, i32* %3, align 4
  br label %169

104:                                              ; preds = %58
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 8
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %161, %104
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %124, 3
  br i1 %125, label %126, label %164

126:                                              ; preds = %123
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 1
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  store i64 %134, i64* %143, align 8
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %151, i32* %160, align 4
  br label %161

161:                                              ; preds = %126
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %123

164:                                              ; preds = %123
  %165 = load i32*, i32** %5, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %167 = call i32 @mmal_port_buffer_header_callback(i32* %165, %struct.TYPE_22__* %166)
  %168 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %164, %81, %56, %44
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @avcodec_send_event_format_changed(%struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_22__* @mmal_queue_get(i32) #1

declare dso_local i32 @avpicture_layout(i32*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @mmal_queue_put_back(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @mmal_event_error_send(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @mmal_port_buffer_header_callback(i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
