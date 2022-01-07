; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_ReadRemoteDeviceName.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_ReadRemoteDeviceName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"BTM_ReadRemoteDeviceName: bd addr [%02x%02x%02x%02x%02x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"no device found in inquiry db\0A\00", align 1
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BTM_RMT_NAME_EXT = common dso_local global i32 0, align 4
@BTM_EXT_RMT_NAME_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_ReadRemoteDeviceName(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.TYPE_3__* @btm_inq_db_find(i32* %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %9, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32* %34, i32** %8, align 8
  br label %35

35:                                               ; preds = %32, %3
  %36 = call i32 (i8*, ...) @BTM_TRACE_API(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @btm_ble_read_remote_name(i32* %41, i32* %42, i32* %43)
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @BTM_RMT_NAME_EXT, align 4
  %49 = load i32, i32* @BTM_EXT_RMT_NAME_TIMEOUT, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @btm_initiate_rem_name(i32* %46, i32* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @BTM_TRACE_API(i8*, ...) #1

declare dso_local %struct.TYPE_3__* @btm_inq_db_find(i32*) #1

declare dso_local i32 @btm_ble_read_remote_name(i32*, i32*, i32*) #1

declare dso_local i32 @btm_initiate_rem_name(i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
