; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_cli_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_cfg_cli.c_bt_mesh_cfg_cli_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, %struct.bt_mesh_model* }
%struct.TYPE_5__ = type { i32 }
%struct.bt_mesh_model = type { i32*, i64 }

@.str = private unnamed_addr constant [11 x i8] c"primary %u\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Configuration Client only allowed in primary element\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Configuration Client model is NULL\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"No Configuration Client context provided\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"Allocate memory for Configuration Client internal data fail\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cfg_op_pair = common dso_local global i32 0, align 4
@cli = common dso_local global %struct.TYPE_6__* null, align 8
@BLE_MESH_KEY_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_cfg_cli_init(%struct.bt_mesh_model* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_mesh_model*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %18 = icmp ne %struct.bt_mesh_model* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = call i32 @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %16
  %24 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %25 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %66

34:                                               ; preds = %23
  %35 = call %struct.TYPE_5__* @osi_calloc(i32 4)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %6, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = call i32 @BT_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @sys_slist_init(i32* %44)
  %46 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store %struct.bt_mesh_model* %46, %struct.bt_mesh_model** %48, align 8
  %49 = load i32, i32* @cfg_op_pair, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @cfg_op_pair, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** @cli, align 8
  %60 = load i32, i32* @BLE_MESH_KEY_DEV, align 4
  %61 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %4, align 8
  %62 = getelementptr inbounds %struct.bt_mesh_model, %struct.bt_mesh_model* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %60, i32* %64, align 4
  %65 = call i32 (...) @bt_mesh_cfg_client_mutex_new()
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %42, %38, %30, %19, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.TYPE_5__* @osi_calloc(i32) #1

declare dso_local i32 @sys_slist_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @bt_mesh_cfg_client_mutex_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
