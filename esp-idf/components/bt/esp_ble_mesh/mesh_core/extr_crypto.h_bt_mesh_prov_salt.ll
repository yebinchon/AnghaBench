; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.h_bt_mesh_prov_salt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.h_bt_mesh_prov_salt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_sg = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @bt_mesh_prov_salt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_mesh_prov_salt(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [16 x i32], align 16
  %10 = alloca [3 x %struct.bt_mesh_sg], align 16
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %10, i64 0, i64 0
  %13 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %12, i32 0, i32 0
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %14 to i32
  store i32 %15, i32* %13, align 16
  %16 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %12, i32 0, i32 1
  store i32* inttoptr (i64 16 to i32*), i32** %16, align 8
  %17 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %12, i64 1
  %18 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %17, i32 0, i32 0
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i32
  store i32 %20, i32* %18, align 16
  %21 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %17, i32 0, i32 1
  store i32* inttoptr (i64 16 to i32*), i32** %21, align 8
  %22 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %17, i64 1
  %23 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %22, i32 0, i32 0
  %24 = load i32*, i32** %7, align 8
  %25 = ptrtoint i32* %24 to i32
  store i32 %25, i32* %23, align 16
  %26 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %22, i32 0, i32 1
  store i32* inttoptr (i64 16 to i32*), i32** %26, align 8
  %27 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %10, i64 0, i64 0
  %30 = call i32 @ARRAY_SIZE(%struct.bt_mesh_sg* %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @bt_mesh_aes_cmac(i32* %27, %struct.bt_mesh_sg* %28, i32 %30, i32* %31)
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bt_mesh_aes_cmac(i32*, %struct.bt_mesh_sg*, i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_sg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
