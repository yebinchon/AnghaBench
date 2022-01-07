; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_vide.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_vide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__**, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"data_reference_index\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pre_defined\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"horizresolution\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"vertresolution\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"frame_count\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@MP4_BOX_TYPE_VIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i64)* @mp4_read_box_vide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_vide(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %13, %struct.TYPE_22__** %6, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %15, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %16, i64 %19
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %28, %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %23, 6
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i32 @MP4_SKIP_U8(%struct.TYPE_21__* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %22

31:                                               ; preds = %22
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %44, %31
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %39, 3
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call i32 @MP4_SKIP_U32(%struct.TYPE_21__* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %38

47:                                               ; preds = %38
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = call i8* @MP4_READ_U16(%struct.TYPE_21__* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  store i8* %49, i8** %56, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %58 = call i8* @MP4_READ_U16(%struct.TYPE_21__* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i8* %58, i8** %65, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %67 = call i32 @MP4_SKIP_U32(%struct.TYPE_21__* %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = call i32 @MP4_SKIP_U32(%struct.TYPE_21__* %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = call i32 @MP4_SKIP_U32(%struct.TYPE_21__* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %73 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %75 = call i32 @MP4_SKIP_BYTES(%struct.TYPE_21__* %74, i32 32)
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %77 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %79 = call i32 @MP4_SKIP_U16(%struct.TYPE_21__* %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i64, i64* %5, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %47
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @MP4_BOX_TYPE_VIDE, align 4
  %86 = call i32 @mp4_read_boxes(%struct.TYPE_21__* %83, i64 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %90

87:                                               ; preds = %47
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %89 = call i32 @STREAM_STATUS(%struct.TYPE_21__* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U16(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_21__*, i8*) #1

declare dso_local i8* @MP4_READ_U16(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @MP4_SKIP_BYTES(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @mp4_read_boxes(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
