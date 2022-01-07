; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufAppend.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_15__, %struct.TYPE_16__*, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i64 }

@TSDB_KEYSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsBufAppend(%struct.TYPE_18__* %0, i64 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %11, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %12, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %19, %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = call i32 @writeDataToDisk(%struct.TYPE_18__* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = call i32 @shrinkBuffer(%struct.TYPE_17__* %37)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call %struct.TYPE_16__* @addOneVnodeInfo(%struct.TYPE_18__* %39, i64 %40)
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %11, align 8
  br label %52

42:                                               ; preds = %19
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 %50
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %11, align 8
  br label %52

52:                                               ; preds = %42, %34
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %52
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = call i32 @writeDataToDisk(%struct.TYPE_18__* %73)
  br label %79

75:                                               ; preds = %67, %52
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @expandBuffer(%struct.TYPE_17__* %76, i64 %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load i8*, i8** %9, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @memcpy(i64 %90, i8* %91, i64 %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @setCheckTSOrder(%struct.TYPE_18__* %94, i8* %95, i64 %96)
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @TSDB_KEYSIZE, align 8
  %112 = sdiv i64 %110, %111
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp sge i64 %119, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %79
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = call i32 @writeDataToDisk(%struct.TYPE_18__* %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %128 = call i32 @shrinkBuffer(%struct.TYPE_17__* %127)
  br label %129

129:                                              ; preds = %124, %79
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = call i32 @tsBufResetPos(%struct.TYPE_18__* %130)
  ret void
}

declare dso_local i32 @writeDataToDisk(%struct.TYPE_18__*) #1

declare dso_local i32 @shrinkBuffer(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @addOneVnodeInfo(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @expandBuffer(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @setCheckTSOrder(%struct.TYPE_18__*, i8*, i64) #1

declare dso_local i32 @tsBufResetPos(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
