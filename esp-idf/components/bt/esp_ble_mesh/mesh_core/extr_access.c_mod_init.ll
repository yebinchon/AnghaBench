; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_mod_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 (%struct.bt_mesh_model*, i32)* }
%struct.bt_mesh_model = type { i64, %struct.bt_mesh_model*, %struct.bt_mesh_elem*, i64, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.bt_mesh_elem* }
%struct.TYPE_6__ = type { i32, %struct.bt_mesh_model* }
%struct.bt_mesh_elem = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@mod_publish = common dso_local global i32 0, align 4
@BLE_MESH_KEY_UNUSED = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@dev_comp = common dso_local global %struct.TYPE_8__* null, align 8
@model_init = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt_mesh_model*, %struct.bt_mesh_elem*, i32, i32, i8*)* @mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mod_init(%struct.bt_mesh_model* %0, %struct.bt_mesh_elem* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.bt_mesh_model*, align 8
  %7 = alloca %struct.bt_mesh_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %6, align 8
  store %struct.bt_mesh_elem* %1, %struct.bt_mesh_elem** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %7, align 8
  %13 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %14 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %13, i32 0, i32 6
  store %struct.bt_mesh_elem* %12, %struct.bt_mesh_elem** %14, align 8
  %15 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %16 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %5
  %20 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %21 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store %struct.bt_mesh_model* %20, %struct.bt_mesh_model** %24, align 8
  %25 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %26 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %25, i32 0, i32 5
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* @mod_publish, align 4
  %30 = call i32 @k_delayed_work_init(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %19, %5
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %35 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %34, i32 0, i32 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %41 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = bitcast %struct.TYPE_7__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.TYPE_7__* @BLE_MESH_KEY_UNUSED to i8*), i64 16, i1 false)
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %52 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %7, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev_comp, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %53, i64 %58
  %60 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %61 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %60, i32 0, i32 2
  store %struct.bt_mesh_elem* %59, %struct.bt_mesh_elem** %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %50
  %65 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %66 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %7, align 8
  %67 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %65, i64 %70
  %72 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %73 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %72, i32 0, i32 1
  store %struct.bt_mesh_model* %71, %struct.bt_mesh_model** %73, align 8
  br label %84

74:                                               ; preds = %50
  %75 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %76 = load %struct.bt_mesh_elem*, %struct.bt_mesh_elem** %7, align 8
  %77 = getelementptr inbounds %struct.bt_mesh_elem, %struct.bt_mesh_elem* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %75, i64 %80
  %82 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %83 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %82, i32 0, i32 1
  store %struct.bt_mesh_model* %81, %struct.bt_mesh_model** %83, align 8
  br label %84

84:                                               ; preds = %74, %64
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %119

88:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %116, %88
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** @model_init, align 8
  %92 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %119

94:                                               ; preds = %89
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** @model_init, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %102 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %94
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @model_init, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32 (%struct.bt_mesh_model*, i32)*, i32 (%struct.bt_mesh_model*, i32)** %110, align 8
  %112 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 %111(%struct.bt_mesh_model* %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %94
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %89

119:                                              ; preds = %87, %89
  ret void
}

declare dso_local i32 @k_delayed_work_init(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
