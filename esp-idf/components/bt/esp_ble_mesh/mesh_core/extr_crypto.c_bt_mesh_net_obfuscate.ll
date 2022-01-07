; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_obfuscate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_net_obfuscate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"IVIndex %u, PrivacyKey %s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PrivacyRandom %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_obfuscate(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = bitcast [16 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = load i32, i32* %6, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @bt_hex(i32* %14, i32 16)
  %16 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5
  %19 = call i32 @sys_put_be32(i32 %17, i32* %18)
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 7
  %23 = call i32 @memcpy(i32* %20, i32* %22, i32 7)
  %24 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %25 = call i32 @bt_hex(i32* %24, i32 16)
  %26 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %30 = call i32 @bt_mesh_encrypt_be(i32* %27, i32* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 6
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, %43
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %36

54:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #2

declare dso_local i32 @bt_hex(i32*, i32) #2

declare dso_local i32 @sys_put_be32(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @bt_mesh_encrypt_be(i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
