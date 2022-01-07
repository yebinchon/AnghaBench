; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_app_encrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_app_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"AppKey %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"dev_key %u src 0x%04x dst 0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"seq_num 0x%08x iv_index 0x%08x\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Clear: %s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Nonce  %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Encr: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_app_encrypt(i32* %0, i32 %1, i32 %2, %struct.net_buf_simple* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.net_buf_simple*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [13 x i32], align 16
  %20 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.net_buf_simple* %3, %struct.net_buf_simple** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @bt_hex(i32* %21, i32 16)
  %23 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* %18, align 4
  %30 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %32 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %35 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @bt_hex(i32* %33, i32 %36)
  %38 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds [13 x i32], [13 x i32]* %19, i64 0, i64 0
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @create_app_nonce(i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = getelementptr inbounds [13 x i32], [13 x i32]* %19, i64 0, i64 0
  %48 = call i32 @bt_hex(i32* %47, i32 13)
  %49 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds [13 x i32], [13 x i32]* %19, i64 0, i64 0
  %52 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %53 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %56 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 16, i32 0
  %63 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %64 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @APP_MIC_LEN(i32 %66)
  %68 = call i32 @bt_mesh_ccm_encrypt(i32* %50, i32* %51, i32* %54, i32 %57, i32* %58, i32 %62, i32* %65, i32 %67)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %9
  %72 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @APP_MIC_LEN(i32 %73)
  %75 = call i32 @net_buf_simple_add(%struct.net_buf_simple* %72, i32 %74)
  %76 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %77 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.net_buf_simple*, %struct.net_buf_simple** %13, align 8
  %80 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bt_hex(i32* %78, i32 %81)
  %83 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %71, %9
  %85 = load i32, i32* %20, align 4
  ret i32 %85
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @create_app_nonce(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bt_mesh_ccm_encrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @APP_MIC_LEN(i32) #1

declare dso_local i32 @net_buf_simple_add(%struct.net_buf_simple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
