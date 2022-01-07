; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewRootX.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_NewRootX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @NewRootX(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %5
  store i32* null, i32** %6, align 8
  br label %46

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32* @NewRootX509(i32* %25, i32* %26, i32* %27, i32 %28, i32* %29)
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32* null, i32** %6, align 8
  br label %46

34:                                               ; preds = %24
  %35 = load i32*, i32** %12, align 8
  %36 = call i32* @X509ToX(i32* %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32* null, i32** %6, align 8
  br label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %13, align 8
  %42 = call i32* @CloneX(i32* %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @FreeX(i32* %43)
  %45 = load i32*, i32** %14, align 8
  store i32* %45, i32** %6, align 8
  br label %46

46:                                               ; preds = %40, %39, %33, %23
  %47 = load i32*, i32** %6, align 8
  ret i32* %47
}

declare dso_local i32* @NewRootX509(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32* @X509ToX(i32*) #1

declare dso_local i32* @CloneX(i32*) #1

declare dso_local i32 @FreeX(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
