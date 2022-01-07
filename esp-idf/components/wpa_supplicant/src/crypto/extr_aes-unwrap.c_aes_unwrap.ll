; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-unwrap.c_aes_unwrap.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_aes-unwrap.c_aes_unwrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_unwrap(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @os_memcpy(i32* %16, i32* %17, i32 8)
  %19 = load i32*, i32** %9, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 8, %23
  %25 = call i32 @os_memcpy(i32* %20, i32* %22, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @aes_decrypt_init(i32* %26, i32 16)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %100

31:                                               ; preds = %4
  store i32 5, i32* %14, align 4
  br label %32

32:                                               ; preds = %79, %31
  %33 = load i32, i32* %14, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %37, 1
  %39 = mul nsw i32 %38, 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %11, align 8
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %75, %35
  %44 = load i32, i32* %13, align 4
  %45 = icmp sge i32 %44, 1
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %49 = call i32 @os_memcpy(i32* %47, i32* %48, i32 8)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %52, %53
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 7
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @os_memcpy(i32* %59, i32* %60, i32 8)
  %62 = load i8*, i8** %15, align 8
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %65 = call i32 @aes_decrypt(i8* %62, i32* %63, i32* %64)
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %68 = call i32 @os_memcpy(i32* %66, i32* %67, i32 8)
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  %72 = call i32 @os_memcpy(i32* %69, i32* %71, i32 8)
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -8
  store i32* %74, i32** %11, align 8
  br label %75

75:                                               ; preds = %46
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  br label %43

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %14, align 4
  br label %32

82:                                               ; preds = %32
  %83 = load i8*, i8** %15, align 8
  %84 = call i32 @aes_decrypt_deinit(i8* %83)
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %96, %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 166
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 -1, i32* %5, align 4
  br label %100

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %85

99:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %94, %30
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #1

declare dso_local i8* @aes_decrypt_init(i32*, i32) #1

declare dso_local i32 @aes_decrypt(i8*, i32*, i32*) #1

declare dso_local i32 @aes_decrypt_deinit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
