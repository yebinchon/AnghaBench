; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_DasmSH2.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/sh2/mame/extr_sh2dasm.c_DasmSH2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DasmSH2(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = ashr i32 %10, 12
  %12 = and i32 %11, 15
  switch i32 %12, label %88 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %23
    i32 3, label %28
    i32 4, label %33
    i32 5, label %38
    i32 6, label %43
    i32 7, label %48
    i32 8, label %53
    i32 9, label %58
    i32 10, label %63
    i32 11, label %68
    i32 12, label %73
    i32 13, label %78
    i32 14, label %83
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @op0000(i8* %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %93

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @op0001(i8* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %93

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @op0010(i8* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %93

28:                                               ; preds = %3
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @op0011(i8* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %93

33:                                               ; preds = %3
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @op0100(i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %93

38:                                               ; preds = %3
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @op0101(i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %93

43:                                               ; preds = %3
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @op0110(i8* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %93

48:                                               ; preds = %3
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @op0111(i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %93

53:                                               ; preds = %3
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @op1000(i8* %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  br label %93

58:                                               ; preds = %3
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @op1001(i8* %59, i32 %60, i32 %61)
  store i32 %62, i32* %7, align 4
  br label %93

63:                                               ; preds = %3
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @op1010(i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %93

68:                                               ; preds = %3
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @op1011(i8* %69, i32 %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %93

73:                                               ; preds = %3
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @op1100(i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %93

78:                                               ; preds = %3
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @op1101(i8* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %93

83:                                               ; preds = %3
  %84 = load i8*, i8** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @op1110(i8* %84, i32 %85, i32 %86)
  store i32 %87, i32* %7, align 4
  br label %93

88:                                               ; preds = %3
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @op1111(i8* %89, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28, %23, %18, %13
  ret i32 0
}

declare dso_local i32 @op0000(i8*, i32, i32) #1

declare dso_local i32 @op0001(i8*, i32, i32) #1

declare dso_local i32 @op0010(i8*, i32, i32) #1

declare dso_local i32 @op0011(i8*, i32, i32) #1

declare dso_local i32 @op0100(i8*, i32, i32) #1

declare dso_local i32 @op0101(i8*, i32, i32) #1

declare dso_local i32 @op0110(i8*, i32, i32) #1

declare dso_local i32 @op0111(i8*, i32, i32) #1

declare dso_local i32 @op1000(i8*, i32, i32) #1

declare dso_local i32 @op1001(i8*, i32, i32) #1

declare dso_local i32 @op1010(i8*, i32, i32) #1

declare dso_local i32 @op1011(i8*, i32, i32) #1

declare dso_local i32 @op1100(i8*, i32, i32) #1

declare dso_local i32 @op1101(i8*, i32, i32) #1

declare dso_local i32 @op1110(i8*, i32, i32) #1

declare dso_local i32 @op1111(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
