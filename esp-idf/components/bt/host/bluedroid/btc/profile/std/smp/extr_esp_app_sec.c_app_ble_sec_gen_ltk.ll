; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/smp/extr_esp_app_sec.c_app_ble_sec_gen_ltk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/smp/extr_esp_app_sec.c_app_ble_sec_gen_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@app_sec_env = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@RAND_NB_LEN = common dso_local global i64 0, align 8
@SEC_KEY_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_ble_sec_gen_ltk(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @app_sec_env, i32 0, i32 0), align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @RAND_NB_LEN, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = call i32 (...) @random()
  %11 = srem i32 %10, 256
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @app_sec_env, i32 0, i32 3, i32 0), align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %11, i32* %14, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %5

18:                                               ; preds = %5
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @SEC_KEY_LEN, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = sub i64 16, %25
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %32

29:                                               ; preds = %23
  %30 = call i32 (...) @random()
  %31 = srem i32 %30, 256
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 0, %28 ], [ %31, %29 ]
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @app_sec_env, i32 0, i32 2, i32 0), align 8
  %35 = load i64, i64* %3, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %19

40:                                               ; preds = %19
  %41 = call i32 (...) @random()
  %42 = srem i32 %41, 65536
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @app_sec_env, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
