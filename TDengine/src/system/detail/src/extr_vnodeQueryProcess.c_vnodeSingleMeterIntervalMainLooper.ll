; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterIntervalMainLooper.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterIntervalMainLooper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@QUERY_NOT_COMPLETED = common dso_local global i32 0, align 4
@QUERY_COMPLETED = common dso_local global i32 0, align 4
@TSDB_INTERPO_NONE = common dso_local global i64 0, align 8
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@QUERY_RESBUF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @vnodeSingleMeterIntervalMainLooper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnodeSingleMeterIntervalMainLooper(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  br label %10

10:                                               ; preds = %2, %156
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__* %31)
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %30, %22
  %36 = phi i1 [ false, %22 ], [ %34, %30 ]
  br label %37

37:                                               ; preds = %35, %18
  %38 = phi i1 [ true, %18 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = call i32 @initCtxOutputBuf(%struct.TYPE_15__* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = call i32 @vnodeScanAllData(%struct.TYPE_15__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = call i64 @isQueryKilled(%struct.TYPE_16__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %157

49:                                               ; preds = %37
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @QUERY_NOT_COMPLETED, align 4
  %54 = call i64 @Q_STATUS_EQUAL(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* @QUERY_COMPLETED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = call i32 @doFinalizeResult(%struct.TYPE_15__* %65)
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = call i32 @getNumOfResult(%struct.TYPE_15__* %67)
  store i32 %68, i32* %6, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %49
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %73, %49
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TSDB_INTERPO_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %93, %90
  br label %109

100:                                              ; preds = %84, %78, %73
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @forwardCtxOutputBuf(%struct.TYPE_15__* %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %99
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %114 = call i64 @Q_STATUS_EQUAL(i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %157

117:                                              ; preds = %109
  %118 = load i32*, i32** %3, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = call i32 @forwardIntervalQueryRange(i32* %118, %struct.TYPE_15__* %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @QUERY_COMPLETED, align 4
  %125 = call i64 @Q_STATUS_EQUAL(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %157

128:                                              ; preds = %117
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %131, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137, %128
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %147, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %142, %137
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %155 = call i32 @setQueryStatus(%struct.TYPE_16__* %153, i32 %154)
  br label %157

156:                                              ; preds = %142
  br label %10

157:                                              ; preds = %48, %152, %127, %116
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_16__*) #1

declare dso_local i32 @initCtxOutputBuf(%struct.TYPE_15__*) #1

declare dso_local i32 @vnodeScanAllData(%struct.TYPE_15__*) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_16__*) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i32 @doFinalizeResult(%struct.TYPE_15__*) #1

declare dso_local i32 @getNumOfResult(%struct.TYPE_15__*) #1

declare dso_local i32 @forwardCtxOutputBuf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @forwardIntervalQueryRange(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
