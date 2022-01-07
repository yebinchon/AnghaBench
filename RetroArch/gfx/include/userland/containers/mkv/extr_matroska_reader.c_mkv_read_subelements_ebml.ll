; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_ebml.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mkv/extr_matroska_reader.c_mkv_read_subelements_ebml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MKV_ELEMENT_ID_DOCTYPE = common dso_local global i32 0, align 4
@__const.mkv_read_subelements_ebml.doctype = private unnamed_addr constant [17 x i8] c"matroska doctype\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"matroska\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"webm\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid doctype\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32, i32)* @mkv_read_subelements_ebml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mkv_read_subelements_ebml(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [17 x i8], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MKV_ELEMENT_ID_DOCTYPE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %3
  %22 = bitcast [17 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.mkv_read_subelements_ebml.doctype, i32 0, i32 0), i64 17, i1 false)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %64

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 17
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %64

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @READ_STRING(%struct.TYPE_10__* %31, i8* %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i64 @STREAM_STATUS(%struct.TYPE_10__* %39)
  store i64 %40, i64* %4, align 8
  br label %102

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 8
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %50
  br label %64

60:                                               ; preds = %54, %45
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %63, i64* %4, align 8
  br label %102

64:                                               ; preds = %59, %29, %25
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = call i32 @LOG_DEBUG(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %67, i64* %4, align 8
  br label %102

68:                                               ; preds = %3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @mkv_read_element_data_uint(%struct.TYPE_10__* %69, i32 %70, i32* %10)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %4, align 8
  br label %102

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %98 [
    i32 128, label %79
    i32 129, label %79
    i32 131, label %85
    i32 130, label %91
    i32 132, label %97
    i32 133, label %97
  ]

79:                                               ; preds = %77, %77
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %83, i64* %4, align 8
  br label %102

84:                                               ; preds = %79
  br label %99

85:                                               ; preds = %77
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 4
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %89, i64* %4, align 8
  br label %102

90:                                               ; preds = %85
  br label %99

91:                                               ; preds = %77
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 8
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %95, i64* %4, align 8
  br label %102

96:                                               ; preds = %91
  br label %99

97:                                               ; preds = %77, %77
  br label %98

98:                                               ; preds = %77, %97
  br label %99

99:                                               ; preds = %98, %96, %90, %84
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = call i64 @STREAM_STATUS(%struct.TYPE_10__* %100)
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %99, %94, %88, %82, %75, %64, %60, %38
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @READ_STRING(%struct.TYPE_10__*, i8*, i32, i8*) #2

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_10__*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_10__*, i8*) #2

declare dso_local i64 @mkv_read_element_data_uint(%struct.TYPE_10__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
