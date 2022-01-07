; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_decrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_buf_simple = type { i32*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"PDU (%u bytes) %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"iv_index %u, key %s mic_len %u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Nonce %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_decrypt(i32* %0, %struct.net_buf_simple* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.net_buf_simple*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [13 x i32], align 16
  store i32* %0, i32** %5, align 8
  store %struct.net_buf_simple* %1, %struct.net_buf_simple** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %12 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @NET_MIC_LEN(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %16 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %19 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %22 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bt_hex(i32* %20, i32 %23)
  %25 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @bt_hex(i32* %27, i32 16)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28, i32 %29)
  %31 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %32 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %33 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @create_net_nonce(i32* %31, i32* %34, i32 %35)
  %37 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %38 = call i32 @bt_hex(i32* %37, i32 13)
  %39 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %42 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds [13 x i32], [13 x i32]* %10, i64 0, i64 0
  %47 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %48 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  %51 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %52 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 7
  %55 = load %struct.net_buf_simple*, %struct.net_buf_simple** %6, align 8
  %56 = getelementptr inbounds %struct.net_buf_simple, %struct.net_buf_simple* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @bt_mesh_ccm_decrypt(i32* %45, i32* %46, i32* %50, i32 %54, i32* null, i32 0, i32* %58, i32 %59)
  ret i32 %60
}

declare dso_local i32 @NET_MIC_LEN(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @create_net_nonce(i32*, i32*, i32) #1

declare dso_local i32 @bt_mesh_ccm_decrypt(i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
