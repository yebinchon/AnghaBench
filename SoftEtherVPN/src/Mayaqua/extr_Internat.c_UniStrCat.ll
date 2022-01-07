; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniStrCat.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniStrCat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UniStrCat(i64* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %7, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %93

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %93

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp eq i64 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64*, i64** %5, align 8
  %31 = call i32 @wcscpy(i64* %30, i8* bitcast ([1 x i32]* @.str to i8*))
  store i32 0, i32* %4, align 4
  br label %93

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1073741823, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i64*, i64** %5, align 8
  %38 = call i32 @UniStrLen(i64* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i64*, i64** %7, align 8
  %40 = call i32 @UniStrLen(i64* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = sub i64 %55, %58
  %60 = icmp ule i64 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %93

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 8
  %68 = sub i64 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = sub i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %62, %36
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64*, i64** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @Copy(i64* %77, i64* %78, i32 %82)
  %84 = load i64*, i64** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %84, i64 %88
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %73, %61, %29, %24, %16
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @wcscpy(i64*, i8*) #1

declare dso_local i32 @UniStrLen(i64*) #1

declare dso_local i32 @Copy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
