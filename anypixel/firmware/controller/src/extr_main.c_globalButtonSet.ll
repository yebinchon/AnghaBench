; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalButtonSet.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_globalButtonSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buttonpacket = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @globalButtonSet(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = srem i32 %12, 7
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 7
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %41 [
    i32 130, label %17
    i32 131, label %22
    i32 128, label %28
    i32 129, label %34
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 14
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 14
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = add nsw i32 %26, 7
  store i32 %27, i32* %9, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 7
  %31 = mul nsw i32 %30, 14
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %41

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 7
  %37 = mul nsw i32 %36, 14
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = add nsw i32 %39, 7
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %3, %34, %28, %22, %17
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 8
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %45, 8
  %47 = sub nsw i32 %44, %46
  %48 = sub nsw i32 7, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  %53 = shl i32 1, %52
  %54 = load i32*, i32** @buttonpacket, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 4, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %53
  store i32 %60, i32* %58, align 4
  br label %72

61:                                               ; preds = %41
  %62 = load i32, i32* %11, align 4
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** @buttonpacket, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 4, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %64
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
