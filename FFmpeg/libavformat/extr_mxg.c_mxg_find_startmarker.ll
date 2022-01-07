; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxg.c_mxg_find_startmarker.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxg.c_mxg_find_startmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @mxg_find_startmarker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mxg_find_startmarker(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %7

7:                                                ; preds = %58, %2
  %8 = load i32*, i32** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -3
  %11 = icmp ult i32* %8, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %7
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @AV_RN32(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 16843009
  %18 = xor i32 %17, -1
  %19 = and i32 %15, %18
  %20 = and i32 %19, -2139062144
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  store i32* %28, i32** %3, align 8
  br label %78

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32* %36, i32** %3, align 8
  br label %78

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %3, align 8
  br label %78

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32* %52, i32** %3, align 8
  br label %78

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %4, align 8
  br label %7

61:                                               ; preds = %7
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ult i32* %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  store i32* %71, i32** %3, align 8
  br label %78

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %4, align 8
  br label %62

76:                                               ; preds = %62
  %77 = load i32*, i32** %5, align 8
  store i32* %77, i32** %3, align 8
  br label %78

78:                                               ; preds = %76, %70, %50, %42, %34, %27
  %79 = load i32*, i32** %3, align 8
  ret i32* %79
}

declare dso_local i32 @AV_RN32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
