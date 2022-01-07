; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_slice_end.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg12dec.c_slice_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_17__*)* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"hardware accelerator failed to decode picture\0A\00", align 1
@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@FF_QSCALE_TYPE_MPEG2 = common dso_local global i32 0, align 4
@FF_THREAD_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @slice_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slice_end(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = icmp ne %struct.TYPE_18__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %151

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 7
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = call i32 %40(%struct.TYPE_17__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %33
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 @av_log(%struct.TYPE_16__* %48, i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %151

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %150, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %150, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = call i32 @ff_er_frame_end(i32* %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = call i32 @ff_mpv_frame_end(%struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %63
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74, %63
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @av_frame_ref(i32* %80, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %151

91:                                               ; preds = %79
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @ff_print_debug_info(%struct.TYPE_14__* %92, %struct.TYPE_18__* %95, i32* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = load i32, i32* @FF_QSCALE_TYPE_MPEG2, align 4
  %104 = call i32 @ff_mpv_export_qp_table(%struct.TYPE_14__* %98, i32* %99, %struct.TYPE_18__* %102, i32 %103)
  br label %149

105:                                              ; preds = %74
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @FF_THREAD_FRAME, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = icmp ne %struct.TYPE_18__* %120, null
  br i1 %121, label %122, label %148

122:                                              ; preds = %117
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @av_frame_ref(i32* %123, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  store i32 %133, i32* %3, align 4
  br label %151

134:                                              ; preds = %122
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %137, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @ff_print_debug_info(%struct.TYPE_14__* %135, %struct.TYPE_18__* %138, i32* %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = load i32, i32* @FF_QSCALE_TYPE_MPEG2, align 4
  %147 = call i32 @ff_mpv_export_qp_table(%struct.TYPE_14__* %141, i32* %142, %struct.TYPE_18__* %145, i32 %146)
  br label %148

148:                                              ; preds = %134, %117
  br label %149

149:                                              ; preds = %148, %91
  store i32 1, i32* %3, align 4
  br label %151

150:                                              ; preds = %58, %53
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %150, %149, %132, %89, %47, %25
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @ff_er_frame_end(i32*) #1

declare dso_local i32 @ff_mpv_frame_end(%struct.TYPE_14__*) #1

declare dso_local i32 @av_frame_ref(i32*, i32) #1

declare dso_local i32 @ff_print_debug_info(%struct.TYPE_14__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ff_mpv_export_qp_table(%struct.TYPE_14__*, i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
