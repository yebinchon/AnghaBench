; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessCreateMeterRequest.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessCreateMeterRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@TSDB_MAX_VNODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vid:%d, vnode is out of range\00", align 1
@TSDB_CODE_INVALID_SESSION_ID = common dso_local global i32 0, align 4
@vnodeList = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"vid:%d, not activated\00", align 1
@TSDB_CODE_NOT_ACTIVE_SESSION = common dso_local global i32 0, align 4
@TSDB_SSTATUS_SYNCING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"vid:%d, create msg is saved into sync queue\00", align 1
@TSDB_MSG_TYPE_CREATE_RSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeProcessCreateMeterRequest(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @htons(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TSDB_MAX_VNODES, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @TSDB_CODE_INVALID_SESSION_ID, align 4
  store i32 %26, i32* %8, align 4
  br label %59

27:                                               ; preds = %20
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vnodeList, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dError(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @TSDB_CODE_NOT_ACTIVE_SESSION, align 4
  store i32 %40, i32* %8, align 4
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TSDB_SSTATUS_SYNCING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @vnodeSaveCreateMsgIntoQueue(%struct.TYPE_7__* %48, i8* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dTrace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %41
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @vnodeProcessCreateMeterMsg(i8* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %47
  br label %59

59:                                               ; preds = %58, %37, %23
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @TSDB_MSG_TYPE_CREATE_RSP, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @taosSendSimpleRspToMnode(i32* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @dError(i8*, i32) #1

declare dso_local i32 @vnodeSaveCreateMsgIntoQueue(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dTrace(i8*, i32) #1

declare dso_local i32 @vnodeProcessCreateMeterMsg(i8*, i32) #1

declare dso_local i32 @taosSendSimpleRspToMnode(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
