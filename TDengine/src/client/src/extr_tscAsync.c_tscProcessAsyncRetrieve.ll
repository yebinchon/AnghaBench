; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncRetrieve.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscAsync.c_tscProcessAsyncRetrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, i32 (i32, %struct.TYPE_19__*, i64*)*, i32, %struct.TYPE_20__ }
%struct.TYPE_18__ = type { i64, i32*, i32, i64* }
%struct.TYPE_20__ = type { i32, i64, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@TSDB_SQL_SELECT = common dso_local global i32 0, align 4
@tscProcessAsyncContinueRetrieve = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscProcessAsyncRetrieve(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %7, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %8, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 4
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %3
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = call i64 @tscProjectionQueryOnMetric(%struct.TYPE_20__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %19
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %23
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 2
  %45 = load i32 (i32, %struct.TYPE_19__*, i64*)*, i32 (i32, %struct.TYPE_19__*, i64*)** %44, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = call i32 %45(i32 %48, %struct.TYPE_19__* %49, i64* null)
  br label %150

51:                                               ; preds = %34, %23
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = call %struct.TYPE_21__* @tscGetMeterMetaInfo(%struct.TYPE_20__* %66, i32 0)
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %65, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %51
  %74 = load i32, i32* @TSDB_SQL_SELECT, align 4
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = call i32 @tscResetForNextRetrieve(%struct.TYPE_18__* %78)
  %80 = load i32, i32* @tscProcessAsyncContinueRetrieve, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = call i32 @tscProcessSql(%struct.TYPE_19__* %83)
  br label %150

85:                                               ; preds = %51
  br label %95

86:                                               ; preds = %19
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load i32 (i32, %struct.TYPE_19__*, i64*)*, i32 (i32, %struct.TYPE_19__*, i64*)** %88, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = call i32 %89(i32 %92, %struct.TYPE_19__* %93, i64* null)
  br label %95

95:                                               ; preds = %86, %85
  br label %150

96:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %130, %96
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @TSC_GET_RESPTR_BASE(%struct.TYPE_18__* %104, %struct.TYPE_20__* %105, i32 %106, i32 %109)
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %110, %122
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %123, i64* %129, align 8
  br label %130

130:                                              ; preds = %103
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %97

133:                                              ; preds = %97
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 2
  %140 = load i32 (i32, %struct.TYPE_19__*, i64*)*, i32 (i32, %struct.TYPE_19__*, i64*)** %139, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load i64*, i64** %147, align 8
  %149 = call i32 %140(i32 %143, %struct.TYPE_19__* %144, i64* %148)
  br label %150

150:                                              ; preds = %42, %73, %133, %95
  ret void
}

declare dso_local i64 @tscProjectionQueryOnMetric(%struct.TYPE_20__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_21__* @tscGetMeterMetaInfo(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @tscResetForNextRetrieve(%struct.TYPE_18__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_19__*) #1

declare dso_local i64 @TSC_GET_RESPTR_BASE(%struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
