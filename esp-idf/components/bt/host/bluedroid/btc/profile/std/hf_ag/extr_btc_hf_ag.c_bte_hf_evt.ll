; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_bte_hf_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_bte_hf_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@BTA_AG_REGISTER_EVT = common dso_local global i64 0, align 8
@BTA_AG_OPEN_EVT = common dso_local global i64 0, align 8
@BTA_AG_CLOSE_EVT = common dso_local global i64 0, align 8
@BTA_AG_AUDIO_OPEN_EVT = common dso_local global i64 0, align 8
@BTA_AG_AUDIO_CLOSE_EVT = common dso_local global i64 0, align 8
@BTA_AG_CONN_EVT = common dso_local global i64 0, align 8
@BTC_SIG_API_CB = common dso_local global i32 0, align 4
@BTC_PID_HF = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"context transfer failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*)* @bte_hf_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bte_hf_evt(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @BTA_AG_REGISTER_EVT, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load i64, i64* @BTA_AG_OPEN_EVT, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 4, i32* %5, align 4
  br label %42

17:                                               ; preds = %12
  %18 = load i64, i64* @BTA_AG_CLOSE_EVT, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @BTA_AG_AUDIO_OPEN_EVT, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* @BTA_AG_AUDIO_CLOSE_EVT, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17
  store i32 4, i32* %5, align 4
  br label %41

30:                                               ; preds = %25
  %31 = load i64, i64* @BTA_AG_CONN_EVT, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 4, i32* %5, align 4
  br label %40

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 4, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %39, %34
  br label %41

41:                                               ; preds = %40, %29
  br label %42

42:                                               ; preds = %41, %16
  br label %43

43:                                               ; preds = %42, %11
  %44 = load i32, i32* @BTC_SIG_API_CB, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @BTC_PID_HF, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @btc_transfer_context(%struct.TYPE_3__* %6, i32* %50, i32 %51, i32* null)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @BTC_ASSERTC(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %57)
  ret void
}

declare dso_local i64 @btc_transfer_context(%struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i32 @BTC_ASSERTC(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
