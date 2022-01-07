; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_tc_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@Nk = common dso_local global i32 0, align 4
@Nb = common dso_local global i32 0, align 4
@TC_CRYPTO_FAIL = common dso_local global i32 0, align 4
@Nr = common dso_local global i32 0, align 4
@TC_ZERO_BYTE = common dso_local global i32 0, align 4
@TC_CRYPTO_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tc_aes_encrypt(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %12 = load i32, i32* @Nk, align 4
  %13 = load i32, i32* @Nb, align 4
  %14 = mul nsw i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %21, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %91

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %91

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @TC_CRYPTO_FAIL, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %91

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  %35 = mul nuw i64 4, %15
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %6, align 8
  %38 = mul nuw i64 4, %15
  %39 = trunc i64 %38 to i32
  %40 = call i32 @_copy(i32* %17, i32 %36, i32* %37, i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @add_round_key(i32* %17, i64 %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %64, %34
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @Nr, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = call i32 @sub_bytes(i32* %17)
  %52 = call i32 @shift_rows(i32* %17)
  %53 = call i32 @mix_columns(i32* %17)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @Nb, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %58, 1
  %60 = mul i32 %57, %59
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %56, %61
  %63 = call i32 @add_round_key(i32* %17, i64 %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %45

67:                                               ; preds = %45
  %68 = call i32 @sub_bytes(i32* %17)
  %69 = call i32 @shift_rows(i32* %17)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @Nb, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, 1
  %76 = mul i32 %73, %75
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %72, %77
  %79 = call i32 @add_round_key(i32* %17, i64 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = mul nuw i64 4, %15
  %82 = trunc i64 %81 to i32
  %83 = mul nuw i64 4, %15
  %84 = trunc i64 %83 to i32
  %85 = call i32 @_copy(i32* %80, i32 %82, i32* %17, i32 %84)
  %86 = load i32, i32* @TC_ZERO_BYTE, align 4
  %87 = mul nuw i64 4, %15
  %88 = trunc i64 %87 to i32
  %89 = call i32 @_set(i32* %17, i32 %86, i32 %88)
  %90 = load i32, i32* @TC_CRYPTO_SUCCESS, align 4
  store i32 %90, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %91

91:                                               ; preds = %67, %30, %25, %20
  %92 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_copy(i32*, i32, i32*, i32) #2

declare dso_local i32 @add_round_key(i32*, i64) #2

declare dso_local i32 @sub_bytes(i32*) #2

declare dso_local i32 @shift_rows(i32*) #2

declare dso_local i32 @mix_columns(i32*) #2

declare dso_local i32 @_set(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
