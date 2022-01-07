; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapimin.c_jpeg_finish_compress.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcapimin.c_jpeg_finish_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, i64, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)*, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, i32)* }
%struct.TYPE_16__ = type { i64, i64, i32 (i32)* }

@CSTATE_SCANNING = common dso_local global i64 0, align 8
@CSTATE_RAW_OK = common dso_local global i64 0, align 8
@JERR_TOO_LITTLE_DATA = common dso_local global i32 0, align 4
@CSTATE_WRCOEFS = common dso_local global i64 0, align 8
@JERR_BAD_STATE = common dso_local global i32 0, align 4
@JERR_CANT_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jpeg_finish_compress(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %4 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CSTATE_SCANNING, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CSTATE_RAW_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %25 = load i32, i32* @JERR_TOO_LITTLE_DATA, align 4
  %26 = call i32 @ERREXIT(%struct.TYPE_21__* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %34 = call i32 %32(%struct.TYPE_21__* %33)
  br label %49

35:                                               ; preds = %9
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CSTATE_WRCOEFS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %43 = load i32, i32* @JERR_BAD_STATE, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ERREXIT1(%struct.TYPE_21__* %42, i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %41, %35
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %115, %49
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %123

58:                                               ; preds = %50
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %62, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %65 = call i32 %63(%struct.TYPE_21__* %64)
  store i64 0, i64* %3, align 8
  br label %66

66:                                               ; preds = %112, %58
  %67 = load i64, i64* %3, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %66
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = icmp ne %struct.TYPE_16__* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i64, i64* %3, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i64 %85, i64* %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32 (i32)*, i32 (i32)** %93, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %96 = ptrtoint %struct.TYPE_21__* %95 to i32
  %97 = call i32 %94(i32 %96)
  br label %98

98:                                               ; preds = %77, %72
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32 (%struct.TYPE_21__*, i32)*, i32 (%struct.TYPE_21__*, i32)** %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %105 = call i32 %103(%struct.TYPE_21__* %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %98
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %109 = load i32, i32* @JERR_CANT_SUSPEND, align 4
  %110 = call i32 @ERREXIT(%struct.TYPE_21__* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %3, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %66

115:                                              ; preds = %66
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 6
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = call i32 %120(%struct.TYPE_21__* %121)
  br label %50

123:                                              ; preds = %50
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %127, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %130 = call i32 %128(%struct.TYPE_21__* %129)
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %134, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %137 = call i32 %135(%struct.TYPE_21__* %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %139 = ptrtoint %struct.TYPE_21__* %138 to i32
  %140 = call i32 @jpeg_abort(i32 %139)
  ret void
}

declare dso_local i32 @ERREXIT(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ERREXIT1(%struct.TYPE_21__*, i32, i64) #1

declare dso_local i32 @jpeg_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
