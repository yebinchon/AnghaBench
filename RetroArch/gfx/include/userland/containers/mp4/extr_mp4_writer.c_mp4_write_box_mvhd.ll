; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_mvhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_mvhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }

@mp4_write_box_mvhd.matrix = internal global [9 x i32] [i32 65536, i32 0, i32 0, i32 0, i32 65536, i32 0, i32 0, i32 0, i32 1073741824], align 16
@MP4_64BITS_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@MP4_TIMESCALE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"timescale\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"next_track_ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @mp4_write_box_mvhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_mvhd(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %8 = load i32, i32* @MP4_64BITS_TIME, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @WRITE_U8(%struct.TYPE_15__* %9, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %13 = call i32 @WRITE_U24(%struct.TYPE_15__* %12, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %52, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %25, i64 %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %5, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %6, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %22
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %60 = call i32 @WRITE_U64(%struct.TYPE_15__* %59, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = call i32 @WRITE_U64(%struct.TYPE_15__* %61, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load i32, i32* @MP4_TIMESCALE, align 4
  %65 = call i32 @WRITE_U32(%struct.TYPE_15__* %63, i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @MP4_TIMESCALE, align 4
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %69, %71
  %73 = sdiv i64 %72, 1000000
  %74 = trunc i64 %73 to i32
  %75 = call i32 @WRITE_U64(%struct.TYPE_15__* %66, i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %94

76:                                               ; preds = %55
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %78 = call i32 @WRITE_U32(%struct.TYPE_15__* %77, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %80 = call i32 @WRITE_U32(%struct.TYPE_15__* %79, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %82 = load i32, i32* @MP4_TIMESCALE, align 4
  %83 = call i32 @WRITE_U32(%struct.TYPE_15__* %81, i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @MP4_TIMESCALE, align 4
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %87, %89
  %91 = sdiv i64 %90, 1000000
  %92 = trunc i64 %91 to i32
  %93 = call i32 @WRITE_U32(%struct.TYPE_15__* %84, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %94

94:                                               ; preds = %76, %58
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = call i32 @WRITE_U32(%struct.TYPE_15__* %95, i32 65536, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %98 = call i32 @WRITE_U16(%struct.TYPE_15__* %97, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %100 = call i32 @WRITE_U16(%struct.TYPE_15__* %99, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %107, %94
  %102 = load i32, i32* %4, align 4
  %103 = icmp ult i32 %102, 2
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %106 = call i32 @WRITE_U32(%struct.TYPE_15__* %105, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %101

110:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %121, %110
  %112 = load i32, i32* %4, align 4
  %113 = icmp ult i32 %112, 9
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [9 x i32], [9 x i32]* @mp4_write_box_mvhd.matrix, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @WRITE_U32(%struct.TYPE_15__* %115, i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %4, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %111

124:                                              ; preds = %111
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i32, i32* %4, align 4
  %127 = icmp ult i32 %126, 6
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %130 = call i32 @WRITE_U32(%struct.TYPE_15__* %129, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %4, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %125

134:                                              ; preds = %125
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add i32 %138, 1
  %140 = call i32 @WRITE_U32(%struct.TYPE_15__* %135, i32 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %142 = call i32 @STREAM_STATUS(%struct.TYPE_15__* %141)
  ret i32 %142
}

declare dso_local i32 @WRITE_U8(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @WRITE_U64(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @WRITE_U16(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
