; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_encrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"IVIndex %u EncKey %s mic_len %u\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PDU (len %u) %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Nonce %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_encrypt(i32* %0, %struct.net_buf_simple* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [13 x i32], align 16
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.net_buf_simple* %1, %struct.net_buf_simple** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %13 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @NET_MIC_LEN(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bt_hex(i32* %17, i32 16)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18, i32 %19)
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %22 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %25 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %28 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bt_hex(i32* %26, i32 %29)
  %31 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %30)
  %32 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %33 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %34 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @create_net_nonce(i32* %32, i32* %35, i32 %36)
  %38 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %39 = call i32 @bt_hex(i32* %38, i32 13)
  %40 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %43 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %44 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %48 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 7
  %51 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %52 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @bt_mesh_ccm_encrypt(i32* %41, i32* %42, i32* %46, i32 %50, i32* null, i32 0, i32* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %4
  %60 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @net_buf_simple_add(%struct.net_buf_simple* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %4
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i32 @NET_MIC_LEN(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @create_net_nonce(i32*, i32*, i32) #1

declare dso_local i32 @bt_mesh_ccm_encrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @net_buf_simple_add(%struct.net_buf_simple*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
