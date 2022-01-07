; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_hdlr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_box_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }

@VC_CONTAINER_ES_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pre-defined\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"handler_type\00", align 1
@MP4_BOX_TYPE_VIDE = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_SOUN = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i32 0, align 4
@MP4_BOX_TYPE_TEXT = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_SUBPICTURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@MP4_BRAND_QT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"string_size\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @mp4_read_box_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_box_hdlr(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %6, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %19, i64 %22
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %7, align 8
  %25 = load i32, i32* @VC_CONTAINER_ES_TYPE_UNKNOWN, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 24
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %2
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = call i32 @MP4_SKIP_U8(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = call i32 @MP4_SKIP_U24(%struct.TYPE_17__* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %36 = call i32 @MP4_SKIP_U32(%struct.TYPE_17__* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = call i64 @MP4_READ_FOURCC(%struct.TYPE_17__* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @MP4_BOX_TYPE_VIDE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %30
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @MP4_BOX_TYPE_SOUN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @VC_CONTAINER_ES_TYPE_AUDIO, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @MP4_BOX_TYPE_TEXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  store i64 0, i64* %8, align 8
  br label %62

62:                                               ; preds = %68, %56
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %63, 3
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @MP4_SKIP_U32(%struct.TYPE_17__* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %62

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %10, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MP4_BRAND_QT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %81 = call i64 @MP4_READ_U8(%struct.TYPE_17__* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %79, %71
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @VC_CONTAINER_ERROR_CORRUPTED, align 4
  store i32 %86, i32* %3, align 4
  br label %101

87:                                               ; preds = %82
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp sgt i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @MP4_SKIP_STRING(%struct.TYPE_17__* %96, i64 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = call i32 @STREAM_STATUS(%struct.TYPE_17__* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %85, %28
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @MP4_SKIP_U8(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U24(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MP4_SKIP_U32(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @MP4_READ_FOURCC(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @MP4_READ_U8(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @MP4_SKIP_STRING(%struct.TYPE_17__*, i64, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
