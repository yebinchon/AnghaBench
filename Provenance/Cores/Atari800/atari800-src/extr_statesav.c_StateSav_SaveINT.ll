; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_SaveINT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_statesav.c_StateSav_SaveINT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StateFile = common dso_local global i32 0, align 4
@nFileError = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StateSav_SaveINT(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @StateFile, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i64, i64* @nFileError, align 8
  %13 = load i64, i64* @Z_OK, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %73

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %70, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %73

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %3, align 8
  %23 = load i32, i32* %21, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  store i32 128, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @StateFile, align 4
  %34 = call i64 @GZWRITE(i32 %33, i32* %7, i32 1)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (...) @GetGZErrorText()
  br label %73

38:                                               ; preds = %29
  %39 = load i32, i32* %6, align 4
  %40 = lshr i32 %39, 8
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @StateFile, align 4
  %44 = call i64 @GZWRITE(i32 %43, i32* %7, i32 1)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = call i32 (...) @GetGZErrorText()
  br label %73

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = lshr i32 %49, 8
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @StateFile, align 4
  %54 = call i64 @GZWRITE(i32 %53, i32* %7, i32 1)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (...) @GetGZErrorText()
  br label %73

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = lshr i32 %59, 8
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 127
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @StateFile, align 4
  %66 = call i64 @GZWRITE(i32 %65, i32* %7, i32 1)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = call i32 (...) @GetGZErrorText()
  br label %73

70:                                               ; preds = %58
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %4, align 4
  br label %17

73:                                               ; preds = %15, %68, %56, %46, %36, %17
  ret void
}

declare dso_local i64 @GZWRITE(i32, i32*, i32) #1

declare dso_local i32 @GetGZErrorText(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
