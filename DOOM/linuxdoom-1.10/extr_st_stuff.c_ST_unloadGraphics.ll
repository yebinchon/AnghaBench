; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_unloadGraphics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_unloadGraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tallnum = common dso_local global i32* null, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@shortnum = common dso_local global i32* null, align 8
@tallpercent = common dso_local global i32 0, align 4
@armsbg = common dso_local global i32 0, align 4
@arms = common dso_local global i32** null, align 8
@NUMCARDS = common dso_local global i32 0, align 4
@keys = common dso_local global i32* null, align 8
@sbar = common dso_local global i32 0, align 4
@faceback = common dso_local global i32 0, align 4
@ST_NUMFACES = common dso_local global i32 0, align 4
@faces = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_unloadGraphics() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load i32*, i32** @tallnum, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PU_CACHE, align 4
  %12 = call i32 @Z_ChangeTag(i32 %10, i32 %11)
  %13 = load i32*, i32** @shortnum, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PU_CACHE, align 4
  %19 = call i32 @Z_ChangeTag(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %2

23:                                               ; preds = %2
  %24 = load i32, i32* @tallpercent, align 4
  %25 = load i32, i32* @PU_CACHE, align 4
  %26 = call i32 @Z_ChangeTag(i32 %24, i32 %25)
  %27 = load i32, i32* @armsbg, align 4
  %28 = load i32, i32* @PU_CACHE, align 4
  %29 = call i32 @Z_ChangeTag(i32 %27, i32 %28)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %43, %23
  %31 = load i32, i32* %1, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32**, i32*** @arms, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PU_CACHE, align 4
  %42 = call i32 @Z_ChangeTag(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %30

46:                                               ; preds = %30
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %59, %46
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @NUMCARDS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32*, i32** @keys, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PU_CACHE, align 4
  %58 = call i32 @Z_ChangeTag(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load i32, i32* @sbar, align 4
  %64 = load i32, i32* @PU_CACHE, align 4
  %65 = call i32 @Z_ChangeTag(i32 %63, i32 %64)
  %66 = load i32, i32* @faceback, align 4
  %67 = load i32, i32* @PU_CACHE, align 4
  %68 = call i32 @Z_ChangeTag(i32 %66, i32 %67)
  store i32 0, i32* %1, align 4
  br label %69

69:                                               ; preds = %81, %62
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @ST_NUMFACES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i32*, i32** @faces, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PU_CACHE, align 4
  %80 = call i32 @Z_ChangeTag(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %69

84:                                               ; preds = %69
  ret void
}

declare dso_local i32 @Z_ChangeTag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
