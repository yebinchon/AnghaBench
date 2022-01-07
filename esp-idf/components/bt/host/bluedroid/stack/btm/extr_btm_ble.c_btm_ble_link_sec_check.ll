; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_link_sec_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_link_sec_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@BTM_LE_SEC_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"btm_ble_link_sec_check auth_req =0x%x\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"btm_ble_link_sec_check received for unknown device\00", align 1
@BTM_SEC_STATE_ENCRYPTING = common dso_local global i64 0, align 8
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i64 0, align 8
@BTM_BLE_SEC_REQ_ACT_DISCARD = common dso_local global i32 0, align 4
@BTM_LE_SEC_UNAUTHENTICATE = common dso_local global i64 0, align 8
@BTM_LE_AUTH_REQ_MITM = common dso_local global i32 0, align 4
@BTM_LE_SEC_AUTHENTICATED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"dev_rec sec_flags=0x%x\00", align 1
@BTM_SEC_LE_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_LE_KEY_PENC = common dso_local global i32 0, align 4
@BTM_BLE_SEC_REQ_ACT_ENCRYPT = common dso_local global i32 0, align 4
@BTM_BLE_SEC_REQ_ACT_PAIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"cur_sec_level=%d req_sec_level=%d sec_req_act=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_link_sec_check(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_7__* @btm_find_dev(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load i64, i64* @BTM_LE_SEC_NONE, align 8
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* @BTM_LE_SEC_NONE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp eq %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %102

21:                                               ; preds = %3
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BTM_SEC_STATE_ENCRYPTING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BTM_SEC_STATE_AUTHENTICATING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load i32, i32* @BTM_BLE_SEC_REQ_ACT_DISCARD, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  br label %96

36:                                               ; preds = %27
  %37 = load i64, i64* @BTM_LE_SEC_UNAUTHENTICATE, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @BTM_LE_AUTH_REQ_MITM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @BTM_LE_SEC_AUTHENTICATED, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BTM_SEC_LE_ENCRYPTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BTM_SEC_LE_AUTHENTICATED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64, i64* @BTM_LE_SEC_AUTHENTICATED, align 8
  store i64 %64, i64* %9, align 8
  br label %67

65:                                               ; preds = %56
  %66 = load i64, i64* @BTM_LE_SEC_UNAUTHENTICATE, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %65, %63
  br label %85

68:                                               ; preds = %44
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BTM_LE_KEY_PENC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %9, align 8
  br label %84

82:                                               ; preds = %68
  %83 = load i64, i64* @BTM_LE_SEC_NONE, align 8
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %82, %76
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @BTM_BLE_SEC_REQ_ACT_ENCRYPT, align 4
  %91 = load i32*, i32** %6, align 8
  store i32 %90, i32* %91, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @BTM_BLE_SEC_REQ_ACT_PAIR, align 4
  %94 = load i32*, i32** %6, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %33
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %97, i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %96, %19
  ret void
}

declare dso_local %struct.TYPE_7__* @btm_find_dev(i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
