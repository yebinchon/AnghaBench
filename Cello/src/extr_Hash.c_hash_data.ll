; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Hash.c_hash_data.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Hash.c_hash_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hash_data(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 -4132994306676758123, i64* %5, align 8
  store i32 47, i32* %6, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %7, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %4, align 8
  %16 = udiv i64 %15, 8
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  store i64* %17, i64** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = mul i64 %18, -4132994306676758123
  %20 = xor i64 844048, %19
  store i64 %20, i64* %9, align 8
  br label %21

21:                                               ; preds = %25, %2
  %22 = load i64*, i64** %7, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i64*, i64** %7, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %7, align 8
  %28 = load i64, i64* %26, align 8
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = mul i64 %29, -4132994306676758123
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = lshr i64 %31, 47
  %33 = load i64, i64* %10, align 8
  %34 = xor i64 %33, %32
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = mul i64 %35, -4132994306676758123
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %9, align 8
  %39 = xor i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = mul i64 %40, -4132994306676758123
  store i64 %41, i64* %9, align 8
  br label %21

42:                                               ; preds = %21
  %43 = load i64*, i64** %7, align 8
  %44 = bitcast i64* %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i64, i64* %4, align 8
  %46 = and i64 %45, 7
  switch i64 %46, label %104 [
    i64 7, label %47
    i64 6, label %55
    i64 5, label %63
    i64 4, label %71
    i64 3, label %79
    i64 2, label %87
    i64 1, label %95
  ]

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 6
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = shl i64 %51, 48
  %53 = load i64, i64* %9, align 8
  %54 = xor i64 %53, %52
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %42, %47
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 5
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i64
  %60 = shl i64 %59, 40
  %61 = load i64, i64* %9, align 8
  %62 = xor i64 %61, %60
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %42, %55
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = shl i64 %67, 32
  %69 = load i64, i64* %9, align 8
  %70 = xor i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %42, %63
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = shl i64 %75, 24
  %77 = load i64, i64* %9, align 8
  %78 = xor i64 %77, %76
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %42, %71
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = shl i64 %83, 16
  %85 = load i64, i64* %9, align 8
  %86 = xor i64 %85, %84
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %42, %79
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i64
  %92 = shl i64 %91, 8
  %93 = load i64, i64* %9, align 8
  %94 = xor i64 %93, %92
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %42, %87
  %96 = load i8*, i8** %11, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = xor i64 %100, %99
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = mul i64 %102, -4132994306676758123
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %95, %42
  %105 = load i64, i64* %9, align 8
  %106 = lshr i64 %105, 47
  %107 = load i64, i64* %9, align 8
  %108 = xor i64 %107, %106
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %9, align 8
  %110 = mul i64 %109, -4132994306676758123
  store i64 %110, i64* %9, align 8
  %111 = load i64, i64* %9, align 8
  %112 = lshr i64 %111, 47
  %113 = load i64, i64* %9, align 8
  %114 = xor i64 %113, %112
  store i64 %114, i64* %9, align 8
  %115 = load i64, i64* %9, align 8
  ret i64 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
