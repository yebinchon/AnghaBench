; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniStrCpy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Internat.c_UniStrCpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UniStrCpy(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %11, %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp uge i64 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %27, %17, %14
  store i32 0, i32* %4, align 4
  br label %93

29:                                               ; preds = %11
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @UniStrLen(i32* %34)
  store i32 %35, i32* %4, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %93

44:                                               ; preds = %39, %36
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @wcscpy(i32* %49, i8* bitcast ([1 x i32]* @.str to i8*))
  store i32 0, i32* %4, align 4
  br label %93

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 1073741823, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @UniStrLen(i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = udiv i64 %61, 4
  %63 = sub i64 %62, 1
  %64 = icmp ule i64 %59, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = call i32 @Copy(i32* %66, i32* %67, i32 %72)
  br label %91

74:                                               ; preds = %55
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = sub i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @Copy(i32* %80, i32* %81, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %74, %65
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %48, %43, %33, %28
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
