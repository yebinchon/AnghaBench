; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/c68k/extr_c68k.c_C68k_Set_Fetch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/c68k/extr_c68k.c_C68k_Set_Fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@C68K_FETCH_SFT = common dso_local global i32 0, align 4
@C68K_FETCH_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @C68k_Set_Fetch(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @C68K_FETCH_SFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @C68K_FETCH_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @C68K_FETCH_SFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32, i32* @C68K_FETCH_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @C68K_FETCH_SFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %30, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %31, i32* %38, align 4
  br label %26

39:                                               ; preds = %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
