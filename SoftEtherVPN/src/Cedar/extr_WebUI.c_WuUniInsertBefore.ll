; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuUniInsertBefore.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_WebUI.c_WuUniInsertBefore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32*)* @WuUniInsertBefore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WuUniInsertBefore(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32**, i32*** %4, align 8
  %10 = icmp eq i32** %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  br label %45

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @UniStrLen(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @UniStrLen(i32* %21)
  %23 = add nsw i32 %20, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @Malloc(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @UniStrCpy(i32* %31, i32 %32, i32* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @UniStrCat(i32* %35, i32 %36, i32* %37)
  %39 = load i32**, i32*** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @WuUniReplace(i32** %39, i32* %40, i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @Free(i32* %43)
  br label %45

45:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @UniStrLen(i32*) #1

declare dso_local i64 @Malloc(i32) #1

declare dso_local i32 @UniStrCpy(i32*, i32, i32*) #1

declare dso_local i32 @UniStrCat(i32*, i32, i32*) #1

declare dso_local i32 @WuUniReplace(i32**, i32*, i32*) #1

declare dso_local i32 @Free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
