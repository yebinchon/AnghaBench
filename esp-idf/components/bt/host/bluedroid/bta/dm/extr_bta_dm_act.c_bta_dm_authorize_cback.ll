; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_authorize_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_authorize_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64*, i32, i32 }

@DEV_CLASS_LEN = common dso_local global i32 0, align 4
@BD_NAME_LEN = common dso_local global i32 0, align 4
@BTA_MAX_SERVICE_ID = common dso_local global i64 0, align 8
@bta_service_id_to_btm_srv_id_lkup_tbl = common dso_local global i64* null, align 8
@bta_dm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTA_DM_AUTHORIZE_EVT = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_NOT_AUTHORIZED = common dso_local global i64 0, align 8
@BTA_FIRST_JV_SERVICE_ID = common dso_local global i64 0, align 8
@BTA_LAST_JV_SERVICE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64*, i64, i64*)* @bta_dm_authorize_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bta_dm_authorize_cback(i32 %0, i32 %1, i64 %2, i64* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 1, i64* %15, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = call i32 @UNUSED(i64* %16)
  %18 = load i64*, i64** %13, align 8
  %19 = call i32 @UNUSED(i64* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bdcpy(i32 %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DEV_CLASS_LEN, align 4
  %30 = call i32 @memcpy(i32 %27, i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = bitcast i64* %33 to i8*
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @BD_NAME_LEN, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @BCM_STRNCPY_S(i8* %34, i32 8, i8* %36, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* @BD_NAME_LEN, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %62, %6
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @BTA_MAX_SERVICE_ID, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load i64*, i64** @bta_service_id_to_btm_srv_id_lkup_tbl, align 8
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i64, i64* %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %65

62:                                               ; preds = %51
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %47

65:                                               ; preds = %58, %47
  %66 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  %67 = icmp ne i32 (i32, %struct.TYPE_6__*)* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* @BTA_MAX_SERVICE_ID, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  %74 = load i32, i32* @BTA_DM_AUTHORIZE_EVT, align 4
  %75 = call i32 %73(i32 %74, %struct.TYPE_6__* %14)
  %76 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %76, i64* %7, align 8
  br label %79

77:                                               ; preds = %68, %65
  %78 = load i64, i64* @BTM_NOT_AUTHORIZED, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i64, i64* %7, align 8
  ret i64 %80
}

declare dso_local i32 @UNUSED(i64*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
