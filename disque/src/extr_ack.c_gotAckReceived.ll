; ModuleID = '/home/carl/AnghaBench/disque/src/extr_ack.c_gotAckReceived.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_ack.c_gotAckReceived.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i64, i64 }

@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"RECEIVED GOTACK FROM %.40s FOR JOB %.48s\00", align 1
@JOB_STATE_ACKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Deleting %.48s: authoritative node reached\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Deleting %.48s: dummy ACK not known cluster-wide\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Deleting %.48s: All nodes involved acknowledged the job\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gotAckReceived(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @dictSize(i64 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @LL_VERBOSE, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JOB_STATE_ACKED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %144

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* @LL_VERBOSE, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = call i32 @unregisterJob(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i32 @freeJob(%struct.TYPE_12__* %42)
  br label %144

44:                                               ; preds = %31, %28
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @dictFind(i64 %50, i32 %53)
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %47, %44
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i32 @dictAdd(i64 %59, i32 %62, %struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %56
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = call i32 @dictAdd(i64 %72, i32 %75, %struct.TYPE_13__* %76)
  br label %78

78:                                               ; preds = %69, %56
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = call i32 @dictAdd(i64 %88, i32 %91, %struct.TYPE_13__* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @dictSize(i64 %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @dictSize(i64 %100)
  %102 = icmp sge i64 %97, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %85
  %104 = load i32, i32* @LL_VERBOSE, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %104, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = call i32 @unregisterJob(%struct.TYPE_12__* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = call i32 @freeJob(%struct.TYPE_12__* %111)
  br label %144

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113, %82, %79
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %117
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @dictSize(i64 %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @dictSize(i64 %129)
  %131 = icmp sge i64 %126, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %122
  %133 = load i32, i32* @LL_VERBOSE, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, i32, ...) @serverLog(i32 %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = call i32 @clusterBroadcastDelJob(%struct.TYPE_12__* %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = call i32 @unregisterJob(%struct.TYPE_12__* %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = call i32 @freeJob(%struct.TYPE_12__* %142)
  br label %144

144:                                              ; preds = %27, %34, %103, %132, %122, %117, %114
  ret void
}

declare dso_local i64 @dictSize(i64) #1

declare dso_local i32 @serverLog(i32, i8*, i32, ...) #1

declare dso_local i32 @unregisterJob(%struct.TYPE_12__*) #1

declare dso_local i32 @freeJob(%struct.TYPE_12__*) #1

declare dso_local i32* @dictFind(i64, i32) #1

declare dso_local i32 @dictAdd(i64, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @clusterBroadcastDelJob(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
