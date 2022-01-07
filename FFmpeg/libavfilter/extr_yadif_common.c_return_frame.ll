; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_yadif_common.c_return_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_yadif_common.c_return_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32)* }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@YADIF_FIELD_BACK_END = common dso_local global i64 0, align 8
@YADIF_FIELD_END = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @return_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_frame(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 0
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %7, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  br label %38

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %36, %31 ], [ 1, %37 ]
  store i32 %39, i32* %8, align 4
  br label %45

40:                                               ; preds = %2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %40, %38
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %45
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_17__* %49, i32 %52, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 4
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %58, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %3, align 4
  br label %164

66:                                               ; preds = %48
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = call i32 @av_frame_copy_props(%struct.TYPE_19__* %69, %struct.TYPE_14__* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @YADIF_FIELD_BACK_END, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load i64, i64* @YADIF_FIELD_END, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %66
  br label %88

88:                                               ; preds = %87, %45
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 7
  %91 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i32)** %90, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = xor i32 %96, %100
  %102 = load i32, i32* %8, align 4
  %103 = call i32 %91(%struct.TYPE_18__* %92, %struct.TYPE_19__* %95, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %139

106:                                              ; preds = %88
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %10, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %11, align 8
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %106
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  store i64 %127, i64* %131, align 8
  br label %138

132:                                              ; preds = %120, %106
  %133 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  store i64 %133, i64* %137, align 8
  br label %138

138:                                              ; preds = %132, %124
  br label %139

139:                                              ; preds = %138, %88
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %142, i64 0
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = call i32 @ff_filter_frame(%struct.TYPE_17__* %144, %struct.TYPE_19__* %147)
  store i32 %148, i32* %9, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %154, %139
  %159 = phi i1 [ false, %139 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %158, %63
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_19__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
