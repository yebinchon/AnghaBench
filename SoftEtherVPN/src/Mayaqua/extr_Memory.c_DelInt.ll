; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DelInt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_DelInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DelInt(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %63

12:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i64, i64* %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @LIST_NUM(i32* %15)
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i64* @LIST_DATA(i32* %19, i64 %20)
  store i64* %21, i64** %7, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32* @NewListFast(i32* null)
  store i32* %30, i32** %5, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** %5, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = call i32 @Add(i32* %32, i64* %33)
  br label %35

35:                                               ; preds = %31, %18
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %13

39:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i64, i64* %6, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i64 @LIST_NUM(i32* %42)
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64* @LIST_DATA(i32* %46, i64 %47)
  store i64* %48, i64** %8, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @Delete(i32* %49, i64* %50)
  %52 = load i64*, i64** %8, align 8
  %53 = call i32 @Free(i64* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %40

57:                                               ; preds = %40
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ReleaseList(i32* %61)
  br label %63

63:                                               ; preds = %11, %60, %57
  ret void
}

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i64* @LIST_DATA(i32*, i64) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i32 @Add(i32*, i64*) #1

declare dso_local i32 @Delete(i32*, i64*) #1

declare dso_local i32 @Free(i64*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
