; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessAlterStreamRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessAlterStreamRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__**, %struct.TYPE_9__, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32 }

@TSDB_MAX_VNODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vid:%d, vnode is out of range\00", align 1
@TSDB_CODE_INVALID_SESSION_ID = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"vid:%d is not activated yet\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"vid:%d sid:%d uid:%ld, sid is out of range\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"vid:%d sid:%d, no active session\00", align 1
@TSDB_CODE_NOT_ACTIVE_SESSION = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_STREAM_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessAlterStreamRequest(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @htons(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @htonl(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TSDB_MAX_VNODES, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %3
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %32, i32* %8, align 4
  br label %143

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %36
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43, %33
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %53, i32* %8, align 4
  br label %143

54:                                               ; preds = %43
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %57, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63, %54
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  %79 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %79, i32* %8, align 4
  br label %143

80:                                               ; preds = %63
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vnodeList, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %86, i64 %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %12, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = icmp eq %struct.TYPE_11__* %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %80
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %93, %80
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 (i8*, i32, ...) @dError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @TSDB_CODE_NOT_ACTIVE_SESSION, align 4
  store i32 %109, i32* %8, align 4
  br label %143

110:                                              ; preds = %99
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %137

120:                                              ; preds = %110
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %128, %120
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = call i32 @vnodeCreateStream(%struct.TYPE_11__* %135)
  br label %140

137:                                              ; preds = %110
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %139 = call i32 @vnodeRemoveStream(%struct.TYPE_11__* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %142 = call i32 @vnodeSaveMeterObjToFile(%struct.TYPE_11__* %141)
  br label %143

143:                                              ; preds = %140, %105, %68, %48, %29
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* @TSDB_MSG_TYPE_ALTER_STREAM_RSP, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @taosSendSimpleRspToMnode(i32* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @dError(i8*, i32, ...) #1

declare dso_local i32 @vnodeCreateStream(%struct.TYPE_11__*) #1

declare dso_local i32 @vnodeRemoveStream(%struct.TYPE_11__*) #1

declare dso_local i32 @vnodeSaveMeterObjToFile(%struct.TYPE_11__*) #1

declare dso_local i32 @taosSendSimpleRspToMnode(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
