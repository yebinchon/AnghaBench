; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterMultiOutputProcessor.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryProcess.c_vnodeSingleMeterMultiOutputProcessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_19__*, %struct.TYPE_24__*, %struct.TYPE_22__ }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }

@QUERY_COMPLETED = common dso_local global i32 0, align 4
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"QInfo:%p vid:%d sid:%d id:%s, skip current result, offset:%lld, next qrange:%lld-%lld\00", align 1
@QUERY_RESBUF_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"QInfo:%p vid:%d sid:%d id:%s, query abort due to buffer limitation, next qrange:%lld-%lld\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"QInfo:%p vid:%d sid:%d id:%s, %d points returned, totalRead:%d totalReturn:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @vnodeSingleMeterMultiOutputProcessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnodeSingleMeterMultiOutputProcessor(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  %8 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 4
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = call i32 @isTSCompQuery(%struct.TYPE_22__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = call i32 @resetCtxOutputBuf(%struct.TYPE_21__* %21)
  br label %23

23:                                               ; preds = %20, %1
  br label %24

24:                                               ; preds = %23, %90
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = call i32 @vnodeScanAllData(%struct.TYPE_21__* %25)
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = call i32 @doFinalizeResult(%struct.TYPE_21__* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = call i64 @isQueryKilled(%struct.TYPE_22__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %217

33:                                               ; preds = %24
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %35 = call i64 @getNumOfResult(%struct.TYPE_21__* %34)
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = call i32 @doSkipResults(%struct.TYPE_21__* %54)
  br label %56

56:                                               ; preds = %53, %48, %43, %33
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @QUERY_COMPLETED, align 4
  %66 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %67 = or i32 %65, %66
  %68 = call i64 @Q_STATUS_EQUAL(i32 %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61, %56
  br label %117

71:                                               ; preds = %61
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = call i64 @loadRequiredBlockIntoMem(%struct.TYPE_21__* %72, i32* %74)
  store i64 %75, i64* %6, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %6, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %86 = call i64 @Q_STATUS_EQUAL(i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %81, %78
  %89 = phi i1 [ false, %78 ], [ %87, %81 ]
  br label %90

90:                                               ; preds = %88, %71
  %91 = phi i1 [ true, %71 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, %struct.TYPE_23__*, i32, i32, i32, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), %struct.TYPE_23__* %94, i32 %97, i32 %100, i32 %103, i64 %107, i32 %110, i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = call i32 @resetCtxOutputBuf(%struct.TYPE_21__* %115)
  br label %24

117:                                              ; preds = %70
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %119 = call i32 @doRevisedResultsByLimit(%struct.TYPE_23__* %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %121 = call i32 @moveDescOrderResultsToFront(%struct.TYPE_21__* %120)
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @QUERY_RESBUF_FULL, align 4
  %135 = call i64 @Q_STATUS_EQUAL(i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %178

137:                                              ; preds = %117
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = call i64 @loadRequiredBlockIntoMem(%struct.TYPE_21__* %138, i32* %140)
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = icmp sgt i64 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %137
  %145 = load i64, i64* %7, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %152 = call i64 @Q_STATUS_EQUAL(i32 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br label %154

154:                                              ; preds = %147, %144
  %155 = phi i1 [ false, %144 ], [ %153, %147 ]
  br label %156

156:                                              ; preds = %154, %137
  %157 = phi i1 [ true, %137 ], [ %155, %154 ]
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, %struct.TYPE_23__*, i32, i32, i32, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %160, i32 %163, i32 %166, i32 %169, i64 %173, i32 %176)
  br label %178

178:                                              ; preds = %156, %117
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, %struct.TYPE_23__*, i32, i32, i32, i64, i32, ...) @dTrace(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_23__* %179, i32 %182, i32 %185, i32 %188, i64 %191, i32 %194, i32 %197)
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %205 = call i32 @isTSCompQuery(%struct.TYPE_22__* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %178
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = icmp sle i64 %210, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  br label %217

217:                                              ; preds = %32, %207, %178
  ret void
}

declare dso_local i32 @isTSCompQuery(%struct.TYPE_22__*) #1

declare dso_local i32 @resetCtxOutputBuf(%struct.TYPE_21__*) #1

declare dso_local i32 @vnodeScanAllData(%struct.TYPE_21__*) #1

declare dso_local i32 @doFinalizeResult(%struct.TYPE_21__*) #1

declare dso_local i64 @isQueryKilled(%struct.TYPE_22__*) #1

declare dso_local i64 @getNumOfResult(%struct.TYPE_21__*) #1

declare dso_local i32 @doSkipResults(%struct.TYPE_21__*) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

declare dso_local i64 @loadRequiredBlockIntoMem(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_23__*, i32, i32, i32, i64, i32, ...) #1

declare dso_local i32 @doRevisedResultsByLimit(%struct.TYPE_23__*) #1

declare dso_local i32 @moveDescOrderResultsToFront(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
