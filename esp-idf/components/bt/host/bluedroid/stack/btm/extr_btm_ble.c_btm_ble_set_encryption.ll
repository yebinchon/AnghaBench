; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_set_encryption.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_btm_ble_set_encryption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"btm_ble_set_encryption (NULL device record!! sec_act=0x%x\00", align 1
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"btm_ble_set_encryption sec_act=0x%x role_master=%d\00", align 1
@BTM_SEC_IN_MITM = common dso_local global i32 0, align 4
@BTM_ROLE_MASTER = common dso_local global i32 0, align 4
@BTM_LE_KEY_PENC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SMP_AUTH_GEN_BOND = common dso_local global i32 0, align 4
@SMP_AUTH_YN_BIT = common dso_local global i32 0, align 4
@BTM_BLE_SEC_REQ_ACT_ENCRYPT = common dso_local global i32 0, align 4
@BTM_ROLE_SLAVE = common dso_local global i32 0, align 4
@SMP_STARTED = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@BTM_SEC_STATE_AUTHENTICATING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_set_encryption(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.TYPE_5__* @btm_find_dev(i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %10, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @BTM_TRACE_WARNING(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %24, i32* %4, align 4
  br label %122

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* @BTM_SEC_IN_MITM, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %118 [
    i32 130, label %41
    i32 128, label %58
    i32 129, label %58
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BTM_ROLE_MASTER, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BTM_LE_KEY_PENC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @btm_ble_start_encrypt(i32 %54, i32 %55, i32* null)
  store i32 %56, i32* %8, align 4
  br label %120

57:                                               ; preds = %45, %41
  br label %58

58:                                               ; preds = %39, %39, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @BTM_ROLE_MASTER, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 130
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @SMP_AUTH_GEN_BOND, align 4
  br label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @SMP_AUTH_GEN_BOND, align 4
  %72 = load i32, i32* @SMP_AUTH_YN_BIT, align 4
  %73 = or i32 %71, %72
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %69, %68 ], [ %73, %70 ]
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @btm_ble_link_sec_check(i32 %76, i32 %77, i32* %11)
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @BTM_BLE_SEC_REQ_ACT_ENCRYPT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @FALSE, align 4
  %85 = call i32 @btm_ble_start_encrypt(i32 %83, i32 %84, i32* null)
  store i32 %85, i32* %8, align 4
  br label %120

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %62, %58
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @BTM_ROLE_SLAVE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @BTM_LE_KEY_PENC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %107

103:                                              ; preds = %91, %87
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @SMP_Pair(i32 %108)
  %110 = load i32, i32* @SMP_STARTED, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @BTM_CMD_STARTED, align 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @BTM_SEC_STATE_AUTHENTICATING, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %112, %107
  br label %120

118:                                              ; preds = %39
  %119 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %118, %117, %82, %53
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_5__* @btm_find_dev(i32) #1

declare dso_local i32 @BTM_TRACE_WARNING(i8*, i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @btm_ble_start_encrypt(i32, i32, i32*) #1

declare dso_local i32 @btm_ble_link_sec_check(i32, i32, i32*) #1

declare dso_local i32 @SMP_Pair(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
