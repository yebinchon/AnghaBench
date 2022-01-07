; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_hdlr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_writer.c_mp4_write_box_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__**, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }

@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_TYPE_SUBPICTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MP4_BRAND_QT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"component_type\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pre-defined\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"handler_type\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Video Media Handler\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Audio Media Handler\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Text Media Handler\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"string_size\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @mp4_write_box_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_write_box_hdlr(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %16, i64 %19
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @VC_FOURCC(i8 signext 118, i8 signext 105, i8 signext 100, i8 signext 101)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @VC_FOURCC(i8 signext 115, i8 signext 111, i8 signext 117, i8 signext 110)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @VC_FOURCC(i8 signext 116, i8 signext 101, i8 signext 120, i8 signext 116)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %41
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = call i32 @WRITE_U8(%struct.TYPE_16__* %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %55 = call i32 @WRITE_U24(%struct.TYPE_16__* %54, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MP4_BRAND_QT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = call i32 @VC_FOURCC(i8 signext 109, i8 signext 104, i8 signext 108, i8 signext 114)
  %64 = call i32 @WRITE_FOURCC(%struct.TYPE_16__* %62, i32 %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %68

65:                                               ; preds = %51
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %67 = call i32 @WRITE_U32(%struct.TYPE_16__* %66, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WRITE_FOURCC(%struct.TYPE_16__* %69, i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %78, %68
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 3
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = call i32 @WRITE_U32(%struct.TYPE_16__* %76, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %72

81:                                               ; preds = %72
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VC_CONTAINER_ES_TYPE_VIDEO, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  store i32 20, i32* %6, align 4
  br label %111

90:                                               ; preds = %81
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VC_CONTAINER_ES_TYPE_AUDIO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  store i32 20, i32* %6, align 4
  br label %110

99:                                               ; preds = %90
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VC_CONTAINER_ES_TYPE_SUBPICTURE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  store i32 19, i32* %6, align 4
  br label %109

108:                                              ; preds = %99
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %107
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MP4_BRAND_QT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %6, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @WRITE_U8(%struct.TYPE_16__* %120, i32 %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @WRITE_STRING(%struct.TYPE_16__* %124, i8* %125, i32 %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = call i32 @STREAM_STATUS(%struct.TYPE_16__* %128)
  ret i32 %129
}

declare dso_local i32 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @WRITE_U8(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_U24(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_FOURCC(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_U32(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @WRITE_STRING(%struct.TYPE_16__*, i8*, i32, i8*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
