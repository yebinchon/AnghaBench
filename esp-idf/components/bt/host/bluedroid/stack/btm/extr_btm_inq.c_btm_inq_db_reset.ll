; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_inq_db_reset.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_inq_db_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i8*, i8*, i32*, i64, i32, i32 (i8**)*, i8*, i32 (%struct.TYPE_5__*)*, i32, i8*, i32, i32 (i64*)*, i32 }
%struct.TYPE_5__ = type { i8* }

@btm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTM_INQUIRY_INACTIVE = common dso_local global i64 0, align 8
@BTM_LIMITED_INQUIRY_ACTIVE = common dso_local global i64 0, align 8
@BTM_GENERAL_INQUIRY_ACTIVE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i8* null, align 8
@BTM_INQ_INACTIVE_STATE = common dso_local global i32 0, align 4
@BTM_NON_DISCOVERABLE = common dso_local global i32 0, align 4
@BTM_NON_CONNECTABLE = common dso_local global i32 0, align 4
@BTM_SCAN_TYPE_STANDARD = common dso_local global i8* null, align 8
@BTM_BLE_NON_DISCOVERABLE = common dso_local global i32 0, align 4
@BTM_BLE_NON_CONNECTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_inq_db_reset() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @btm_cb, i32 0, i32 0), %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 15
  %8 = call i32 @btu_stop_timer(i32* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BTM_INQUIRY_INACTIVE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @BTM_INQUIRY_INACTIVE, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @BTM_LIMITED_INQUIRY_ACTIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @BTM_GENERAL_INQUIRY_ACTIVE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %14
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 14
  %31 = load i32 (i64*)*, i32 (i64*)** %30, align 8
  %32 = icmp ne i32 (i64*)* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  store i64 0, i64* %3, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 14
  %36 = load i32 (i64*)*, i32 (i64*)** %35, align 8
  %37 = call i32 %36(i64* %3)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 12
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 13
  %48 = call i32 @btu_stop_timer(i32* %47)
  %49 = load i8*, i8** @FALSE, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 12
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BD_ADDR_LEN, align 4
  %56 = call i32 @memset(i32 %54, i32 0, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 10
  %59 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %58, align 8
  %60 = icmp ne i32 (%struct.TYPE_5__*)* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %45
  %62 = load i8*, i8** @BTM_DEV_RESET, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  %66 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %65, align 8
  %67 = call i32 %66(%struct.TYPE_5__* %1)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 10
  store i32 (%struct.TYPE_5__*)* null, i32 (%struct.TYPE_5__*)** %69, align 8
  br label %70

70:                                               ; preds = %61, %45
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 9
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load i8*, i8** @FALSE, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  store i8* %77, i8** %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = load i32 (i8**)*, i32 (i8**)** %81, align 8
  %83 = icmp ne i32 (i8**)* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i8*, i8** @BTM_DEV_RESET, align 8
  store i8* %85, i8** %5, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 8
  %88 = load i32 (i8**)*, i32 (i8**)** %87, align 8
  %89 = call i32 %88(i8** %5)
  br label %90

90:                                               ; preds = %84, %76
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* @BTM_INQ_INACTIVE_STATE, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  store i32* null, i32** %98, align 8
  %99 = call i32 @btm_clr_inq_db(i32* null)
  %100 = call i32 (...) @btm_clr_inq_result_flt()
  %101 = load i32, i32* @BTM_NON_DISCOVERABLE, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @BTM_NON_CONNECTABLE, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @BTM_SCAN_TYPE_STANDARD, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** @BTM_SCAN_TYPE_STANDARD, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @BTM_BLE_NON_DISCOVERABLE, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @BTM_BLE_NON_CONNECTABLE, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  ret void
}

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @btm_clr_inq_db(i32*) #1

declare dso_local i32 @btm_clr_inq_result_flt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
