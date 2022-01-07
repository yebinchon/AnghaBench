; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha1.c_hmac_sha1_vector.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha1.c_hmac_sha1_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_sha1_vector(i8* %0, i64 %1, i64 %2, i8** %3, i64* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [64 x i8], align 16
  %15 = alloca [20 x i8], align 16
  %16 = alloca [6 x i8*], align 16
  %17 = alloca [6 x i64], align 16
  %18 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ugt i64 %19, 5
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %120

22:                                               ; preds = %6
  %23 = load i64, i64* %9, align 8
  %24 = icmp ugt i64 %23, 64
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %27 = call i32 @sha1_vector(i32 1, i8** %8, i64* %9, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 -1, i32* %7, align 4
  br label %120

30:                                               ; preds = %25
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  store i8* %31, i8** %8, align 8
  store i64 20, i64* %9, align 8
  br label %32

32:                                               ; preds = %30, %22
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %34 = call i32 @os_memset(i8* %33, i32 0, i32 64)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @os_memcpy(i8* %35, i8* %36, i64 %37)
  store i64 0, i64* %18, align 8
  br label %39

39:                                               ; preds = %49, %32
  %40 = load i64, i64* %18, align 8
  %41 = icmp ult i64 %40, 64
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i64, i64* %18, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, 54
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %18, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %18, align 8
  br label %39

52:                                               ; preds = %39
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %54 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8* %53, i8** %54, align 16
  %55 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  store i64 64, i64* %55, align 16
  store i64 0, i64* %18, align 8
  br label %56

56:                                               ; preds = %75, %52
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8**, i8*** %11, align 8
  %62 = load i64, i64* %18, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i64, i64* %18, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 %66
  store i8* %64, i8** %67, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i64, i64* %18, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %18, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 %73
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %60
  %76 = load i64, i64* %18, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %18, align 8
  br label %56

78:                                               ; preds = %56
  %79 = load i64, i64* %10, align 8
  %80 = add i64 1, %79
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  %83 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @sha1_vector(i32 %81, i8** %82, i64* %83, i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 -1, i32* %7, align 4
  br label %120

88:                                               ; preds = %78
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %90 = call i32 @os_memset(i8* %89, i32 0, i32 64)
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %9, align 8
  %94 = call i32 @os_memcpy(i8* %91, i8* %92, i64 %93)
  store i64 0, i64* %18, align 8
  br label %95

95:                                               ; preds = %105, %88
  %96 = load i64, i64* %18, align 8
  %97 = icmp ult i64 %96, 64
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i64, i64* %18, align 8
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = xor i32 %102, 92
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %100, align 1
  br label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %18, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %18, align 8
  br label %95

108:                                              ; preds = %95
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %110 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8* %109, i8** %110, align 16
  %111 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  store i64 64, i64* %111, align 16
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 1
  store i8* %112, i8** %113, align 8
  %114 = load i64, i64* @SHA1_MAC_LEN, align 8
  %115 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 1
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  %117 = getelementptr inbounds [6 x i64], [6 x i64]* %17, i64 0, i64 0
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @sha1_vector(i32 2, i8** %116, i64* %117, i8* %118)
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %108, %87, %29, %21
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @sha1_vector(i32, i8**, i64*, i8*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
