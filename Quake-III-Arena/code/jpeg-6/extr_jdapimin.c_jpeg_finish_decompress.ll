; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_finish_decompress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdapimin.c_jpeg_finish_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_13__ = type { {}* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_14__*)*, i32 }
%struct.TYPE_11__ = type { {}* }

@DSTATE_SCANNING = common dso_local global i64 0, align 8
@DSTATE_RAW_OK = common dso_local global i64 0, align 8
@JERR_TOO_LITTLE_DATA = common dso_local global i32 0, align 4
@DSTATE_STOPPING = common dso_local global i64 0, align 8
@DSTATE_BUFIMAGE = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@JPEG_SUSPENDED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_finish_decompress(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %4 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DSTATE_SCANNING, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DSTATE_RAW_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = load i32, i32* @JERR_TOO_LITTLE_DATA, align 4
  %31 = call i32 @ERREXIT(%struct.TYPE_14__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = bitcast {}** %36 to i32 (%struct.TYPE_14__*)**
  %38 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call i32 %38(%struct.TYPE_14__* %39)
  %41 = load i64, i64* @DSTATE_STOPPING, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %69

44:                                               ; preds = %15, %9
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DSTATE_BUFIMAGE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @DSTATE_STOPPING, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %68

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DSTATE_STOPPING, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = load i32, i32* @JERR_BAD_STATE, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ERREXIT1(%struct.TYPE_14__* %61, i32 %62, i64 %65)
  br label %67

67:                                               ; preds = %60, %54
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %32
  br label %70

70:                                               ; preds = %90, %69
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %78, label %91

78:                                               ; preds = %70
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i64 (%struct.TYPE_14__*)*, i64 (%struct.TYPE_14__*)** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = call i64 %83(%struct.TYPE_14__* %84)
  %86 = load i64, i64* @JPEG_SUSPENDED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %2, align 4
  br label %104

90:                                               ; preds = %78
  br label %70

91:                                               ; preds = %70
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = bitcast {}** %95 to i32 (%struct.TYPE_14__*)**
  %97 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %96, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = call i32 %97(%struct.TYPE_14__* %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = ptrtoint %struct.TYPE_14__* %100 to i32
  %102 = call i32 @jpeg_abort(i32 %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %91, %88
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @ERREXIT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ERREXIT1(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @jpeg_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
