; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dump_extradata_bsf.c_dump_extradata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dump_extradata_bsf.c_dump_extradata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64 }

@DUMP_FREQ_ALL = common dso_local global i64 0, align 8
@DUMP_FREQ_KEYFRAME = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @dump_extradata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_extradata(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %16 = call i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__* %14, %struct.TYPE_17__* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %152

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %143

28:                                               ; preds = %21
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DUMP_FREQ_ALL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DUMP_FREQ_KEYFRAME, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %143

40:                                               ; preds = %34
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %143

47:                                               ; preds = %40, %28
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %50, %55
  br i1 %56, label %57, label %143

57:                                               ; preds = %47
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @memcmp(i64 %60, i64 %65, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %143

73:                                               ; preds = %57
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @INT_MAX, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %77, %82
  %84 = icmp sge i64 %76, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %73
  %86 = load i32, i32* @ERANGE, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %8, align 4
  br label %148

88:                                               ; preds = %73
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %92, %97
  %99 = call i32 @av_new_packet(%struct.TYPE_17__* %89, i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %148

103:                                              ; preds = %88
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %106 = call i32 @av_packet_copy_props(%struct.TYPE_17__* %104, %struct.TYPE_17__* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = call i32 @av_packet_unref(%struct.TYPE_17__* %110)
  br label %148

112:                                              ; preds = %103
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i64 %115, i64 %120, i64 %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %129, %134
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @memcpy(i64 %135, i64 %138, i64 %141)
  br label %147

143:                                              ; preds = %57, %47, %40, %34, %21
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %146 = call i32 @av_packet_move_ref(%struct.TYPE_17__* %144, %struct.TYPE_17__* %145)
  br label %147

147:                                              ; preds = %143, %112
  br label %148

148:                                              ; preds = %147, %109, %102, %85
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = call i32 @av_packet_unref(%struct.TYPE_17__* %149)
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %19
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @ff_bsf_get_packet_ref(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i64, i64, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @av_packet_copy_props(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @av_packet_move_ref(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
