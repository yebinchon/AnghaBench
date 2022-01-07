; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeMultiMeterQueryProcessor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeMultiMeterQueryProcessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_20__**, %struct.TYPE_22__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i64, i32, %struct.TYPE_21__*, i32, i32, i32* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"QInfo:%p points returned:%d, totalRead:%d totalReturn:%d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"QInfo:%p failed to allocate memory, %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"QInfo:%p query start, qrange:%lld-%lld, order:%d, group:%d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"QInfo:%p main query scan start\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"QInfo:%p main scan completed, elapsed time: %lldms, supplementary scan start, order:%d\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"QInfo:%p query killed, abort\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @vnodeMultiMeterQueryProcessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnodeMultiMeterQueryProcessor(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %9, %struct.TYPE_25__** %3, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 2
  store %struct.TYPE_23__* %11, %struct.TYPE_23__** %4, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %1
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = call i32 @copyResToQueryResultBuf(%struct.TYPE_25__* %22, %struct.TYPE_23__* %23)
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @copyFromGroupBuf(%struct.TYPE_24__* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %47 = call i32 @vnodePrintQueryStatistics(%struct.TYPE_25__* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %49, i64 %52, i32 %55, i32 %58)
  br label %175

60:                                               ; preds = %1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i64 @calloc(i32 1, i32 %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 7
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %60
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %77 = load i32, i32* @errno, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 @dError(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_24__* %76, i32 %78)
  br label %175

80:                                               ; preds = %60
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %81, i32 %84, i32 %87, i32 %91, i32 %96)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %99 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_24__* %98)
  %100 = call i64 (...) @taosGetTimestampMs()
  store i64 %100, i64* %5, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %102 = call i32 @doOrderedScan(%struct.TYPE_24__* %101)
  %103 = call i64 (...) @taosGetTimestampMs()
  store i64 %103, i64* %6, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %5, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = xor i32 %111, 1
  %113 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %104, i64 %107, i32 %112)
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %115 = call i32 @doCloseAllOpenedResults(%struct.TYPE_25__* %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %117 = call i32 @doMultiMeterSupplementaryScan(%struct.TYPE_24__* %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %119 = call i64 @isQueryKilled(%struct.TYPE_23__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %80
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %123 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %122)
  br label %175

124:                                              ; preds = %80
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %124
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %144 = call i32 @mergeMetersResultToOneGroups(%struct.TYPE_25__* %143)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %147 = call i32 @copyResToQueryResultBuf(%struct.TYPE_25__* %145, %struct.TYPE_23__* %146)
  br label %154

148:                                              ; preds = %124
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @copyFromGroupBuf(%struct.TYPE_24__* %149, i32 %152)
  br label %154

154:                                              ; preds = %148, %139
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i8*, %struct.TYPE_24__*, ...) @dTrace(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %164, i64 %167, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %154, %121, %75, %48
  ret void
}

declare dso_local i32 @copyResToQueryResultBuf(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @copyFromGroupBuf(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @vnodePrintQueryStatistics(%struct.TYPE_25__*) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_24__*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @dError(i8*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @taosGetTimestampMs(...) #1

declare dso_local i32 @doOrderedScan(%struct.TYPE_24__*) #1

declare dso_local i32 @doCloseAllOpenedResults(%struct.TYPE_25__*) #1

declare dso_local i32 @doMultiMeterSupplementaryScan(%struct.TYPE_24__*) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mergeMetersResultToOneGroups(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
