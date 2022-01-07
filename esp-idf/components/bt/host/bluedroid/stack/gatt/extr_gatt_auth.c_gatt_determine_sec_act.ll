; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_determine_sec_act.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_auth.c_gatt_determine_sec_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@GATT_SEC_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BTM_LE_SEC_NONE = common dso_local global i64 0, align 8
@GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4
@BTM_BLE_SEC_REQ_ACT_DISCARD = common dso_local global i64 0, align 8
@GATT_SEC_ENC_PENDING = common dso_local global i64 0, align 8
@BTM_SEC_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_LKEY_KNOWN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTM_SEC_FLAG_LKEY_AUTHED = common dso_local global i32 0, align 4
@GATT_SEC_ENCRYPT_MITM = common dso_local global i64 0, align 8
@GATT_SEC_ENCRYPT_NO_MITM = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@GATTC_OPTYPE_WRITE = common dso_local global i64 0, align 8
@GATT_WRITE_NO_RSP = common dso_local global i64 0, align 8
@BTM_LE_KEY_LCSRK = common dso_local global i32 0, align 4
@GATT_SEC_SIGN_DATA = common dso_local global i64 0, align 8
@GATT_SEC_ENCRYPT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_determine_sec_act(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load i64, i64* @GATT_SEC_OK, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* @BTM_LE_SEC_NONE, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GATT_AUTH_REQ_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %146

29:                                               ; preds = %1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @BTM_GetSecurityFlagsByTransport(i32 %32, i32* %5, i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @btm_ble_link_sec_check(i32 %41, i32 %42, i64* %12)
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @BTM_BLE_SEC_REQ_ACT_DISCARD, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @GATT_AUTH_REQ_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i64, i64* @GATT_SEC_ENC_PENDING, align 8
  store i64 %52, i64* %2, align 8
  br label %146

53:                                               ; preds = %47, %29
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @BTM_SEC_FLAG_ENCRYPTED, align 4
  %56 = load i32, i32* @BTM_SEC_FLAG_LKEY_KNOWN, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BTM_SEC_FLAG_ENCRYPTED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @BTM_SEC_FLAG_LKEY_AUTHED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %90 [
    i32 131, label %78
    i32 129, label %78
    i32 130, label %84
    i32 128, label %84
  ]

78:                                               ; preds = %76, %76
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @GATT_SEC_ENCRYPT_MITM, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %81, %78
  br label %91

84:                                               ; preds = %76, %76
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* @GATT_SEC_ENCRYPT_NO_MITM, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %87, %84
  br label %91

90:                                               ; preds = %76
  br label %91

91:                                               ; preds = %90, %89, %83
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* @GATT_SEC_OK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %91
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @GATTC_OPTYPE_WRITE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %101
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @GATT_WRITE_NO_RSP, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @btm_ble_get_enc_key_type(i32 %119, i32* %11)
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @BTM_LE_KEY_LCSRK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 128
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %125
  %132 = load i64, i64* @GATT_SEC_SIGN_DATA, align 8
  store i64 %132, i64* %4, align 8
  br label %135

133:                                              ; preds = %128, %116
  %134 = load i64, i64* @GATT_SEC_ENCRYPT, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %113
  br label %143

137:                                              ; preds = %107, %101, %95
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = load i64, i64* @GATT_SEC_ENCRYPT, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %140, %137
  br label %143

143:                                              ; preds = %142, %136
  br label %144

144:                                              ; preds = %143, %91
  %145 = load i64, i64* %4, align 8
  store i64 %145, i64* %2, align 8
  br label %146

146:                                              ; preds = %144, %51, %27
  %147 = load i64, i64* %2, align 8
  ret i64 %147
}

declare dso_local i32 @BTM_GetSecurityFlagsByTransport(i32, i32*, i64) #1

declare dso_local i32 @btm_ble_link_sec_check(i32, i32, i64*) #1

declare dso_local i32 @btm_ble_get_enc_key_type(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
