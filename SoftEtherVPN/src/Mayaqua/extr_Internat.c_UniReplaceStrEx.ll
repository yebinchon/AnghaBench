; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniReplaceStrEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniReplaceStrEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UniReplaceStrEx(i64* %0, i32 %1, i64* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  store i64* %0, i64** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load i64*, i64** %10, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %6
  %26 = load i64*, i64** %11, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64*, i64** %12, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %6
  store i32 0, i32* %7, align 4
  br label %132

32:                                               ; preds = %28
  %33 = load i64*, i64** %10, align 8
  %34 = call i32 @UniStrLen(i64* %33)
  store i32 %34, i32* %17, align 4
  %35 = load i64*, i64** %11, align 8
  %36 = call i32 @UniStrLen(i64* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i64*, i64** %12, align 8
  %38 = call i32 @UniStrLen(i64* %37)
  store i32 %38, i32* %19, align 4
  %39 = load i64*, i64** %10, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @UniCalcReplaceStrEx(i64* %39, i64* %40, i64* %41, i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i64* @Malloc(i32 %48)
  store i64* %49, i64** %22, align 8
  %50 = load i64*, i64** %22, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %32, %84
  %55 = load i64*, i64** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @UniSearchStrEx(i64* %55, i64* %56, i32 %57, i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @INFINITE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %54
  %64 = load i64*, i64** %22, align 8
  %65 = load i32, i32* %21, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64*, i64** %10, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @Copy(i64* %67, i64* %71, i32 %77)
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %21, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %21, align 4
  br label %124

84:                                               ; preds = %54
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  %87 = load i64*, i64** %22, align 8
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64*, i64** %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @Copy(i64* %90, i64* %94, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %21, align 4
  %107 = load i64*, i64** %22, align 8
  %108 = load i32, i32* %21, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64*, i64** %12, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @Copy(i64* %110, i64* %111, i32 %115)
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %15, align 4
  br label %54

124:                                              ; preds = %63
  %125 = load i64*, i64** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i64*, i64** %22, align 8
  %128 = call i32 @UniStrCpy(i64* %125, i32 %126, i64* %127)
  %129 = load i64*, i64** %22, align 8
  %130 = call i32 @Free(i64* %129)
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %124, %31
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

declare dso_local i32 @UniStrLen(i64*) #1

declare dso_local i32 @UniCalcReplaceStrEx(i64*, i64*, i64*, i32) #1

declare dso_local i64* @Malloc(i32) #1

declare dso_local i32 @UniSearchStrEx(i64*, i64*, i32, i32) #1

declare dso_local i32 @Copy(i64*, i64*, i32) #1

declare dso_local i32 @UniStrCpy(i64*, i32, i64*) #1

declare dso_local i32 @Free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
