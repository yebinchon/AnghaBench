; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_info_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_vendor_models/fast_prov_vendor_model/components/extr_esp_fast_prov_operation.c_example_send_fast_prov_info_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_buf_simple = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"min:       0x%04x, max:        0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"flags:     0x%02x,   iv_index:   0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"net_idx:   0x%04x, group_addr: 0x%04x\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"action:    0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"FAST_PROV_OP: match_val\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_INFO_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_send_fast_prov_info_set(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.net_buf_simple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.net_buf_simple* null, %struct.net_buf_simple** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %16, %13, %3
  %25 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %25, i32* %4, align 4
  br label %243

26:                                               ; preds = %21
  %27 = load i32, i32* @TAG, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* @TAG, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @TAG, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @TAG, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @ESP_LOGI(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ESP_LOG_BUFFER_HEX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 18, %65
  %67 = call %struct.net_buf_simple* @bt_mesh_alloc_buf(i32 %66)
  store %struct.net_buf_simple* %67, %struct.net_buf_simple** %8, align 8
  %68 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %69 = icmp ne %struct.net_buf_simple* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %26
  %71 = load i32, i32* @ESP_FAIL, align 4
  store i32 %71, i32* %4, align 4
  br label %243

72:                                               ; preds = %26
  %73 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %73, i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 0)
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %72
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BIT(i32 1)
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %90
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BIT(i32 2)
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @BIT(i32 3)
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 11
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @net_buf_simple_add_u8(%struct.net_buf_simple* %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @BIT(i32 4)
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @net_buf_simple_add_le32(%struct.net_buf_simple* %137, i32 %140)
  br label %142

142:                                              ; preds = %136, %129
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @BIT(i32 5)
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @BIT(i32 6)
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %155
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @BIT(i32 7)
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @net_buf_simple_add_le16(%struct.net_buf_simple* %176, i32 %179)
  br label %181

181:                                              ; preds = %175, %168
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @BIT(i32 8)
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %181
  %189 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @net_buf_simple_add_mem(%struct.net_buf_simple* %189, i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %188, %181
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @BIT(i32 9)
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %197
  %205 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 7
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @net_buf_simple_add_u8(%struct.net_buf_simple* %205, i32 %208)
  br label %210

210:                                              ; preds = %204, %197
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 0, i32* %211, align 4
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 0, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %213, align 4
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %217, align 4
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %221, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = load i32, i32* @ESP_BLE_MESH_VND_MODEL_OP_FAST_PROV_INFO_SET, align 4
  %227 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %228 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %231 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @esp_ble_mesh_client_model_send_msg(i32* %225, %struct.TYPE_9__* %10, i32 %226, i32 %229, i32 %232, i32 %235, i32 1, i32 %238)
  store i32 %239, i32* %9, align 4
  %240 = load %struct.net_buf_simple*, %struct.net_buf_simple** %8, align 8
  %241 = call i32 @bt_mesh_free_buf(%struct.net_buf_simple* %240)
  %242 = load i32, i32* %9, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %210, %70, %24
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, ...) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEX(i8*, i32, i32) #1

declare dso_local %struct.net_buf_simple* @bt_mesh_alloc_buf(i32) #1

declare dso_local i32 @net_buf_simple_add_le16(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @net_buf_simple_add_u8(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @net_buf_simple_add_le32(%struct.net_buf_simple*, i32) #1

declare dso_local i32 @net_buf_simple_add_mem(%struct.net_buf_simple*, i32, i32) #1

declare dso_local i32 @esp_ble_mesh_client_model_send_msg(i32*, %struct.TYPE_9__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bt_mesh_free_buf(%struct.net_buf_simple*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
