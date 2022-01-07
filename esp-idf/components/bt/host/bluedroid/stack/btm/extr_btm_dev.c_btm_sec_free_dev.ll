; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_dev.c_btm_sec_free_dev.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_dev.c_btm_sec_free_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@LINK_KEY_LEN = common dso_local global i32 0, align 4
@BTM_SEC_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_SEC_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_NAME_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_ROLE_SWITCHED = common dso_local global i32 0, align 4
@BTM_SEC_16_DIGIT_PIN_AUTHED = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BOND_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4
@BTM_SEC_LE_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_LE_NAME_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_LE_LINK_KEY_AUTHED = common dso_local global i32 0, align 4
@BTM_SEC_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sec_free_dev(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LINK_KEY_LEN, align 4
  %13 = call i32 @memset(i32 %11, i32 0, i32 %12)
  %14 = load i32, i32* @BTM_SEC_AUTHORIZED, align 4
  %15 = load i32, i32* @BTM_SEC_AUTHENTICATED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @BTM_SEC_NAME_KNOWN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @BTM_SEC_LINK_KEY_KNOWN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BTM_SEC_LINK_KEY_AUTHED, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BTM_SEC_ROLE_SWITCHED, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BTM_SEC_16_DIGIT_PIN_AUTHED, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %74

34:                                               ; preds = %2
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i8*, i8** @BOND_TYPE_UNKNOWN, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @BTM_SEC_LE_AUTHENTICATED, align 4
  %43 = load i32, i32* @BTM_SEC_LE_ENCRYPTED, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @BTM_SEC_LE_NAME_KNOWN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @BTM_SEC_LE_LINK_KEY_KNOWN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @BTM_SEC_LE_LINK_KEY_AUTHED, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @BTM_SEC_ROLE_SWITCHED, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = call i32 @btm_sec_clear_ble_keys(%struct.TYPE_4__* %58)
  br label %73

60:                                               ; preds = %34
  %61 = load i8*, i8** @BOND_TYPE_UNKNOWN, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LINK_KEY_LEN, align 4
  %68 = call i32 @memset(i32 %66, i32 0, i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = call i32 @btm_sec_clear_ble_keys(%struct.TYPE_4__* %71)
  br label %73

73:                                               ; preds = %60, %38
  br label %74

74:                                               ; preds = %73, %8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @BTM_SEC_IN_USE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %74
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @btm_sec_clear_ble_keys(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
