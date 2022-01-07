; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_btc_hf_cnum_response.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_btc_hf_cnum_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@BTC_HF_INVALID_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cnum_response: number = %s, type = %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c",\22%s\22,%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c",\22\22,%d\00", align 1
@BTA_AG_OK_DONE = common dso_local global i32 0, align 4
@hf_local_param = common dso_local global %struct.TYPE_8__* null, align 8
@BTA_AG_CNUM_RES = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@BT_STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @btc_hf_cnum_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btc_hf_cnum_response(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @btc_hf_idx_by_bdaddr(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = call i32 (...) @CHECK_HF_SLC_CONNECTED()
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @is_connected(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BTC_HF_INVALID_IDX, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = call i32 @memset(%struct.TYPE_7__* %9, i32 0, i32 8)
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BTC_TRACE_EVENT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @sprintf(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  br label %38

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i32, i8*, ...) @sprintf(i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i32, i32* @BTA_AG_OK_DONE, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @hf_local_param, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BTA_AG_CNUM_RES, align 4
  %49 = call i32 @BTA_AgResult(i32 %47, i32 %48, %struct.TYPE_7__* %9)
  %50 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %16, %3
  %52 = load i32, i32* @BT_STATUS_FAIL, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @btc_hf_idx_by_bdaddr(i32*) #1

declare dso_local i32 @CHECK_HF_SLC_CONNECTED(...) #1

declare dso_local i64 @is_connected(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @BTC_TRACE_EVENT(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @BTA_AgResult(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
