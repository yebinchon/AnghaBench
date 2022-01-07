; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapistd.c_jpeg_write_raw_data.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapistd.c_jpeg_write_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32)* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*)*, i64 }
%struct.TYPE_11__ = type { i64, i64, i32 (i32)* }

@CSTATE_RAW_OK = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@JWRN_TOO_MUCH_DATA = common dso_local global i32 0, align 4
@DCTSIZE = common dso_local global i32 0, align 4
@JERR_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jpeg_write_raw_data(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CSTATE_RAW_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = load i32, i32* @JERR_BAD_STATE, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @ERREXIT1(%struct.TYPE_14__* %15, i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = load i32, i32* @JWRN_TOO_MUCH_DATA, align 4
  %32 = call i32 @WARNMS(%struct.TYPE_14__* %30, i32 %31)
  store i32 0, i32* %4, align 4
  br label %108

33:                                               ; preds = %21
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = icmp ne %struct.TYPE_11__* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i64 %48, i64* %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = ptrtoint %struct.TYPE_14__* %58 to i32
  %60 = call i32 %57(i32 %59)
  br label %61

61:                                               ; preds = %38, %33
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %72, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = call i32 %73(%struct.TYPE_14__* %74)
  br label %76

76:                                               ; preds = %68, %61
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DCTSIZE, align 4
  %81 = mul nsw i32 %79, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load i32, i32* @JERR_BUFFER_SIZE, align 4
  %88 = call i32 @ERREXIT(%struct.TYPE_14__* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %76
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 %94(%struct.TYPE_14__* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 0, i32* %4, align 4
  br label %108

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %99, %29
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @ERREXIT1(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @WARNMS(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
