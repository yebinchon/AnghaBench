; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_metadata_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/metadata/id3/extr_id3_metadata_reader.c_id3_metadata_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error reading ID3v2 tag (%i)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error reading ID3v1 tag (%i)\00", align 1
@id3_metadata_reader_close = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @id3_metadata_reader_open(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %10 = call i32 @PEEK_BYTES(%struct.TYPE_15__* %8, i8* %9, i32 10)
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %13, i32* %2, align 4
  br label %135

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %47, %14
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 73
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 68
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 51
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = phi i1 [ false, %20 ], [ false, %15 ], [ %29, %25 ]
  br i1 %31, label %32, label %48

32:                                               ; preds = %30
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i32 @id3_read_id3v2_tag(%struct.TYPE_15__* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @LOG_DEBUG(%struct.TYPE_15__* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %44 = call i32 @PEEK_BYTES(%struct.TYPE_15__* %42, i8* %43, i32 10)
  %45 = icmp ne i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %48

47:                                               ; preds = %41
  br label %15

48:                                               ; preds = %46, %30
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call i64 @STREAM_POSITION(%struct.TYPE_15__* %49)
  store i64 %50, i64* %6, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @INT64_C(i32 128)
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %107

60:                                               ; preds = %48
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i64 @STREAM_SEEKABLE(%struct.TYPE_15__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %60
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @INT64_C(i32 128)
  %74 = sub nsw i64 %72, %73
  %75 = call i32 @SEEK(%struct.TYPE_15__* %65, i64 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %77 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %78 = call i32 @PEEK_BYTES(%struct.TYPE_15__* %76, i8* %77, i32 3)
  %79 = icmp ne i32 %78, 3
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %108

81:                                               ; preds = %64
  %82 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 84
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 65
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 71
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = call i32 @id3_read_id3v1_tag(%struct.TYPE_15__* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @LOG_DEBUG(%struct.TYPE_15__* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %101, %96
  br label %106

106:                                              ; preds = %105, %91, %86, %81
  br label %107

107:                                              ; preds = %106, %60, %48
  br label %108

108:                                              ; preds = %107, %80
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = call i64 @STREAM_POSITION(%struct.TYPE_15__* %109)
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @SEEK(%struct.TYPE_15__* %114, i64 %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i32, i32* @id3_metadata_reader_close, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = call i32 @STREAM_STATUS(%struct.TYPE_15__* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %130

128:                                              ; preds = %117
  %129 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %129, i32* %2, align 4
  br label %135

130:                                              ; preds = %127
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @LOG_DEBUG(%struct.TYPE_15__* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %128, %12
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @id3_read_id3v2_tag(%struct.TYPE_15__*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i64 @STREAM_POSITION(%struct.TYPE_15__*) #1

declare dso_local i64 @INT64_C(i32) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_15__*) #1

declare dso_local i32 @SEEK(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @id3_read_id3v1_tag(%struct.TYPE_15__*) #1

declare dso_local i32 @STREAM_STATUS(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
