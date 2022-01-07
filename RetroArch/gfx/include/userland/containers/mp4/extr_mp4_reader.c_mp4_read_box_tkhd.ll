; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_tkhd.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_tkhd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"modification_time\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"track_ID\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"layer\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"alternate_group\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @mp4_read_box_tkhd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_tkhd(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = call i32 @MP4_READ_U8(%struct.TYPE_14__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = call i32 @MP4_SKIP_U24(%struct.TYPE_14__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = call i32 @MP4_SKIP_U64(%struct.TYPE_14__* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i32 @MP4_SKIP_U64(%struct.TYPE_14__* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = call i32 @MP4_READ_U64(%struct.TYPE_14__* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %30, i32* %8, align 4
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = call i32 @MP4_READ_U32(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %31, %20
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %48, 1000000
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %47, %42
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %61, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %55

64:                                               ; preds = %55
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = call i32 @MP4_SKIP_U16(%struct.TYPE_14__* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %79, %64
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 9
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %73

82:                                               ; preds = %73
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %84 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = call i32 @MP4_SKIP_U32(%struct.TYPE_14__* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = call i32 @STREAM_STATUS(%struct.TYPE_14__* %87)
  ret i32 %88
}

declare dso_local i32 @MP4_READ_U8(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U64(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_READ_U64(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_READ_U32(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
