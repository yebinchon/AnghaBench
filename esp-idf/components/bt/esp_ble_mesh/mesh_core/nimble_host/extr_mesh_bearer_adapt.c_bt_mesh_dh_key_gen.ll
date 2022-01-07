; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_bt_mesh_dh_key_gen.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/nimble_host/extr_mesh_bearer_adapt.c_bt_mesh_dh_key_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"private key = %s\00", align 1
@bt_mesh_private_key = common dso_local global i32 0, align 4
@BT_OCTET32_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_dh_key_gen(i32* %0, i32 (i32*, i32)* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32 (i32*, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i32], align 16
  store i32* %0, i32** %4, align 8
  store i32 (i32*, i32)* %1, i32 (i32*, i32)** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @bt_mesh_private_key, align 4
  %9 = load i32, i32* @BT_OCTET32_LEN, align 4
  %10 = call i32 @bt_hex(i32 %8, i32 %9)
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 32
  %16 = load i32, i32* @bt_mesh_private_key, align 4
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %18 = call i32 @ble_sm_alg_gen_dhkey(i32* %13, i32* %15, i32 %16, i32* %17)
  %19 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %20 = icmp ne i32 (i32*, i32)* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32 (i32*, i32)*, i32 (i32*, i32)** %5, align 8
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 %22(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @bt_hex(i32, i32) #1

declare dso_local i32 @ble_sm_alg_gen_dhkey(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
