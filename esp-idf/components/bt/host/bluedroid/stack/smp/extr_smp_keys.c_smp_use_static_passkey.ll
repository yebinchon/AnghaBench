; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_use_static_passkey.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_keys.c_smp_use_static_passkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 (i32, i32, i32*)*, i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@smp_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BT_OCTET16_LEN = common dso_local global i32 0, align 4
@SMP_KEY_TYPE_TK = common dso_local global i32 0, align 4
@SMP_PASSKEY_NOTIF_EVT = common dso_local global i32 0, align 4
@SMP_MODEL_SEC_CONN_PASSKEY_DISP = common dso_local global i64 0, align 8
@SMP_KEY_READY_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_use_static_passkey() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* @smp_cb, %struct.TYPE_6__** %1, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* @BT_OCTET16_LEN, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @UINT32_TO_STREAM(i32* %16, i32 %17)
  %19 = load i32, i32* @SMP_KEY_TYPE_TK, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %26, align 8
  %28 = icmp ne i32 (i32, i32, i32*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %31, align 8
  %33 = load i32, i32* @SMP_PASSKEY_NOTIF_EVT, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %32(i32 %33, i32 %36, i32* %4)
  br label %38

38:                                               ; preds = %29, %0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SMP_MODEL_SEC_CONN_PASSKEY_DISP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @SMP_KEY_READY_EVT, align 4
  %46 = call i32 @smp_sm_event(%struct.TYPE_6__* @smp_cb, i32 %45, i32* %4)
  br label %52

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %49 = load i32, i32* @SMP_KEY_READY_EVT, align 4
  %50 = bitcast %struct.TYPE_5__* %3 to i32*
  %51 = call i32 @smp_sm_event(%struct.TYPE_6__* %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UINT32_TO_STREAM(i32*, i32) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_6__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
