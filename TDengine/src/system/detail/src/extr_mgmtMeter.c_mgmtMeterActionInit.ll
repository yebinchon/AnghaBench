; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionInit.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtMeterActionInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mgmtMeterActionInsert = common dso_local global i32 0, align 4
@mgmtMeterActionFp = common dso_local global i32* null, align 8
@SDB_TYPE_INSERT = common dso_local global i64 0, align 8
@mgmtMeterActionDelete = common dso_local global i32 0, align 4
@SDB_TYPE_DELETE = common dso_local global i64 0, align 8
@mgmtMeterActionUpdate = common dso_local global i32 0, align 4
@SDB_TYPE_UPDATE = common dso_local global i64 0, align 8
@mgmtMeterActionEncode = common dso_local global i32 0, align 4
@SDB_TYPE_ENCODE = common dso_local global i64 0, align 8
@mgmtMeterActionDecode = common dso_local global i32 0, align 4
@SDB_TYPE_DECODE = common dso_local global i64 0, align 8
@mgmtMeterActionBeforeBatchUpdate = common dso_local global i32 0, align 4
@SDB_TYPE_BEFORE_BATCH_UPDATE = common dso_local global i64 0, align 8
@mgmtMeterActionBatchUpdate = common dso_local global i32 0, align 4
@SDB_TYPE_BATCH_UPDATE = common dso_local global i64 0, align 8
@mgmtMeterActionAfterBatchUpdate = common dso_local global i32 0, align 4
@SDB_TYPE_AFTER_BATCH_UPDATE = common dso_local global i64 0, align 8
@mgmtMeterActionReset = common dso_local global i32 0, align 4
@SDB_TYPE_RESET = common dso_local global i64 0, align 8
@mgmtMeterActionDestroy = common dso_local global i32 0, align 4
@SDB_TYPE_DESTROY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtMeterActionInit() #0 {
  %1 = load i32, i32* @mgmtMeterActionInsert, align 4
  %2 = load i32*, i32** @mgmtMeterActionFp, align 8
  %3 = load i64, i64* @SDB_TYPE_INSERT, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @mgmtMeterActionDelete, align 4
  %6 = load i32*, i32** @mgmtMeterActionFp, align 8
  %7 = load i64, i64* @SDB_TYPE_DELETE, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @mgmtMeterActionUpdate, align 4
  %10 = load i32*, i32** @mgmtMeterActionFp, align 8
  %11 = load i64, i64* @SDB_TYPE_UPDATE, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @mgmtMeterActionEncode, align 4
  %14 = load i32*, i32** @mgmtMeterActionFp, align 8
  %15 = load i64, i64* @SDB_TYPE_ENCODE, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @mgmtMeterActionDecode, align 4
  %18 = load i32*, i32** @mgmtMeterActionFp, align 8
  %19 = load i64, i64* @SDB_TYPE_DECODE, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @mgmtMeterActionBeforeBatchUpdate, align 4
  %22 = load i32*, i32** @mgmtMeterActionFp, align 8
  %23 = load i64, i64* @SDB_TYPE_BEFORE_BATCH_UPDATE, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @mgmtMeterActionBatchUpdate, align 4
  %26 = load i32*, i32** @mgmtMeterActionFp, align 8
  %27 = load i64, i64* @SDB_TYPE_BATCH_UPDATE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @mgmtMeterActionAfterBatchUpdate, align 4
  %30 = load i32*, i32** @mgmtMeterActionFp, align 8
  %31 = load i64, i64* @SDB_TYPE_AFTER_BATCH_UPDATE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @mgmtMeterActionReset, align 4
  %34 = load i32*, i32** @mgmtMeterActionFp, align 8
  %35 = load i64, i64* @SDB_TYPE_RESET, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @mgmtMeterActionDestroy, align 4
  %38 = load i32*, i32** @mgmtMeterActionFp, align 8
  %39 = load i64, i64* @SDB_TYPE_DESTROY, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
