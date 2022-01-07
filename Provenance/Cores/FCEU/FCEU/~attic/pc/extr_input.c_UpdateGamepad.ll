; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_UpdateGamepad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_input.c_UpdateGamepad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UpdateGamepad.rapid = internal global i32 0, align 4
@GamePadConfig = common dso_local global i32** null, align 8
@JSreturn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateGamepad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateGamepad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @FCEUI_IsMovieActive()
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %78

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @UpdateGamepad.rapid, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* @UpdateGamepad.rapid, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %73, %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %76

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load i32**, i32*** @GamePadConfig, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i64 @DTestButton(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %17
  %29 = load i32, i32* %2, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %3, align 4
  %32 = shl i32 %31, 3
  %33 = shl i32 %30, %32
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %28, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* @UpdateGamepad.rapid, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  %48 = load i32**, i32*** @GamePadConfig, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 8, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i64 @DTestButton(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i32, i32* %2, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %3, align 4
  %63 = shl i32 %62, 3
  %64 = shl i32 %61, %63
  %65 = load i32, i32* %1, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %59, %47
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %44

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %10

76:                                               ; preds = %10
  %77 = load i32, i32* %1, align 4
  store i32 %77, i32* @JSreturn, align 4
  br label %78

78:                                               ; preds = %76, %6
  ret void
}

declare dso_local i64 @FCEUI_IsMovieActive(...) #1

declare dso_local i64 @DTestButton(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
