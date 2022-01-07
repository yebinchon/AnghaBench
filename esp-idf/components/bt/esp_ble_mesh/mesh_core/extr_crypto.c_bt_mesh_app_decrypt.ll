; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_app_decrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_app_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"EncData (len %u) %s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"AppKey %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Nonce  %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_app_decrypt(i32* %0, i32 %1, i32 %2, %struct.net_buf_simple* %3, %struct.net_buf_simple* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_buf_simple*, align 8
  %15 = alloca %struct.net_buf_simple*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [13 x i32], align 16
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.net_buf_simple* %3, %struct.net_buf_simple** %14, align 8
  store %struct.net_buf_simple* %4, %struct.net_buf_simple** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %24 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %27 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %30 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bt_hex(i32* %28, i32 %31)
  %33 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %32)
  %34 = getelementptr inbounds [13 x i32], [13 x i32]* %21, i64 0, i64 0
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = call i32 @create_app_nonce(i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @bt_hex(i32* %42, i32 16)
  %44 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* %21, i64 0, i64 0
  %46 = call i32 @bt_hex(i32* %45, i32 13)
  %47 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds [13 x i32], [13 x i32]* %21, i64 0, i64 0
  %50 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %51 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %54 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 16, i32 0
  %61 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %62 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @APP_MIC_LEN(i32 %64)
  %66 = call i32 @bt_mesh_ccm_decrypt(i32* %48, i32* %49, i32* %52, i32 %55, i32* %56, i32 %60, i32* %63, i32 %65)
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %10
  %70 = load %struct.net_buf_simple*, %struct.net_buf_simple** %15, align 8
  %71 = load %struct.net_buf_simple*, %struct.net_buf_simple** %14, align 8
  %72 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @net_buf_simple_add(%struct.net_buf_simple* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %10
  %76 = load i32, i32* %22, align 4
  ret i32 %76
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @create_app_nonce(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bt_mesh_ccm_decrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @APP_MIC_LEN(i32) #1

declare dso_local i32 @net_buf_simple_add(%struct.net_buf_simple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
