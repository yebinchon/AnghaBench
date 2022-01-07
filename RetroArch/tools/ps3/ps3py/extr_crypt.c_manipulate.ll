; ModuleID = '/home/carl/AnghaBench/RetroArch/tools/ps3/ps3py/extr_crypt.c_manipulate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tools/ps3/ps3py/extr_crypt.c_manipulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @manipulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @manipulate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 56
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 56
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 57
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 48
  %12 = or i32 %7, %11
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 58
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 40
  %17 = or i32 %12, %16
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 59
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 32
  %22 = or i32 %17, %21
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 60
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 24
  %27 = or i32 %22, %26
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 61
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %27, %31
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 62
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %32, %36
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 63
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = ashr i32 %44, 56
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 56
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, 48
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 57
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %3, align 4
  %55 = ashr i32 %54, 40
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %2, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 58
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %3, align 4
  %60 = ashr i32 %59, 32
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 59
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 24
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 60
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %3, align 4
  %70 = ashr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 61
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %3, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 62
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %3, align 4
  %80 = ashr i32 %79, 0
  %81 = and i32 %80, 255
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 63
  store i32 %81, i32* %83, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
