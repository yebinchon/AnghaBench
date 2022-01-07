; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-video.c_TweakVGA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-video.c_TweakVGA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v256x240 = common dso_local global i32* null, align 8
@v256x256 = common dso_local global i32* null, align 8
@v256x256S = common dso_local global i32* null, align 8
@v256x224S = common dso_local global i32* null, align 8
@v256x224_103 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TweakVGA(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @vga_waitretrace()
  %5 = call i32 @outportb(i32 968, i32 0)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %11, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 768
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = call i32 @outportb(i32 969, i32 0)
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %6

14:                                               ; preds = %6
  %15 = call i32 @outportb(i32 980, i32 17)
  %16 = call i32 @inportb(i32 981)
  %17 = and i32 %16, 127
  store i32 %17, i32* %3, align 4
  %18 = call i32 @outportb(i32 980, i32 17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @outportb(i32 981, i32 %19)
  %21 = load i32, i32* %2, align 4
  switch i32 %21, label %97 [
    i32 1, label %22
    i32 2, label %37
    i32 3, label %52
    i32 6, label %67
    i32 8, label %82
  ]

22:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 25
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32*, i32** @v256x240, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @VGAPortSet(i32 %31)
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %23

36:                                               ; preds = %23
  br label %98

37:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %48, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 25
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32*, i32** @v256x256, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VGAPortSet(i32 %46)
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %38

51:                                               ; preds = %38
  br label %98

52:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 25
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32*, i32** @v256x256S, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @VGAPortSet(i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %53

66:                                               ; preds = %53
  br label %98

67:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %78, %67
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 25
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32*, i32** @v256x224S, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @VGAPortSet(i32 %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %68

81:                                               ; preds = %68
  br label %98

82:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %93, %82
  %84 = load i32, i32* %3, align 4
  %85 = icmp slt i32 %84, 25
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32*, i32** @v256x224_103, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VGAPortSet(i32 %91)
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %83

96:                                               ; preds = %83
  br label %98

97:                                               ; preds = %14
  br label %98

98:                                               ; preds = %97, %96, %81, %66, %51, %36
  %99 = call i32 @outportb(i32 986, i32 0)
  ret void
}

declare dso_local i32 @vga_waitretrace(...) #1

declare dso_local i32 @outportb(i32, i32) #1

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @VGAPortSet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
