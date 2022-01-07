; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_enq_rep_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_btm_ble_batchscan_enq_rep_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32*, i64**, i64* }

@BTM_BLE_BATCH_REP_MAIN_Q_SIZE = common dso_local global i32 0, align 4
@ble_batchscan_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [66 x i8] c"btm_ble_batchscan_enq_rep_data: index:%d, rep %d, num %d len : %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_batchscan_enq_rep_data(i64 %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %27, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 0), align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %9, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %31, i64 %32, i64 %33, i64 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BTM_BLE_BATCH_REP_MAIN_Q_SIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %123

39:                                               ; preds = %30
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %123

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %123

45:                                               ; preds = %42
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  store i64* %55, i64** %11, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = icmp ne i64* null, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %45
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %8, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i64* @osi_malloc(i64 %62)
  store i64* %63, i64** %12, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @memcpy(i64* %64, i64* %65, i64 %67)
  %69 = load i64*, i64** %12, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memcpy(i64* %72, i64* %73, i64 %74)
  %76 = load i64*, i64** %11, align 8
  %77 = call i32 @osi_free(i64* %76)
  %78 = load i64*, i64** %12, align 8
  %79 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64*, i64** %79, i64 %81
  store i64* %78, i64** %82, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %83
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %90
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %122

99:                                               ; preds = %45
  %100 = load i64, i64* %8, align 8
  %101 = call i64* @osi_malloc(i64 %100)
  store i64* %101, i64** %12, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = load i64*, i64** %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @memcpy(i64* %102, i64* %103, i64 %104)
  %106 = load i64*, i64** %12, align 8
  %107 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 2), align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64*, i64** %107, i64 %109
  store i64* %106, i64** %110, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 3), align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  %116 = load i64, i64* %8, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ble_batchscan_cb, i32 0, i32 0, i32 1), align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %99, %58
  br label %123

123:                                              ; preds = %122, %42, %39, %30
  ret void
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i64, i64, i64) #1

declare dso_local i64* @osi_malloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @osi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
