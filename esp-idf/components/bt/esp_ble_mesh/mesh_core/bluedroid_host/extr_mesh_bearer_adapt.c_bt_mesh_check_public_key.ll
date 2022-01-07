; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_check_public_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/bluedroid_host/extr_mesh_bearer_adapt.c_bt_mesh_check_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p256_pub_key = type { [32 x i32], [32 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_check_public_key(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.p256_pub_key, align 4
  store i32* %0, i32** %2, align 8
  %4 = bitcast %struct.p256_pub_key* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 256, i1 false)
  %5 = getelementptr inbounds %struct.p256_pub_key, %struct.p256_pub_key* %3, i32 0, i32 0
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @sys_memcpy_swap(i32* %6, i32* %7, i32 32)
  %9 = getelementptr inbounds %struct.p256_pub_key, %struct.p256_pub_key* %3, i32 0, i32 1
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 32
  %13 = call i32 @sys_memcpy_swap(i32* %10, i32* %12, i32 32)
  %14 = bitcast %struct.p256_pub_key* %3 to i32*
  %15 = call i32 @ECC_CheckPointIsInElliCur_P256(i32* %14)
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sys_memcpy_swap(i32*, i32*, i32) #2

declare dso_local i32 @ECC_CheckPointIsInElliCur_P256(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
