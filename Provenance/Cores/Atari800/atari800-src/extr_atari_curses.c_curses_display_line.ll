; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_curses_display_line.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_curses.c_curses_display_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_ypos = common dso_local global i32 0, align 4
@curses_screen = common dso_local global i32** null, align 8
@ANTIC_DMACTL = common dso_local global i32 0, align 4
@curses_display_line.offset = internal constant [8 x i32] [i32 32, i32 32, i32 129, i32 0, i32 32, i32 32, i32 129, i32 0], align 16
@GTIA_COLPF0 = common dso_local global i32 0, align 4
@GTIA_COLPF1 = common dso_local global i32 0, align 4
@GTIA_COLPF2 = common dso_local global i32 0, align 4
@GTIA_COLPF3 = common dso_local global i32 0, align 4
@LIGHT_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curses_display_line(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @ANTIC_ypos, align 4
  %11 = icmp slt i32 %10, 32
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ANTIC_ypos, align 4
  %14 = icmp sge i32 %13, 224
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %128

16:                                               ; preds = %12
  %17 = load i32, i32* @ANTIC_ypos, align 4
  %18 = ashr i32 %17, 3
  %19 = sub nsw i32 %18, 4
  store i32 %19, i32* %5, align 4
  %20 = load i32**, i32*** @curses_screen, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* %3, align 4
  switch i32 %26, label %127 [
    i32 2, label %27
    i32 3, label %27
    i32 4, label %27
    i32 5, label %27
    i32 6, label %70
    i32 7, label %70
  ]

27:                                               ; preds = %16, %16, %16, %16
  %28 = load i32, i32* @ANTIC_DMACTL, align 4
  %29 = and i32 %28, 3
  switch i32 %29, label %37 [
    i32 1, label %30
    i32 2, label %33
    i32 3, label %34
  ]

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  store i32* %32, i32** %6, align 8
  store i32 32, i32* %7, align 4
  br label %38

33:                                               ; preds = %27
  store i32 40, i32* %7, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %4, align 8
  store i32 40, i32* %7, align 4
  br label %38

37:                                               ; preds = %27
  br label %128

38:                                               ; preds = %34, %33, %30
  br label %39

39:                                               ; preds = %65, %38
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  %42 = load i32, i32* %40, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 127
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  store i32 191, i32* %46, align 4
  br label %62

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 255
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32*, i32** %6, align 8
  store i32 319, i32* %51, align 4
  br label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 5
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* @curses_display_line.offset, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %50
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %39, label %69

69:                                               ; preds = %65
  br label %128

70:                                               ; preds = %16, %16
  %71 = load i32, i32* @ANTIC_DMACTL, align 4
  %72 = and i32 %71, 3
  switch i32 %72, label %82 [
    i32 1, label %73
    i32 2, label %76
    i32 3, label %79
  ]

73:                                               ; preds = %70
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 12
  store i32* %75, i32** %6, align 8
  store i32 16, i32* %7, align 4
  br label %83

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 10
  store i32* %78, i32** %6, align 8
  store i32 20, i32* %7, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  store i32* %81, i32** %6, align 8
  store i32 24, i32* %7, align 4
  br label %83

82:                                               ; preds = %70
  br label %128

83:                                               ; preds = %79, %76, %73
  %84 = load i32, i32* @GTIA_COLPF0, align 4
  %85 = and i32 %84, 14
  %86 = icmp sge i32 %85, 12
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 161, i32 32
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %88, i32* %89, align 16
  %90 = load i32, i32* @GTIA_COLPF1, align 4
  %91 = and i32 %90, 14
  %92 = icmp sge i32 %91, 12
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 97, i32 -32
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @GTIA_COLPF2, align 4
  %97 = and i32 %96, 14
  %98 = icmp sge i32 %97, 12
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 33, i32 -96
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %100, i32* %101, align 8
  %102 = load i32, i32* @GTIA_COLPF3, align 4
  %103 = and i32 %102, 14
  %104 = icmp sge i32 %103, 12
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 -31, i32 -160
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %122, %83
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 6
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %110, %116
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %4, align 8
  br label %122

122:                                              ; preds = %108
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %108, label %126

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %16
  br label %128

128:                                              ; preds = %15, %37, %82, %127, %126, %69
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
