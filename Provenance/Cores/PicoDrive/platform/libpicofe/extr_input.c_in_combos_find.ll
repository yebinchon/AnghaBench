; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_combos_find.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_input.c_in_combos_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in_combos_find(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %77, %4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %18, label %80

18:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %27 = call i64 @IN_BIND_OFFS(i32 %25, i32 %26)
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %76

44:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @IN_BINDTYPE_EMU, align 4
  %53 = call i64 @IN_BIND_OFFS(i32 %51, i32 %52)
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 1, %66
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %49
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %45

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75, %41
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %14

80:                                               ; preds = %14
  ret void
}

declare dso_local i64 @IN_BIND_OFFS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
