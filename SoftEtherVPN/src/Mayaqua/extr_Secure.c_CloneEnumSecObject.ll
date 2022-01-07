; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_CloneEnumSecObject.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_CloneEnumSecObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CloneEnumSecObject(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %30

10:                                               ; preds = %1
  %11 = call i32* @NewListFast(i32* null)
  store i32* %11, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %25, %10
  %13 = load i64, i64* %5, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @LIST_NUM(i32* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32* @LIST_DATA(i32* %18, i64 %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @CloneSecObject(i32* %22)
  %24 = call i32 @Add(i32* %21, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local i32* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @Add(i32*, i32) #1

declare dso_local i32 @CloneSecObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
