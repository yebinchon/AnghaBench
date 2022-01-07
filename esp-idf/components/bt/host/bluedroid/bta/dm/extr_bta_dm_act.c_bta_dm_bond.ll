; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_bond.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_bond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@BTA_TRANSPORT_UNKNOWN = common dso_local global i64 0, align 8
@bta_dm_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BD_NAME_LEN = common dso_local global i32 0, align 4
@HCI_ERR_ILLEGAL_COMMAND = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@BTA_DM_AUTH_CMPL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_bond(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BTA_TRANSPORT_UNKNOWN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @BTM_SecBond(i32 %16, i32 0, i32* null, i32 0)
  store i64 %17, i64* %3, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @BTM_SecBondByTransport(i32 %22, i64 %26, i32 0, i32* null, i32 0)
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %18, %12
  %29 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 0), align 8
  %30 = icmp ne i32 (i32, %struct.TYPE_11__*)* %29, null
  br i1 %30, label %31, label %88

31:                                               ; preds = %28
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @BTM_CMD_STARTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = call i32 @memset(%struct.TYPE_11__* %4, i32 0, i32 24)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bdcpy(i32 %39, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @BTM_SecReadDevName(i32 %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %35
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @BD_NAME_LEN, align 4
  %58 = sub nsw i32 %57, 1
  %59 = call i32 @memcpy(i64* %55, i8* %56, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* @BD_NAME_LEN, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %52, %35
  %68 = load i32, i32* @HCI_ERR_ILLEGAL_COMMAND, align 4
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @BTM_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @TRUE, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %84

78:                                               ; preds = %67
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @bta_dm_remove_sec_dev_entry(i32 %82)
  br label %84

84:                                               ; preds = %78, %74
  %85 = load i32 (i32, %struct.TYPE_11__*)*, i32 (i32, %struct.TYPE_11__*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_dm_cb, i32 0, i32 0), align 8
  %86 = load i32, i32* @BTA_DM_AUTH_CMPL_EVT, align 4
  %87 = call i32 %85(i32 %86, %struct.TYPE_11__* %4)
  br label %88

88:                                               ; preds = %84, %31, %28
  ret void
}

declare dso_local i64 @BTM_SecBond(i32, i32, i32*, i32) #1

declare dso_local i64 @BTM_SecBondByTransport(i32, i64, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i8* @BTM_SecReadDevName(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @bta_dm_remove_sec_dev_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
