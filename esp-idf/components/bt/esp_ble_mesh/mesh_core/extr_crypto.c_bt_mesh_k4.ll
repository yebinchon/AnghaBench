; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_k4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_crypto.c_bt_mesh_k4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.bt_mesh_k4.id6 = private unnamed_addr constant [4 x i8] c"id6\01", align 1
@.str = private unnamed_addr constant [5 x i8] c"smk4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_k4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i8], align 1
  %7 = alloca [16 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast [4 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.bt_mesh_k4.id6, i32 0, i32 0), i64 4, i1 false)
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %12 = call i32 @bt_mesh_s1(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %21 = call i32 @bt_mesh_aes_cmac_one(i8* %18, i8* %19, i32 16, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %17
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %30 = call i32 @bt_mesh_aes_cmac_one(i8* %27, i8* %28, i32 4, i8* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %26
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 15
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call signext i8 @BIT_MASK(i32 6)
  %40 = sext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %42, i8* %44, align 1
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %33, %24, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bt_mesh_s1(i8*, i8*) #2

declare dso_local i32 @bt_mesh_aes_cmac_one(i8*, i8*, i32, i8*) #2

declare dso_local signext i8 @BIT_MASK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
