; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5.c_hmac_md5_vector.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5.c_hmac_md5_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_md5_vector(i32* %0, i64 %1, i64 %2, i32** %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca [64 x i32], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca [6 x i32*], align 16
  %17 = alloca i64, align 8
  %18 = alloca [6 x i64], align 16
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %116

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 64
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %27 = call i32 @md5_vector(i32 1, i32** %8, i64* %9, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %116

30:                                               ; preds = %25
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  store i32* %31, i32** %8, align 8
  store i64 16, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %34 = call i32 @os_memset(i32* %33, i32 0, i32 256)
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %36 = load i32*, i32** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @os_memcpy(i32* %35, i32* %36, i64 %37)
  store i64 0, i64* %17, align 8
  br label %39

39:                                               ; preds = %47, %32
  %40 = load i64, i64* %17, align 8
  %41 = icmp ult i64 %40, 64
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i64, i64* %17, align 8
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, 54
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %17, align 8
  br label %39

50:                                               ; preds = %39
  %51 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %52 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  store i32* %51, i32** %52, align 16
  %53 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  store i64 64, i64* %53, align 16
  store i64 0, i64* %17, align 8
  br label %54

54:                                               ; preds = %73, %50
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load i32**, i32*** %11, align 8
  %60 = load i64, i64* %17, align 8
  %61 = getelementptr inbounds i32*, i32** %59, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %17, align 8
  %64 = add i64 %63, 1
  %65 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 %64
  store i32* %62, i32** %65, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %17, align 8
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 %71
  store i64 %69, i64* %72, align 8
  br label %73

73:                                               ; preds = %58
  %74 = load i64, i64* %17, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %17, align 8
  br label %54

76:                                               ; preds = %54
  %77 = load i64, i64* %10, align 8
  %78 = add i64 1, %77
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  %81 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @md5_vector(i32 %79, i32** %80, i64* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 -1, i32* %7, align 4
  br label %116

86:                                               ; preds = %76
  %87 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %88 = call i32 @os_memset(i32* %87, i32 0, i32 256)
  %89 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %90 = load i32*, i32** %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @os_memcpy(i32* %89, i32* %90, i64 %91)
  store i64 0, i64* %17, align 8
  br label %93

93:                                               ; preds = %101, %86
  %94 = load i64, i64* %17, align 8
  %95 = icmp ult i64 %94, 64
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, 92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %96
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %17, align 8
  br label %93

104:                                              ; preds = %93
  %105 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 0
  %106 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  store i32* %105, i32** %106, align 16
  %107 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  store i64 64, i64* %107, align 16
  %108 = load i32*, i32** %13, align 8
  %109 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 1
  store i32* %108, i32** %109, align 8
  %110 = load i64, i64* @MD5_MAC_LEN, align 8
  %111 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 1
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds [6 x i32*], [6 x i32*]* %16, i64 0, i64 0
  %113 = getelementptr inbounds [6 x i64], [6 x i64]* %18, i64 0, i64 0
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @md5_vector(i32 2, i32** %112, i64* %113, i32* %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %104, %85, %29, %21
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @md5_vector(i32, i32**, i64*, i32*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
