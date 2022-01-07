; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_set_jump_target_fillslot.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_set_jump_target_fillslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_jump_target_fillslot(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 -1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -494022656
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ true, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 226
  br i1 %28, label %29, label %53

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = ptrtoint i32* %36 to i32
  %38 = sub nsw i32 %35, %37
  %39 = sub nsw i32 %38, 8
  %40 = icmp slt i32 %39, 4096
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, -4096
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = sub nsw i32 %49, 8
  %51 = or i32 %45, %50
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  br label %101

53:                                               ; preds = %21
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 14
  %58 = icmp eq i32 %57, 10
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 235929600
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %53
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 202375168
  %72 = icmp eq i32 %71, 68157440
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 134217728
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 -1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, -16777216
  %92 = load i32, i32* %5, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = ptrtoint i32* %93 to i32
  %95 = sub nsw i32 %92, %94
  %96 = sub nsw i32 %95, 8
  %97 = shl i32 %96, 6
  %98 = ashr i32 %97, 8
  %99 = or i32 %91, %98
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %88, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
