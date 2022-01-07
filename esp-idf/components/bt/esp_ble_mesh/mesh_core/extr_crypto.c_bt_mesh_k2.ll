; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_k2.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_k2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_sg = type { i32*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"n %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"p %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"smk2\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"NID 0x%02x enc_key %s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"priv_key %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_k2(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [3 x %struct.bt_mesh_sg], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca [16 x i32], align 16
  %17 = alloca [16 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @bt_hex(i32* %20, i32 16)
  %22 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @bt_hex(i32* %23, i32 %25)
  %27 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %29 = call i32 @bt_mesh_s1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %19, align 4
  store i32 %33, i32* %7, align 4
  br label %116

34:                                               ; preds = %6
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %38 = call i32 @bt_mesh_aes_cmac_one(i32* %35, i32* %36, i32 16, i32* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %7, align 4
  br label %116

43:                                               ; preds = %34
  store i32 1, i32* %18, align 4
  %44 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %45 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %44, i32 0, i32 0
  store i32* null, i32** %45, align 16
  %46 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %47 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 1
  %50 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 16
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 1
  %53 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 2
  %55 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %54, i32 0, i32 0
  store i32* %18, i32** %55, align 16
  %56 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 2
  %57 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %56, i32 0, i32 1
  store i64 4, i64* %57, align 8
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %59 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %60 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %61 = call i32 @ARRAY_SIZE(%struct.bt_mesh_sg* %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %63 = call i32 @bt_mesh_aes_cmac(i32* %58, %struct.bt_mesh_sg* %59, i32 %61, i32* %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = load i32, i32* %19, align 4
  store i32 %67, i32* %7, align 4
  br label %116

68:                                               ; preds = %43
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 15
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 127
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %75 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %76 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %75, i32 0, i32 0
  store i32* %74, i32** %76, align 16
  %77 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %78 = getelementptr inbounds %struct.bt_mesh_sg, %struct.bt_mesh_sg* %77, i32 0, i32 1
  store i64 64, i64* %78, align 8
  store i32 2, i32* %18, align 4
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %80 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %81 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %82 = call i32 @ARRAY_SIZE(%struct.bt_mesh_sg* %81)
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %84 = call i32 @bt_mesh_aes_cmac(i32* %79, %struct.bt_mesh_sg* %80, i32 %82, i32* %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %68
  %88 = load i32, i32* %19, align 4
  store i32 %88, i32* %7, align 4
  br label %116

89:                                               ; preds = %68
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %92 = call i32 @memcpy(i32* %90, i32* %91, i32 16)
  store i32 3, i32* %18, align 4
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %94 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %95 = getelementptr inbounds [3 x %struct.bt_mesh_sg], [3 x %struct.bt_mesh_sg]* %14, i64 0, i64 0
  %96 = call i32 @ARRAY_SIZE(%struct.bt_mesh_sg* %95)
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %98 = call i32 @bt_mesh_aes_cmac(i32* %93, %struct.bt_mesh_sg* %94, i32 %96, i32* %97)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32, i32* %19, align 4
  store i32 %102, i32* %7, align 4
  br label %116

103:                                              ; preds = %89
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %106 = call i32 @memcpy(i32* %104, i32* %105, i32 16)
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @bt_hex(i32* %110, i32 16)
  %112 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %111)
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @bt_hex(i32* %113, i32 16)
  %115 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %103, %101, %87, %66, %41, %32
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @bt_hex(i32*, i32) #1

declare dso_local i32 @bt_mesh_s1(i8*, i32*) #1

declare dso_local i32 @bt_mesh_aes_cmac_one(i32*, i32*, i32, i32*) #1

declare dso_local i32 @bt_mesh_aes_cmac(i32*, %struct.bt_mesh_sg*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bt_mesh_sg*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
