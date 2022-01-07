; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_vide.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_vide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"data_reference_index\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"horizresolution\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vertresolution\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"frame_count\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@MP4_BOX_TYPE_ESDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @mp4_write_box_vide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_vide(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %4, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %14, i64 %17
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %26, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 6
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = call i32 @WRITE_U8(%struct.TYPE_22__* %24, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %31 = call i32 @WRITE_U16(%struct.TYPE_22__* %30, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = call i32 @WRITE_U16(%struct.TYPE_22__* %32, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = call i32 @WRITE_U16(%struct.TYPE_22__* %34, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %42, %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %41 = call i32 @WRITE_U32(%struct.TYPE_22__* %40, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %36

45:                                               ; preds = %36
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @WRITE_U16(%struct.TYPE_22__* %46, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @WRITE_U16(%struct.TYPE_22__* %56, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = call i32 @WRITE_U32(%struct.TYPE_22__* %66, i32 4718592, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %69 = call i32 @WRITE_U32(%struct.TYPE_22__* %68, i32 4718592, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = call i32 @WRITE_U32(%struct.TYPE_22__* %70, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %73 = call i32 @WRITE_U16(%struct.TYPE_22__* %72, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %80, %45
  %75 = load i32, i32* %6, align 4
  %76 = icmp ult i32 %75, 32
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call i32 @_WRITE_U8(%struct.TYPE_22__* %78, i32 0)
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %74

83:                                               ; preds = %74
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %85 = call i32 @WRITE_U16(%struct.TYPE_22__* %84, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %87 = call i32 @WRITE_U16(%struct.TYPE_22__* %86, i32 -1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %103 [
    i32 129, label %93
    i32 130, label %96
    i32 128, label %99
  ]

93:                                               ; preds = %83
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = call i32 @mp4_write_box_vide_avcC(%struct.TYPE_22__* %94)
  store i32 %95, i32* %2, align 4
  br label %107

96:                                               ; preds = %83
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = call i32 @mp4_write_box_vide_d263(%struct.TYPE_22__* %97)
  store i32 %98, i32* %2, align 4
  br label %107

99:                                               ; preds = %83
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = load i32, i32* @MP4_BOX_TYPE_ESDS, align 4
  %102 = call i32 @mp4_write_box(%struct.TYPE_22__* %100, i32 %101)
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = call i32 @STREAM_STATUS(%struct.TYPE_22__* %105)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %99, %96, %93
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_22__*, i32, i8*) #1

declare dso_local i32 @_WRITE_U8(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @mp4_write_box_vide_avcC(%struct.TYPE_22__*) #1

declare dso_local i32 @mp4_write_box_vide_d263(%struct.TYPE_22__*) #1

declare dso_local i32 @mp4_write_box(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
