; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.bt_mesh_net_tx = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_buf = type { i32, i32, i32 }
%struct.bt_mesh_send_cb = type { i32 (i32, i8*)*, i32 (i32, i32, i8*)* }

@.str = private unnamed_addr constant [53 x i8] c"src 0x%04x dst 0x%04x len %u headroom %u tailroom %u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Payload len %u: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Seq 0x%06x\00", align 1
@bt_mesh = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BLE_MESH_TTL_DEFAULT = common dso_local global i32 0, align 4
@CONFIG_BLE_MESH_GATT_PROXY_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_send(%struct.bt_mesh_net_tx* %0, %struct.net_buf* %1, %struct.bt_mesh_send_cb* %2, i8* %3) #0 {
  %5 = alloca %struct.bt_mesh_net_tx*, align 8
  %6 = alloca %struct.net_buf*, align 8
  %7 = alloca %struct.bt_mesh_send_cb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.bt_mesh_net_tx* %0, %struct.bt_mesh_net_tx** %5, align 8
  store %struct.net_buf* %1, %struct.net_buf** %6, align 8
  store %struct.bt_mesh_send_cb* %2, %struct.bt_mesh_send_cb** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %11 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %19 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %22 = call i32 @net_buf_headroom(%struct.net_buf* %21)
  %23 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %24 = call i32 @net_buf_tailroom(%struct.net_buf* %23)
  %25 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, i32 %20, i32 %22, i32 %24)
  %26 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %27 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %30 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %33 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bt_hex(i32 %31, i32 %34)
  %36 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 2), align 4
  %38 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %40 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BLE_MESH_TTL_DEFAULT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %4
  %47 = call i32 (...) @bt_mesh_default_ttl_get()
  %48 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %49 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %4
  %53 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %54 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %55 = getelementptr inbounds %struct.net_buf, %struct.net_buf* %54, i32 0, i32 0
  %56 = call i32 @bt_mesh_net_encode(%struct.bt_mesh_net_tx* %53, i32* %55, i32 0)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %123

60:                                               ; preds = %52
  %61 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %62 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @bt_mesh_fixed_group_match(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %70 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @bt_mesh_elem_find(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %109

76:                                               ; preds = %68, %60
  %77 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %78 = icmp ne %struct.bt_mesh_send_cb* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %81 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %80, i32 0, i32 1
  %82 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i8*)* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %86 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %85, i32 0, i32 1
  %87 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 %87(i32 0, i32 0, i8* %88)
  br label %90

90:                                               ; preds = %84, %79, %76
  %91 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %92 = call i32 @net_buf_ref(%struct.net_buf* %91)
  %93 = call i32 @net_buf_slist_put(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 1), i32 %92)
  %94 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %95 = icmp ne %struct.bt_mesh_send_cb* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %98 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %97, i32 0, i32 0
  %99 = load i32 (i32, i8*)*, i32 (i32, i8*)** %98, align 8
  %100 = icmp ne i32 (i32, i8*)* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %103 = getelementptr inbounds %struct.bt_mesh_send_cb, %struct.bt_mesh_send_cb* %102, i32 0, i32 0
  %104 = load i32 (i32, i8*)*, i32 (i32, i8*)** %103, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 %104(i32 0, i8* %105)
  br label %107

107:                                              ; preds = %101, %96, %90
  %108 = call i32 @k_work_submit(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bt_mesh, i32 0, i32 0))
  br label %122

109:                                              ; preds = %68
  %110 = load %struct.bt_mesh_net_tx*, %struct.bt_mesh_net_tx** %5, align 8
  %111 = getelementptr inbounds %struct.bt_mesh_net_tx, %struct.bt_mesh_net_tx* %110, i32 0, i32 0
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %118 = load %struct.bt_mesh_send_cb*, %struct.bt_mesh_send_cb** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @bt_mesh_adv_send(%struct.net_buf* %117, %struct.bt_mesh_send_cb* %118, i8* %119)
  br label %121

121:                                              ; preds = %116, %109
  br label %122

122:                                              ; preds = %121, %107
  br label %123

123:                                              ; preds = %122, %59
  %124 = load %struct.net_buf*, %struct.net_buf** %6, align 8
  %125 = call i32 @net_buf_unref(%struct.net_buf* %124)
  %126 = load i32, i32* %9, align 4
  ret i32 %126
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @net_buf_headroom(%struct.net_buf*) #1

declare dso_local i32 @net_buf_tailroom(%struct.net_buf*) #1

declare dso_local i32 @bt_hex(i32, i32) #1

declare dso_local i32 @bt_mesh_default_ttl_get(...) #1

declare dso_local i32 @bt_mesh_net_encode(%struct.bt_mesh_net_tx*, i32*, i32) #1

declare dso_local i64 @bt_mesh_fixed_group_match(i32) #1

declare dso_local i64 @bt_mesh_elem_find(i32) #1

declare dso_local i32 @net_buf_slist_put(i32*, i32) #1

declare dso_local i32 @net_buf_ref(%struct.net_buf*) #1

declare dso_local i32 @k_work_submit(i32*) #1

declare dso_local i32 @bt_mesh_adv_send(%struct.net_buf*, %struct.bt_mesh_send_cb*, i8*) #1

declare dso_local i32 @net_buf_unref(%struct.net_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
