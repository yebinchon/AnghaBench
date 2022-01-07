; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c__mod_pub_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_srv.c__mod_pub_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@STATUS_NVAL_PUB_PARAM = common dso_local global i8* null, align 8
@CONFIG_BLE_MESH_LOW_POWER = common dso_local global i32 0, align 4
@STATUS_FEAT_NOT_SUPP = common dso_local global i8* null, align 8
@BLE_MESH_ADDR_UNASSIGNED = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i8* null, align 8
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@STATUS_INVALID_APPKEY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"period %u ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bt_mesh_model*, i64, i64, i8*, i8*, i8*, i8*, i32)* @_mod_pub_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_mod_pub_set(%struct.bt_mesh_model* %0, i64 %1, i64 %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bt_mesh_model*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %20 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %8
  %24 = load i8*, i8** @STATUS_NVAL_PUB_PARAM, align 8
  store i8* %24, i8** %9, align 8
  br label %195

25:                                               ; preds = %8
  %26 = load i32, i32* @CONFIG_BLE_MESH_LOW_POWER, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i8*, i8** @STATUS_FEAT_NOT_SUPP, align 8
  store i8* %33, i8** %9, align 8
  br label %195

34:                                               ; preds = %29, %25
  %35 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %36 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i8*, i8** @STATUS_NVAL_PUB_PARAM, align 8
  store i8* %45, i8** %9, align 8
  br label %195

46:                                               ; preds = %41, %34
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %114

50:                                               ; preds = %46
  %51 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %52 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %59, i8** %9, align 8
  br label %195

60:                                               ; preds = %50
  %61 = load i64, i64* @BLE_MESH_ADDR_UNASSIGNED, align 8
  %62 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %63 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 %61, i64* %65, align 8
  %66 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 8
  %70 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %71 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 0, i32* %73, align 4
  %74 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %75 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %79 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  store i32 0, i32* %81, align 4
  %82 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %83 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  store i32 0, i32* %85, align 8
  %86 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %87 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  store i32 0, i32* %89, align 4
  %90 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %91 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %60
  %97 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %98 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 7
  %101 = call i32 @k_delayed_work_cancel(i32* %100)
  br label %102

102:                                              ; preds = %96, %60
  %103 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %104 = call i64 @IS_ENABLED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %111 = call i32 @bt_mesh_store_mod_pub(%struct.bt_mesh_model* %110)
  br label %112

112:                                              ; preds = %109, %106, %102
  %113 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %113, i8** %9, align 8
  br label %195

114:                                              ; preds = %46
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @bt_mesh_app_key_find(i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** @STATUS_INVALID_APPKEY, align 8
  store i8* %119, i8** %9, align 8
  br label %195

120:                                              ; preds = %114
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %123 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i64 %121, i64* %125, align 8
  %126 = load i64, i64* %12, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %129 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 8
  %132 = load i8*, i8** %13, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %135 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %134, i32 0, i32 0
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  store i32 %133, i32* %137, align 4
  %138 = load i8*, i8** %14, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %141 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  store i32 %139, i32* %143, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %147 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %146, i32 0, i32 0
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 4
  store i32 %145, i32* %149, align 4
  %150 = load i8*, i8** %16, align 8
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %153 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 5
  store i32 %151, i32* %155, align 8
  %156 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %157 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 8
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %183

162:                                              ; preds = %120
  %163 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %164 = call i64 @bt_mesh_model_pub_period_get(%struct.bt_mesh_model* %163)
  store i64 %164, i64* %18, align 8
  %165 = load i64, i64* %18, align 8
  %166 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %165)
  %167 = load i64, i64* %18, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %171 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %170, i32 0, i32 0
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 7
  %174 = load i64, i64* %18, align 8
  %175 = call i32 @k_delayed_work_submit(i32* %173, i64 %174)
  br label %182

176:                                              ; preds = %162
  %177 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %178 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 7
  %181 = call i32 @k_delayed_work_cancel(i32* %180)
  br label %182

182:                                              ; preds = %176, %169
  br label %183

183:                                              ; preds = %182, %120
  %184 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %185 = call i64 @IS_ENABLED(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %10, align 8
  %192 = call i32 @bt_mesh_store_mod_pub(%struct.bt_mesh_model* %191)
  br label %193

193:                                              ; preds = %190, %187, %183
  %194 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %194, i8** %9, align 8
  br label %195

195:                                              ; preds = %193, %118, %112, %58, %44, %32, %23
  %196 = load i8*, i8** %9, align 8
  ret i8* %196
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @k_delayed_work_cancel(i32*) #1

declare dso_local i32 @bt_mesh_store_mod_pub(%struct.bt_mesh_model*) #1

declare dso_local i32 @bt_mesh_app_key_find(i64) #1

declare dso_local i64 @bt_mesh_model_pub_period_get(%struct.bt_mesh_model*) #1

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @k_delayed_work_submit(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
