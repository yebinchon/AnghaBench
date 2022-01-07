; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gatts.c_btc_gatts_call_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gatts.c_btc_gatts_call_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_58__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32 }
%struct.TYPE_56__ = type { i32, i64 }
%struct.TYPE_57__ = type { %struct.TYPE_51__, %struct.TYPE_50__, %struct.TYPE_48__, i32, %struct.TYPE_46__, %struct.TYPE_45__, %struct.TYPE_42__, %struct.TYPE_41__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_66__, %struct.TYPE_65__, %struct.TYPE_64__, %struct.TYPE_63__, %struct.TYPE_62__, %struct.TYPE_60__, %struct.TYPE_59__ }
%struct.TYPE_51__ = type { i32, i32 }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_48__ = type { i32, i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32 }
%struct.TYPE_45__ = type { i32, i32, i32, i32* }
%struct.TYPE_42__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_41__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_65__ = type { i32 }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_63__ = type { i32, i32, i32, i32 }
%struct.TYPE_62__ = type { i32, i32, i32 }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_49__, i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_53__ = type { i32, %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_54__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }

@LEN_UUID_16 = common dso_local global i32 0, align 4
@btc_gatts_inter_cb = common dso_local global i32 0, align 4
@BTA_GATT_TRANSPORT_LE = common dso_local global i32 0, align 4
@ESP_GATTS_RESPONSE_EVT = common dso_local global i32 0, align 4
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@BT_DEVICE_TYPE_BREDR = common dso_local global i32 0, align 4
@addr_type = common dso_local global i32 0, align 4
@device_type = common dso_local global i32 0, align 4
@p_cb = common dso_local global %struct.TYPE_58__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_gatts_call_handler(%struct.TYPE_56__* %0) #0 {
  %2 = alloca %struct.TYPE_56__*, align 8
  %3 = alloca %struct.TYPE_57__*, align 8
  %4 = alloca %struct.TYPE_52__, align 4
  %5 = alloca %struct.TYPE_53__, align 4
  %6 = alloca %struct.TYPE_52__, align 4
  %7 = alloca %struct.TYPE_52__, align 4
  %8 = alloca %struct.TYPE_55__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_54__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %2, align 8
  %13 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_57__*
  store %struct.TYPE_57__* %16, %struct.TYPE_57__** %3, align 8
  %17 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %281 [
    i32 140, label %20
    i32 139, label %31
    i32 136, label %37
    i32 137, label %58
    i32 135, label %76
    i32 129, label %82
    i32 128, label %89
    i32 141, label %95
    i32 143, label %105
    i32 142, label %129
    i32 133, label %149
    i32 132, label %171
    i32 130, label %223
    i32 134, label %237
    i32 138, label %254
    i32 131, label %267
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @LEN_UUID_16, align 4
  %22 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %23, i32 0, i32 16
  %25 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %4, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @btc_gatts_inter_cb, align 4
  %30 = call i32 @BTA_GATTS_AppRegister(%struct.TYPE_52__* %4, i32 %29)
  br label %282

31:                                               ; preds = %1
  %32 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @BTA_GATTS_AppDeregister(i32 %35)
  br label %282

37:                                               ; preds = %1
  %38 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %38, i32 0, i32 14
  %40 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %39, i32 0, i32 2
  %41 = call i32 @btc_to_bta_srvc_id(%struct.TYPE_53__* %5, i32* %40)
  %42 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %42, i32 0, i32 14
  %44 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %51, i32 0, i32 14
  %53 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BTA_GATTS_CreateService(i32 %45, i32* %47, i32 %50, i32 %54, i32 %56)
  br label %282

58:                                               ; preds = %1
  %59 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %59, i32 0, i32 13
  %61 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %63, i32 0, i32 13
  %65 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %67, i32 0, i32 13
  %69 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @btc_gatts_act_create_attr_tab(i32 %62, i32 %66, i32 %70, i32 %74)
  br label %282

76:                                               ; preds = %1
  %77 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @BTA_GATTS_DeleteService(i32 %80)
  br label %282

82:                                               ; preds = %1
  %83 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BTA_GATT_TRANSPORT_LE, align 4
  %88 = call i32 @BTA_GATTS_StartService(i32 %86, i32 %87)
  br label %282

89:                                               ; preds = %1
  %90 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %90, i32 0, i32 10
  %92 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @BTA_GATTS_StopService(i32 %93)
  br label %282

95:                                               ; preds = %1
  %96 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %96, i32 0, i32 9
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BTA_GATTS_AddIncludeService(i32 %99, i32 %103)
  br label %282

105:                                              ; preds = %1
  %106 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 5
  %109 = call i32 @btc_to_bta_uuid(%struct.TYPE_52__* %6, i32* %108)
  %110 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %118, i32 0, i32 8
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %125, i32 0, i32 8
  %127 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %126, i32 0, i32 0
  %128 = call i32 @BTA_GATTS_AddCharacteristic(i32 %113, %struct.TYPE_52__* %6, i32 %117, i32 %121, i32* %124, i32* %127)
  br label %282

129:                                              ; preds = %1
  %130 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %131, i32 0, i32 4
  %133 = call i32 @btc_to_bta_uuid(%struct.TYPE_52__* %7, i32* %132)
  %134 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 0
  %148 = call i32 @BTA_GATTS_AddCharDescriptor(i32 %137, i32 %141, %struct.TYPE_52__* %7, i32* %144, i32* %147)
  br label %282

149:                                              ; preds = %1
  %150 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %166, i32 0, i32 6
  %168 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @BTA_GATTS_HandleValueIndication(i32 %153, i32 %157, i32 %161, i32 %165, i32 %169)
  br label %282

171:                                              ; preds = %1
  %172 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %9, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %199

178:                                              ; preds = %171
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @btc_to_bta_response(%struct.TYPE_54__* %10, i32* %179)
  %181 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @BTA_GATTS_SendRsp(i32 %184, i32 %188, i32 %192, %struct.TYPE_54__* %10)
  %194 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %10, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %8, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %213

199:                                              ; preds = %171
  %200 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @BTA_GATTS_SendRsp(i32 %203, i32 %207, i32 %211, %struct.TYPE_54__* null)
  br label %213

213:                                              ; preds = %199, %178
  %214 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %8, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %214, i32 0, i32 0
  store i32 0, i32* %215, align 4
  %216 = load i32, i32* @ESP_GATTS_RESPONSE_EVT, align 4
  %217 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @BTC_GATT_GET_GATT_IF(i32 %220)
  %222 = call i32 @btc_gatts_cb_to_app(i32 %216, i32 %221, %struct.TYPE_55__* %8)
  br label %282

223:                                              ; preds = %1
  %224 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @BTA_SetAttributeValue(i32 %227, i32 %231, i32 %235)
  br label %282

237:                                              ; preds = %1
  %238 = load i32, i32* @BTA_GATT_TRANSPORT_LE, align 4
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* @BTA_GATT_TRANSPORT_LE, align 4
  store i32 %239, i32* %11, align 4
  %240 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @BTA_GATTS_Open(i32 %243, i32 %247, i32 %251, i32 %252)
  br label %282

254:                                              ; preds = %1
  %255 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @BTA_GATTS_Close(i32 %264)
  br label %266

266:                                              ; preds = %260, %254
  br label %282

267:                                              ; preds = %1
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @BD_ADDR_LEN, align 4
  %274 = call i32 @memcpy(i32 %268, i32 %272, i32 %273)
  %275 = load %struct.TYPE_57__*, %struct.TYPE_57__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = call i32 @BTA_GATTS_SendServiceChangeIndication(i32 %278, i32 %279)
  br label %282

281:                                              ; preds = %1
  br label %282

282:                                              ; preds = %281, %267, %266, %237, %223, %213, %149, %129, %105, %95, %89, %82, %76, %58, %37, %31, %20
  %283 = load %struct.TYPE_56__*, %struct.TYPE_56__** %2, align 8
  %284 = call i32 @btc_gatts_arg_deep_free(%struct.TYPE_56__* %283)
  ret void
}

declare dso_local i32 @BTA_GATTS_AppRegister(%struct.TYPE_52__*, i32) #1

declare dso_local i32 @BTA_GATTS_AppDeregister(i32) #1

declare dso_local i32 @btc_to_bta_srvc_id(%struct.TYPE_53__*, i32*) #1

declare dso_local i32 @BTA_GATTS_CreateService(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @btc_gatts_act_create_attr_tab(i32, i32, i32, i32) #1

declare dso_local i32 @BTA_GATTS_DeleteService(i32) #1

declare dso_local i32 @BTA_GATTS_StartService(i32, i32) #1

declare dso_local i32 @BTA_GATTS_StopService(i32) #1

declare dso_local i32 @BTA_GATTS_AddIncludeService(i32, i32) #1

declare dso_local i32 @btc_to_bta_uuid(%struct.TYPE_52__*, i32*) #1

declare dso_local i32 @BTA_GATTS_AddCharacteristic(i32, %struct.TYPE_52__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @BTA_GATTS_AddCharDescriptor(i32, i32, %struct.TYPE_52__*, i32*, i32*) #1

declare dso_local i32 @BTA_GATTS_HandleValueIndication(i32, i32, i32, i32, i32) #1

declare dso_local i32 @btc_to_bta_response(%struct.TYPE_54__*, i32*) #1

declare dso_local i32 @BTA_GATTS_SendRsp(i32, i32, i32, %struct.TYPE_54__*) #1

declare dso_local i32 @btc_gatts_cb_to_app(i32, i32, %struct.TYPE_55__*) #1

declare dso_local i32 @BTC_GATT_GET_GATT_IF(i32) #1

declare dso_local i32 @BTA_SetAttributeValue(i32, i32, i32) #1

declare dso_local i32 @BTA_GATTS_Open(i32, i32, i32, i32) #1

declare dso_local i32 @BTA_GATTS_Close(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BTA_GATTS_SendServiceChangeIndication(i32, i32) #1

declare dso_local i32 @btc_gatts_arg_deep_free(%struct.TYPE_56__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
