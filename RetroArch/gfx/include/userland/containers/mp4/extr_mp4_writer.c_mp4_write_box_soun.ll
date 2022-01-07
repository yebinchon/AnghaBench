; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_soun.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_soun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"data_reference_index\00", align 1
@MP4_BRAND_QT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"revision_level\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"channelcount\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"samplesize\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"samples_per_packet\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"bytes_per_packet\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"bytes_per_frame\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"bytes_per_sample\00", align 1
@MP4_BOX_TYPE_ESDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @mp4_write_box_soun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_soun(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %15, i64 %18
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %27, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %22, 6
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %26 = call i32 @WRITE_U8(%struct.TYPE_22__* %25, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = call i32 @WRITE_U16(%struct.TYPE_22__* %31, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MP4_BRAND_QT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 129
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @WRITE_U16(%struct.TYPE_22__* %47, i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = call i32 @WRITE_U16(%struct.TYPE_22__* %50, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %53 = call i32 @WRITE_U32(%struct.TYPE_22__* %52, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %65

54:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %61, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %60 = call i32 @WRITE_U32(%struct.TYPE_22__* %59, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %55

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %46
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WRITE_U16(%struct.TYPE_22__* %66, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %77 = call i32 @WRITE_U16(%struct.TYPE_22__* %76, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call i32 @WRITE_U16(%struct.TYPE_22__* %78, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = call i32 @WRITE_U16(%struct.TYPE_22__* %80, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 16
  %92 = call i32 @WRITE_U32(%struct.TYPE_22__* %82, i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MP4_BRAND_QT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %65
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = call i32 @WRITE_U32(%struct.TYPE_22__* %102, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %105 = call i32 @WRITE_U32(%struct.TYPE_22__* %104, i32 1536, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = call i32 @WRITE_U32(%struct.TYPE_22__* %106, i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %109 = call i32 @WRITE_U32(%struct.TYPE_22__* %108, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %110

110:                                              ; preds = %101, %98, %65
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  switch i32 %115, label %129 [
    i32 133, label %116
    i32 132, label %116
    i32 131, label %119
    i32 130, label %122
    i32 129, label %125
    i32 128, label %125
  ]

116:                                              ; preds = %110, %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %118 = call i32 @mp4_write_box_soun_damr(%struct.TYPE_22__* %117)
  store i32 %118, i32* %2, align 4
  br label %133

119:                                              ; preds = %110
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = call i32 @mp4_write_box_soun_dawp(%struct.TYPE_22__* %120)
  store i32 %121, i32* %2, align 4
  br label %133

122:                                              ; preds = %110
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = call i32 @mp4_write_box_soun_devc(%struct.TYPE_22__* %123)
  store i32 %124, i32* %2, align 4
  br label %133

125:                                              ; preds = %110, %110
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = load i32, i32* @MP4_BOX_TYPE_ESDS, align 4
  %128 = call i32 @mp4_write_box(%struct.TYPE_22__* %126, i32 %127)
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = call i32 @STREAM_STATUS(%struct.TYPE_22__* %131)
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %125, %122, %119, %116
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @mp4_write_box_soun_damr(%struct.TYPE_22__*) #1

declare dso_local i32 @mp4_write_box_soun_dawp(%struct.TYPE_22__*) #1

declare dso_local i32 @mp4_write_box_soun_devc(%struct.TYPE_22__*) #1

declare dso_local i32 @mp4_write_box(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
