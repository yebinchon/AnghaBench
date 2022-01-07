; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-wrap.c_aes_wrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-wrap.c_aes_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_wrap(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @os_memset(i32* %19, i32 166, i32 8)
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 8, %23
  %25 = call i32 @os_memcpy(i32* %21, i32* %22, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @aes_encrypt_init(i32* %26, i32 16)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %82

31:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, i32* %14, align 4
  %34 = icmp sle i32 %33, 5
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %11, align 8
  store i32 1, i32* %13, align 4
  br label %38

38:                                               ; preds = %72, %35
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @os_memcpy(i32* %43, i32* %44, i32 8)
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @os_memcpy(i32* %47, i32* %48, i32 8)
  %50 = load i8*, i8** %15, align 8
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %53 = call i32 @aes_encrypt(i8* %50, i32* %51, i32* %52)
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %56 = call i32 @os_memcpy(i32* %54, i32* %55, i32 8)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %14, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %68 = getelementptr inbounds i32, i32* %67, i64 8
  %69 = call i32 @os_memcpy(i32* %66, i32* %68, i32 8)
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  store i32* %71, i32** %11, align 8
  br label %72

72:                                               ; preds = %42
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %38

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @aes_encrypt_deinit(i8* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %30
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i8* @aes_encrypt_init(i32*, i32) #1

declare dso_local i32 @aes_encrypt(i8*, i32*, i32*) #1

declare dso_local i32 @aes_encrypt_deinit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
