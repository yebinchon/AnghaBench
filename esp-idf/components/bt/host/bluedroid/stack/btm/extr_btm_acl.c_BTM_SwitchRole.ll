; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SwitchRole.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_acl.c_BTM_SwitchRole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i32* }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 (...)* }

@.str = private unnamed_addr constant [51 x i8] c"BTM_SwitchRole BDA: %02x-%02x-%02x-%02x-%02x-%02x\0A\00", align 1
@BTM_MODE_UNSUPPORTED = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Role switch on other device is in progress 0x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@BTM_BUSY = common dso_local global i64 0, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i32 0, align 4
@BTM_UNKNOWN_ADDR = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@BTM_ACL_SWKEY_STATE_IDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"BTM_SwitchRole busy: %d\0A\00", align 1
@BTM_PM_MD_PARK = common dso_local global i64 0, align 8
@BTM_PM_MD_SNIFF = common dso_local global i64 0, align 8
@BTM_PM_MD_ACTIVE = common dso_local global i32 0, align 4
@BTM_PM_SET_ONLY_ID = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_WRONG_MODE = common dso_local global i64 0, align 8
@BTM_ACL_SWKEY_STATE_MODE_CHANGE = common dso_local global i64 0, align 8
@BTM_SEC_ENCRYPTED = common dso_local global i32 0, align 4
@BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF = common dso_local global i64 0, align 8
@BTM_ACL_SWKEY_STATE_IN_PROGRESS = common dso_local global i64 0, align 8
@BTM_SEC_RS_PENDING = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@HCI_ERR_UNSUPPORTED_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_SwitchRole(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = call %struct.TYPE_17__* (...) @controller_get_interface()
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %3
  %40 = load i64, i64* @BTM_MODE_UNSUPPORTED, align 8
  store i64 %40, i64* %4, align 8
  br label %213

41:                                               ; preds = %3
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %70

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %70

47:                                               ; preds = %44
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32*, i32** %14, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load i64, i64* @BTM_BUSY, align 8
  store i64 %69, i64* %4, align 8
  br label %213

70:                                               ; preds = %44, %41
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @BT_TRANSPORT_BR_EDR, align 4
  %73 = call %struct.TYPE_16__* @btm_bda_to_acl(i32* %71, i32 %72)
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %8, align 8
  %74 = icmp eq %struct.TYPE_16__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @BTM_UNKNOWN_ADDR, align 8
  store i64 %76, i64* %4, align 8
  br label %213

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %84, i64* %4, align 8
  br label %213

85:                                               ; preds = %77
  %86 = load i32*, i32** %5, align 8
  %87 = call i64 @btm_is_sco_active_by_bdaddr(i32* %86)
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @TRUE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %92, i64* %4, align 8
  br label %213

93:                                               ; preds = %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BTM_ACL_SWKEY_STATE_IDLE, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 (i8*, i64, ...) @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %102)
  %104 = load i64, i64* @BTM_BUSY, align 8
  store i64 %104, i64* %4, align 8
  br label %213

105:                                              ; preds = %93
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @BTM_ReadPowerMode(i32 %108, i64* %12)
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* @BTM_SUCCESS, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %4, align 8
  br label %213

114:                                              ; preds = %105
  %115 = load i64, i64* %12, align 8
  %116 = load i64, i64* @BTM_PM_MD_PARK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* @BTM_PM_MD_SNIFF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118, %114
  %123 = bitcast %struct.TYPE_15__* %13 to i8*
  %124 = call i32 @memset(i8* %123, i32 0, i32 4)
  %125 = load i32, i32* @BTM_PM_MD_ACTIVE, align 4
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @BTM_PM_SET_ONLY_ID, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @BTM_SetPowerMode(i32 %127, i32 %130, %struct.TYPE_15__* %13)
  store i64 %131, i64* %11, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* @BTM_CMD_STARTED, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = load i64, i64* @BTM_WRONG_MODE, align 8
  store i64 %136, i64* %4, align 8
  br label %213

137:                                              ; preds = %122
  %138 = load i64, i64* @BTM_ACL_SWKEY_STATE_MODE_CHANGE, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %200

141:                                              ; preds = %118
  %142 = load i32*, i32** %5, align 8
  %143 = call %struct.TYPE_14__* @btm_find_dev(i32* %142)
  store %struct.TYPE_14__* %143, %struct.TYPE_14__** %9, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %145 = icmp ne %struct.TYPE_14__* %144, null
  br i1 %145, label %146, label %181

146:                                              ; preds = %141
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @BTM_SEC_ENCRYPTED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %146
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %155 = call i32 @BTM_EPR_AVAILABLE(%struct.TYPE_16__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %181, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @FALSE, align 4
  %168 = call i32 @btsnd_hcic_set_conn_encrypt(i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %163
  %171 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %171, i64* %4, align 8
  br label %213

172:                                              ; preds = %163
  %173 = load i64, i64* @BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %176

176:                                              ; preds = %172
  br label %177

177:                                              ; preds = %176, %157
  %178 = load i64, i64* @BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF, align 8
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %199

181:                                              ; preds = %153, %146, %141
  %182 = load i32*, i32** %5, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @btsnd_hcic_switch_role(i32* %182, i64 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %181
  %187 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %187, i64* %4, align 8
  br label %213

188:                                              ; preds = %181
  %189 = load i64, i64* @BTM_ACL_SWKEY_STATE_IN_PROGRESS, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %193 = icmp ne %struct.TYPE_14__* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* @BTM_SEC_RS_PENDING, align 4
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %188
  br label %199

199:                                              ; preds = %198, %177
  br label %200

200:                                              ; preds = %199, %137
  %201 = load i32*, i32** %7, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 1, i32 2), align 8
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* @BD_ADDR_LEN, align 4
  %207 = call i32 @memcpy(i32* %204, i32* %205, i32 %206)
  %208 = load i64, i64* %6, align 8
  store i64 %208, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 8
  %209 = load i32, i32* @HCI_ERR_UNSUPPORTED_VALUE, align 4
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %210 = load i32*, i32** %7, align 8
  store i32* %210, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @btm_cb, i32 0, i32 0, i32 0), align 8
  br label %211

211:                                              ; preds = %203, %200
  %212 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %212, i64* %4, align 8
  br label %213

213:                                              ; preds = %211, %186, %170, %135, %112, %99, %91, %83, %75, %47, %39
  %214 = load i64, i64* %4, align 8
  ret i64 %214
}

declare dso_local i32 @BTM_TRACE_API(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local %struct.TYPE_16__* @btm_bda_to_acl(i32*, i32) #1

declare dso_local i64 @btm_is_sco_active_by_bdaddr(i32*) #1

declare dso_local i64 @BTM_ReadPowerMode(i32, i64*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @BTM_SetPowerMode(i32, i32, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @btm_find_dev(i32*) #1

declare dso_local i32 @BTM_EPR_AVAILABLE(%struct.TYPE_16__*) #1

declare dso_local i32 @btsnd_hcic_set_conn_encrypt(i32, i32) #1

declare dso_local i32 @btsnd_hcic_switch_role(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
