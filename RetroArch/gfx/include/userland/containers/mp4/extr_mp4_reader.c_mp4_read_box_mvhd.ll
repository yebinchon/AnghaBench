; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_mvhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_mvhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"next_track_ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @mp4_read_box_mvhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_mvhd(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = call i32 @MP4_READ_U8(%struct.TYPE_14__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = call i32 @MP4_SKIP_U24(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @MP4_SKIP_U64(%struct.TYPE_14__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i32 @MP4_SKIP_U64(%struct.TYPE_14__* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call i8* @MP4_READ_U32(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = call i32 @MP4_READ_U64(%struct.TYPE_14__* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %31, i32* %8, align 4
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = call i8* @MP4_READ_U32(%struct.TYPE_14__* %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = call i8* @MP4_READ_U32(%struct.TYPE_14__* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %32, %20
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 %51, 1000000
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %52, %55
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %45
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %72, %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %66

75:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %82, %75
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 9
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %76

85:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 6
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %86

95:                                               ; preds = %86
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = call i32 @STREAM_STATUS(%struct.TYPE_14__* %98)
  ret i32 %99
}

declare dso_local i32 @MP4_READ_U8(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U64(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @MP4_READ_U32(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_READ_U64(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
