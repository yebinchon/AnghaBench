; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_send_srv_chg_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_send_srv_chg_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GATT_SIZE_OF_SRV_CHG_HNDL_RANGE = common dso_local global i32 0, align 4
@GATT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gatt_send_srv_chg_ind\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GATT_INVALID_CONN_ID = common dso_local global i32 0, align 4
@GATT_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to find conn_id for  %02x%02x%02x%02x%02x%02x \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_send_srv_chg_ind(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @GATT_SIZE_OF_SRV_CHG_HNDL_RANGE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @GATT_ERROR, align 4
  store i32 %12, i32* %7, align 4
  %13 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gatt_cb, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @gatt_profile_find_conn_id_by_bd_addr(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @GATT_INVALID_CONN_ID, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @UINT16_TO_STREAM(i32* %22, i32 1)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @UINT16_TO_STREAM(i32* %24, i32 65535)
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gatt_cb, i32 0, i32 0), align 8
  %28 = load i32, i32* @GATT_SIZE_OF_SRV_CHG_HNDL_RANGE, align 4
  %29 = call i32 @GATTS_HandleValueIndication(i32 %26, i64 %27, i32 %28, i32* %11)
  store i32 %29, i32* %7, align 4
  br label %51

30:                                               ; preds = %16
  %31 = load i32, i32* @GATT_NOT_FOUND, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37, i32 %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %30, %21
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %54)
  ret i32 %53
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #2

declare dso_local i32 @gatt_profile_find_conn_id_by_bd_addr(i32*) #2

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #2

declare dso_local i32 @GATTS_HandleValueIndication(i32, i64, i32, i32*) #2

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
