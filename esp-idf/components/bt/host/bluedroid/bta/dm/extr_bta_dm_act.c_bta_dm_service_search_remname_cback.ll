; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_service_search_remname_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_service_search_remname_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i64* }

@.str = private unnamed_addr constant [46 x i8] c"bta_dm_service_search_remname_cback name=<%s>\00", align 1
@bta_dm_search_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@BD_NAME_LEN = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@BTM_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName is busy\00", align 1
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"bta_dm_service_search_remname_cback: BTM_ReadRemoteDeviceName returns 0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64)* @bta_dm_service_search_remname_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_service_search_remname_cback(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @UNUSED(i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_search_cb, i32 0, i32 0), align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @bdcmp(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @strlen(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BD_NAME_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load i32, i32* @BD_NAME_LEN, align 4
  %29 = sub nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* @BD_NAME_LEN, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %17
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = bitcast i64* %39 to i8*
  %41 = load i64, i64* %6, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* @BD_NAME_LEN, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @BCM_STRNCPY_S(i8* %40, i32 8, i8* %42, i32 %44)
  %46 = load i64, i64* @BTM_SUCCESS, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = call i32 @bta_dm_remname_cback(%struct.TYPE_4__* %7)
  br label %74

49:                                               ; preds = %3
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @bta_dm_search_cb, i32 0, i32 0), align 4
  %51 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %52 = call i64 @BTM_ReadRemoteDeviceName(i32 %50, i32* bitcast (i32 (%struct.TYPE_4__*)* @bta_dm_remname_cback to i32*), i32 %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @BTM_BUSY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %73

58:                                               ; preds = %49
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @BTM_CMD_STARTED, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = call i32 @bta_dm_remname_cback(%struct.TYPE_4__* %7)
  br label %72

72:                                               ; preds = %62, %58
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %37
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, ...) #1

declare dso_local i32 @bdcmp(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i32) #1

declare dso_local i32 @bta_dm_remname_cback(%struct.TYPE_4__*) #1

declare dso_local i64 @BTM_ReadRemoteDeviceName(i32, i32*, i32) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
