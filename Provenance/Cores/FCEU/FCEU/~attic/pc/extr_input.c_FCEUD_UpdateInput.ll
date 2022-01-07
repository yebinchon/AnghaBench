; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_FCEUD_UpdateInput.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_FCEUD_UpdateInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputType = common dso_local global i32* null, align 8
@powerpadbuf = common dso_local global i32* null, align 8
@cidisabled = common dso_local global i32 0, align 4
@MouseData = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FCEUD_UpdateInput() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @UpdatePhysicalInput()
  %4 = call i32 (...) @KeyboardCommands()
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = load i32*, i32** @InputType, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 131, label %14
    i32 132, label %17
    i32 128, label %20
    i32 130, label %23
    i32 129, label %23
  ]

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %8
  %18 = load i32, i32* %2, align 4
  %19 = or i32 %18, 2
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %8
  %21 = load i32, i32* %2, align 4
  %22 = or i32 %21, 2
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %8, %8
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @UpdatePPadData(i32 %24)
  %26 = load i32*, i32** @powerpadbuf, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %8, %23, %20, %17, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32*, i32** @InputType, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %63 [
    i32 142, label %38
    i32 134, label %41
    i32 141, label %44
    i32 138, label %50
    i32 137, label %52
    i32 135, label %54
    i32 139, label %56
    i32 140, label %56
    i32 133, label %58
    i32 136, label %60
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = or i32 %42, 2
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %34
  %45 = load i32, i32* @cidisabled, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @UpdateFKB()
  br label %49

49:                                               ; preds = %47, %44
  br label %63

50:                                               ; preds = %34
  %51 = call i32 (...) @UpdateHyperShot()
  br label %63

52:                                               ; preds = %34
  %53 = call i32 (...) @UpdateMahjong()
  br label %63

54:                                               ; preds = %34
  %55 = call i32 (...) @UpdateQuizKing()
  br label %63

56:                                               ; preds = %34, %34
  %57 = call i32 (...) @UpdateFTrainer()
  br label %63

58:                                               ; preds = %34
  %59 = call i32 (...) @UpdateTopRider()
  br label %63

60:                                               ; preds = %34
  %61 = load i32, i32* %2, align 4
  %62 = or i32 %61, 2
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %34, %60, %58, %56, %54, %52, %50, %49, %41, %38
  %64 = load i32, i32* %2, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = call i32 (...) @UpdateGamepad()
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i32, i32* %2, align 4
  %71 = and i32 %70, 2
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @MouseData, align 4
  %75 = call i32 @GetMouseData(i32 %74)
  br label %76

76:                                               ; preds = %73, %69
  ret void
}

declare dso_local i32 @UpdatePhysicalInput(...) #1

declare dso_local i32 @KeyboardCommands(...) #1

declare dso_local i32 @UpdatePPadData(i32) #1

declare dso_local i32 @UpdateFKB(...) #1

declare dso_local i32 @UpdateHyperShot(...) #1

declare dso_local i32 @UpdateMahjong(...) #1

declare dso_local i32 @UpdateQuizKing(...) #1

declare dso_local i32 @UpdateFTrainer(...) #1

declare dso_local i32 @UpdateTopRider(...) #1

declare dso_local i32 @UpdateGamepad(...) #1

declare dso_local i32 @GetMouseData(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
