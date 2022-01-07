; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugGetCommandNumberAddr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugGetCommandNumberAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Vdp1Ram = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @Vdp1DebugGetCommandNumberAddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Vdp1DebugGetCommandNumberAddr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32, i32* @Vdp1Ram, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @T1ReadWord(i32 %8, i64 %9)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 32768
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %72

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 12
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 4294967295, i64* %2, align 8
  br label %79

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 12288
  %29 = ashr i32 %28, 12
  switch i32 %29, label %62 [
    i32 0, label %30
    i32 1, label %33
    i32 2, label %40
    i32 3, label %53
  ]

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = add nsw i64 %31, 32
  store i64 %32, i64* %4, align 8
  br label %62

33:                                               ; preds = %26
  %34 = load i32, i32* @Vdp1Ram, align 4
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i32 @T1ReadWord(i32 %34, i64 %36)
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %4, align 8
  br label %62

40:                                               ; preds = %26
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %41, 4294967295
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %4, align 8
  %45 = add nsw i64 %44, 32
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @Vdp1Ram, align 4
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i32 @T1ReadWord(i32 %47, i64 %49)
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  br label %62

53:                                               ; preds = %26
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 4294967295
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  br label %61

58:                                               ; preds = %53
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, 32
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %26, %61, %46, %33, %30
  %63 = load i64, i64* %4, align 8
  %64 = icmp sgt i64 %63, 524256
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 4294967295, i64* %2, align 8
  br label %79

66:                                               ; preds = %62
  %67 = load i32, i32* @Vdp1Ram, align 4
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @T1ReadWord(i32 %67, i64 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i64, i64* %6, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %6, align 8
  br label %11

72:                                               ; preds = %19
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %3, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %2, align 8
  br label %79

78:                                               ; preds = %72
  store i64 4294967295, i64* %2, align 8
  br label %79

79:                                               ; preds = %78, %76, %65, %25
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local i32 @T1ReadWord(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
