; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_DecideOverRleUse.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_DecideOverRleUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i32*, i32*)* @DecideOverRleUse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecideOverRleUse(i64* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %71, %4
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %14, align 8
  store i64 1, i64* %15, align 8
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %16, align 8
  br label %28

28:                                               ; preds = %44, %21
  %29 = load i64, i64* %16, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %16, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi i1 [ false, %28 ], [ %38, %32 ]
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = load i64, i64* %15, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %16, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %16, align 8
  br label %28

47:                                               ; preds = %39
  %48 = load i64, i64* %15, align 8
  %49 = icmp uge i64 %48, 3
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %53, %50, %47
  %60 = load i64, i64* %15, align 8
  %61 = icmp uge i64 %60, 4
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i64, i64* %14, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %12, align 8
  br label %71

71:                                               ; preds = %65, %62, %59
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %13, align 8
  br label %17

75:                                               ; preds = %17
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = mul i64 %77, 2
  %79 = icmp ugt i64 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @TO_BROTLI_BOOL(i32 %80)
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = mul i64 %84, 2
  %86 = icmp ugt i64 %83, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @TO_BROTLI_BOOL(i32 %87)
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  ret void
}

declare dso_local i32 @TO_BROTLI_BOOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
