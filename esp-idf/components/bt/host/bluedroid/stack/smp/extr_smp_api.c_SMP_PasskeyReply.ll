; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_api.c_SMP_PasskeyReply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/smp/extr_smp_api.c_SMP_PasskeyReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32 }

@smp_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SMP_PASSKEY_ENTRY_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"SMP_PasskeyReply: Key: %d  Result:%d\00", align 1
@SMP_PASSKEY_REQ_EVT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"SMP_PasskeyReply() - Wrong State: %d\00", align 1
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SMP_PasskeyReply() - Wrong BD Addr\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SMP_PasskeyReply() - no dev CB\00", align 1
@BTM_MAX_PASSKEY_VAL = common dso_local global i64 0, align 8
@SMP_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"SMP_PasskeyReply() - Wrong key len: %d or passkey entry fail\00", align 1
@SMP_AUTH_CMPL_EVT = common dso_local global i32 0, align 4
@SMP_MODEL_SEC_CONN_PASSKEY_ENT = common dso_local global i64 0, align 8
@SMP_SC_KEY_READY_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SMP_PasskeyReply(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_4__* @smp_cb, %struct.TYPE_4__** %7, align 8
  %9 = load i64, i64* @SMP_PASSKEY_ENTRY_FAIL, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @SMP_TRACE_EVENT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %10, i64 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SMP_PASSKEY_REQ_EVT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @SMP_TRACE_WARNING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BD_ADDR_LEN, align 4
  %29 = call i64 @memcmp(i32 %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %70

33:                                               ; preds = %23
  %34 = load i32, i32* %4, align 4
  %35 = call i32* @btm_find_dev(i32 %34)
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @SMP_TRACE_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %70

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @BTM_MAX_PASSKEY_VAL, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @SMP_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43, %39
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @SMP_TRACE_WARNING(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = load i32, i32* @SMP_AUTH_CMPL_EVT, align 4
  %52 = call i32 @smp_sm_event(%struct.TYPE_4__* %50, i32 %51, i64* %8)
  br label %69

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SMP_MODEL_SEC_CONN_PASSKEY_ENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @SMP_SC_KEY_READY_EVT, align 4
  %61 = call i32 @smp_sm_event(%struct.TYPE_4__* @smp_cb, i32 %60, i64* %6)
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @smp_convert_string_to_tk(i32 %65, i64 %66)
  br label %68

68:                                               ; preds = %62, %59
  br label %69

69:                                               ; preds = %68, %47
  br label %70

70:                                               ; preds = %69, %37, %31, %18
  ret void
}

declare dso_local i32 @SMP_TRACE_EVENT(i8*, i64, i64) #1

declare dso_local i32 @SMP_TRACE_WARNING(i8*, i64) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @SMP_TRACE_ERROR(i8*) #1

declare dso_local i32* @btm_find_dev(i32) #1

declare dso_local i32 @smp_sm_event(%struct.TYPE_4__*, i32, i64*) #1

declare dso_local i32 @smp_convert_string_to_tk(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
