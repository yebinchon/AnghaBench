; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_InitOtherInput.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_InitOtherInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputType = common dso_local global i32* null, align 8
@powerpadbuf = common dso_local global i32* null, align 8
@JSreturn = common dso_local global i32 0, align 4
@MouseData = common dso_local global i8* null, align 8
@fkbkeys = common dso_local global i8* null, align 8
@HyperShotData = common dso_local global i32 0, align 4
@MahjongData = common dso_local global i32 0, align 4
@QuizKingData = common dso_local global i32 0, align 4
@TopRiderData = common dso_local global i32 0, align 4
@BWorldData = common dso_local global i8* null, align 8
@FTrainerData = common dso_local global i32 0, align 4
@eoptions = common dso_local global i32 0, align 4
@EO_NOFOURSCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitOtherInput() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %39, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  store i8* null, i8** %1, align 8
  %9 = load i32*, i32** @InputType, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %29 [
    i32 130, label %14
    i32 129, label %14
    i32 131, label %20
    i32 132, label %21
    i32 128, label %25
  ]

14:                                               ; preds = %8, %8
  %15 = load i32*, i32** @powerpadbuf, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %1, align 8
  br label %29

20:                                               ; preds = %8
  store i8* bitcast (i32* @JSreturn to i8*), i8** %1, align 8
  br label %29

21:                                               ; preds = %8
  %22 = load i8*, i8** @MouseData, align 8
  store i8* %22, i8** %1, align 8
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %8
  %26 = load i8*, i8** @MouseData, align 8
  store i8* %26, i8** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %8, %25, %21, %20, %14
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** @InputType, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %1, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @FCEUI_SetInput(i32 %30, i32 %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %5

42:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  store i8* null, i8** %1, align 8
  %43 = load i32*, i32** @InputType, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %67 [
    i32 134, label %46
    i32 136, label %50
    i32 143, label %54
    i32 141, label %58
    i32 138, label %60
    i32 137, label %61
    i32 135, label %62
    i32 133, label %63
    i32 142, label %64
    i32 140, label %66
    i32 139, label %66
  ]

46:                                               ; preds = %42
  %47 = load i8*, i8** @MouseData, align 8
  store i8* %47, i8** %1, align 8
  %48 = load i32, i32* %2, align 4
  %49 = or i32 %48, 1
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %67

50:                                               ; preds = %42
  %51 = load i8*, i8** @MouseData, align 8
  store i8* %51, i8** %1, align 8
  %52 = load i32, i32* %2, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %4, align 4
  br label %67

54:                                               ; preds = %42
  %55 = load i8*, i8** @MouseData, align 8
  store i8* %55, i8** %1, align 8
  %56 = load i32, i32* %2, align 4
  %57 = or i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %42
  %59 = load i8*, i8** @fkbkeys, align 8
  store i8* %59, i8** %1, align 8
  br label %67

60:                                               ; preds = %42
  store i8* bitcast (i32* @HyperShotData to i8*), i8** %1, align 8
  br label %67

61:                                               ; preds = %42
  store i8* bitcast (i32* @MahjongData to i8*), i8** %1, align 8
  br label %67

62:                                               ; preds = %42
  store i8* bitcast (i32* @QuizKingData to i8*), i8** %1, align 8
  br label %67

63:                                               ; preds = %42
  store i8* bitcast (i32* @TopRiderData to i8*), i8** %1, align 8
  br label %67

64:                                               ; preds = %42
  %65 = load i8*, i8** @BWorldData, align 8
  store i8* %65, i8** %1, align 8
  br label %67

66:                                               ; preds = %42, %42
  store i8* bitcast (i32* @FTrainerData to i8*), i8** %1, align 8
  br label %67

67:                                               ; preds = %42, %66, %64, %63, %62, %61, %60, %58, %54, %50, %46
  %68 = load i32*, i32** @InputType, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %1, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @FCEUI_SetInputFC(i32 %70, i8* %71, i32 %72)
  %74 = load i32, i32* @eoptions, align 4
  %75 = load i32, i32* @EO_NOFOURSCORE, align 4
  %76 = and i32 %74, %75
  %77 = call i32 @FCEUI_DisableFourScore(i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = call i32 (...) @InitMouse()
  br label %82

82:                                               ; preds = %80, %67
  ret void
}

declare dso_local i32 @FCEUI_SetInput(i32, i32, i8*, i32) #1

declare dso_local i32 @FCEUI_SetInputFC(i32, i8*, i32) #1

declare dso_local i32 @FCEUI_DisableFourScore(i32) #1

declare dso_local i32 @InitMouse(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
