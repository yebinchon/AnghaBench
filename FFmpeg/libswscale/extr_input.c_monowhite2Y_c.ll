; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_monowhite2Y_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_monowhite2Y_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @monowhite2Y_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monowhite2Y_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 7
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %54, %6
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %50, %26
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %15, align 4
  %39 = sub nsw i32 7, %38
  %40 = ashr i32 %37, %39
  %41 = and i32 %40, 1
  %42 = mul nsw i32 %41, 16383
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 8, %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  store i32 %42, i32* %49, align 4
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, 7
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  store i32 %67, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %87, %61
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 7
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 7, %75
  %77 = ashr i32 %74, %76
  %78 = and i32 %77, 1
  %79 = mul nsw i32 %78, 16383
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 8, %81
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %68

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
