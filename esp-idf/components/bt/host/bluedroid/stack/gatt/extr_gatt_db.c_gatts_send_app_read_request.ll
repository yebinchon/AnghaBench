; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_send_app_read_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_send_app_read_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }

@gatt_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@GATT_REQ_READ_BLOB = common dso_local global i64 0, align 8
@GATTS_REQ_TYPE_READ = common dso_local global i32 0, align 4
@GATT_PENDING = common dso_local global i32 0, align 4
@GATT_STACK_RSP = common dso_local global i32 0, align 4
@GATT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i8*, i8*, i32, i8*)* @gatts_send_app_read_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatts_send_app_read_request(%struct.TYPE_13__* %0, i64 %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i64 @gatt_sr_find_i_rcb_by_handle(i8* %18)
  store i64 %19, i64* %15, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gatt_cb, i32 0, i32 0), align 8
  %21 = load i64, i64* %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 %21
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %16, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @GATT_CREATE_CONN_ID(i32 %25, i32 %28)
  store i8* %29, i8** %17, align 8
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %6
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @gatt_sr_enqueue_cmd(%struct.TYPE_13__* %33, i64 %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @gatt_sr_update_cback_cnt(%struct.TYPE_13__* %37, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %6
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = call i32 @memset(%struct.TYPE_15__* %14, i32 0, i32 32)
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @GATT_REQ_READ_BLOB, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @GATTS_REQ_TYPE_READ, align 4
  %69 = call i32 @gatt_sr_send_req_callback(i8* %66, i32 %67, i32 %68, %struct.TYPE_15__* %14)
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %47
  %73 = load i32, i32* @GATT_PENDING, align 4
  store i32 %73, i32* %7, align 4
  br label %78

74:                                               ; preds = %47
  %75 = load i32, i32* @GATT_STACK_RSP, align 4
  store i32 %75, i32* %7, align 4
  br label %78

76:                                               ; preds = %44
  %77 = load i32, i32* @GATT_BUSY, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %74, %72
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i64 @gatt_sr_find_i_rcb_by_handle(i8*) #1

declare dso_local i8* @GATT_CREATE_CONN_ID(i32, i32) #1

declare dso_local i32 @gatt_sr_enqueue_cmd(%struct.TYPE_13__*, i64, i8*) #1

declare dso_local i32 @gatt_sr_update_cback_cnt(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @gatt_sr_send_req_callback(i8*, i32, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
