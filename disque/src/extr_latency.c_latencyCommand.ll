; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_latencyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i32* }
%struct.latencyTimeSeries = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"history\00", align 1
@server = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"latest\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"doctor\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@shared = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"No samples available for event '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyCommand(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.latencyTimeSeries*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %12, i64 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @strcasecmp(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %28, i64 2
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.latencyTimeSeries* @dictFetchValue(i32 %25, i32* %32)
  store %struct.latencyTimeSeries* %33, %struct.latencyTimeSeries** %3, align 8
  %34 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %3, align 8
  %35 = icmp eq %struct.latencyTimeSeries* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = call i32 @addReplyMultiBulkLen(%struct.TYPE_15__* %37, i32 0)
  br label %43

39:                                               ; preds = %24
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %3, align 8
  %42 = call i32 @latencyCommandReplyWithSamples(%struct.TYPE_15__* %40, %struct.latencyTimeSeries* %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %187

44:                                               ; preds = %19, %1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @strcasecmp(i32* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %85, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %85

59:                                               ; preds = %54
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @server, i32 0, i32 0), align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %63, i64 2
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @dictFind(i32 %60, i32* %67)
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %188

72:                                               ; preds = %59
  %73 = load i32*, i32** %5, align 8
  %74 = call %struct.latencyTimeSeries* @dictGetVal(i32* %73)
  store %struct.latencyTimeSeries* %74, %struct.latencyTimeSeries** %3, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i8* @dictGetKey(i32* %75)
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %3, align 8
  %79 = call i32 @latencyCommandGenSparkeline(i8* %77, %struct.latencyTimeSeries* %78)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @addReplyBulkCString(%struct.TYPE_15__* %80, i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @sdsfree(i32 %83)
  br label %186

85:                                               ; preds = %54, %44
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %88, i64 1
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @strcasecmp(i32* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %102 = call i32 @latencyCommandReplyWithLatestEvents(%struct.TYPE_15__* %101)
  br label %185

103:                                              ; preds = %95, %85
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %106, i64 1
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @strcasecmp(i32* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = call i32 (...) @createLatencyReport()
  store i32 %119, i32* %7, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @sdslen(i32 %122)
  %124 = call i32 @addReplyBulkCBuffer(%struct.TYPE_15__* %120, i32 %121, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @sdsfree(i32 %125)
  br label %184

127:                                              ; preds = %113, %103
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %130, i64 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @strcasecmp(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %179, label %137

137:                                              ; preds = %127
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %140, 2
  br i1 %141, label %142, label %179

142:                                              ; preds = %137
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %149 = call i32 @latencyResetEvent(i32* null)
  %150 = call i32 @addReplyLongLong(%struct.TYPE_15__* %148, i32 %149)
  br label %178

151:                                              ; preds = %142
  store i32 0, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %152

152:                                              ; preds = %171, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %161, i64 %163
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @latencyResetEvent(i32* %167)
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %9, align 4
  br label %171

171:                                              ; preds = %158
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %152

174:                                              ; preds = %152
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @addReplyLongLong(%struct.TYPE_15__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %147
  br label %183

179:                                              ; preds = %137, %127
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @shared, i32 0, i32 0), align 4
  %182 = call i32 @addReply(%struct.TYPE_15__* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %178
  br label %184

184:                                              ; preds = %183, %118
  br label %185

185:                                              ; preds = %184, %100
  br label %186

186:                                              ; preds = %185, %72
  br label %187

187:                                              ; preds = %186, %43
  br label %199

188:                                              ; preds = %71
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %192, i64 2
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to i8*
  %198 = call i32 @addReplyErrorFormat(%struct.TYPE_15__* %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %188, %187
  ret void
}

declare dso_local i32 @strcasecmp(i32*, i8*) #1

declare dso_local %struct.latencyTimeSeries* @dictFetchValue(i32, i32*) #1

declare dso_local i32 @addReplyMultiBulkLen(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @latencyCommandReplyWithSamples(%struct.TYPE_15__*, %struct.latencyTimeSeries*) #1

declare dso_local i32* @dictFind(i32, i32*) #1

declare dso_local %struct.latencyTimeSeries* @dictGetVal(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local i32 @latencyCommandGenSparkeline(i8*, %struct.latencyTimeSeries*) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @latencyCommandReplyWithLatestEvents(%struct.TYPE_15__*) #1

declare dso_local i32 @createLatencyReport(...) #1

declare dso_local i32 @addReplyBulkCBuffer(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @latencyResetEvent(i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_15__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
