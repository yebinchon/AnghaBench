; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_update_app_use_link_flag.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_update_app_use_link_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"gatt_update_app_use_link_flag  is_add=%d chk_link=%d\00", align 1
@L2CAP_ATT_CID = common dso_local global i64 0, align 8
@GATT_INVALID_ACL_HANDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"GATT disables link idle timer\00", align 1
@GATT_LINK_NO_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"GATT starts link idle timer =%d sec\00", align 1
@GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_update_app_use_link_flag(i32 %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* %8, align 8
  %11 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @gatt_update_app_hold_link_status(i32 %12, %struct.TYPE_5__* %13, i64 %14)
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %67

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @L2CAP_ATT_CID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @BTM_GetHCIConnHandle(i32 %30, i32 %33)
  %35 = load i64, i64* @GATT_INVALID_ACL_HANDLE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GATT_LINK_NO_IDLE_TIMEOUT, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @GATT_SetIdleTimeout(i32 %44, i32 %45, i32 %48)
  br label %66

50:                                               ; preds = %37
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = call i32 @gatt_num_apps_hold_link(%struct.TYPE_5__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP, align 4
  %56 = call i32 (i8*, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GATT_LINK_IDLE_TIMEOUT_WHEN_NO_APP, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @GATT_SetIdleTimeout(i32 %59, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %54, %50
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %27, %21, %18, %4
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @gatt_update_app_hold_link_status(i32, %struct.TYPE_5__*, i64) #1

declare dso_local i64 @BTM_GetHCIConnHandle(i32, i32) #1

declare dso_local i32 @GATT_SetIdleTimeout(i32, i32, i32) #1

declare dso_local i32 @gatt_num_apps_hold_link(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
