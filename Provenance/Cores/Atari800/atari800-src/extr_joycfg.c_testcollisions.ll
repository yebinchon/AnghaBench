; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_testcollisions.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_testcollisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKGROUND = common dso_local global i64 0, align 8
@MENUITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Test keyboard collisions\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Here you can test, if the keys you've choosen do not collide.\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"(only few keyboards allow all combinations)\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Press ESC to exit.\00", align 1
@pressed = common dso_local global i32* null, align 8
@hi = common dso_local global i64 0, align 8
@lo = common dso_local global i64 0, align 8
@buffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testcollisions() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @clrscr()
  %3 = load i64, i64* @BACKGROUND, align 8
  %4 = load i64, i64* @MENUITEM, align 8
  %5 = add nsw i64 %3, %4
  %6 = call i32 @textattr(i64 %5)
  %7 = call i32 @gotoxy(i32 27, i32 3)
  %8 = call i32 @cputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @gotoxy(i32 8, i32 5)
  %10 = call i32 @cputs(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @gotoxy(i32 17, i32 6)
  %12 = call i32 @cputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @gotoxy(i32 30, i32 8)
  %14 = call i32 @cputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %23, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32*, i32** @pressed, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %15

26:                                               ; preds = %15
  %27 = call i32 (...) @key_init()
  br label %28

28:                                               ; preds = %59, %26
  %29 = call i32 @showjoy(i32 17, i32 12, i32 0)
  %30 = call i32 @showjoy(i32 29, i32 12, i32 1)
  %31 = call i32 @showjoy(i32 41, i32 12, i32 2)
  %32 = call i32 @showjoy(i32 53, i32 12, i32 3)
  br label %33

33:                                               ; preds = %37, %28
  %34 = load i64, i64* @hi, align 8
  %35 = load i64, i64* @lo, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %33

38:                                               ; preds = %33
  %39 = load i32*, i32** @buffer, align 8
  %40 = load i64, i64* @lo, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 256
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** @pressed, align 8
  %46 = load i32*, i32** @buffer, align 8
  %47 = load i64, i64* @lo, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %45, i64 %51
  store i32 %44, i32* %52, align 4
  %53 = load i64, i64* @lo, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* @lo, align 8
  %55 = load i64, i64* @lo, align 8
  %56 = icmp eq i64 %55, 100
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  store i64 0, i64* @lo, align 8
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** @pressed, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br i1 %64, label %28, label %65

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %93, %65
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i64, i64* @hi, align 8
  %69 = load i64, i64* @lo, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %67

72:                                               ; preds = %67
  %73 = load i32*, i32** @buffer, align 8
  %74 = load i64, i64* @lo, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 256
  %78 = zext i1 %77 to i32
  %79 = load i32*, i32** @pressed, align 8
  %80 = load i32*, i32** @buffer, align 8
  %81 = load i64, i64* @lo, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 255
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  %87 = load i64, i64* @lo, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* @lo, align 8
  %89 = load i64, i64* @lo, align 8
  %90 = icmp eq i64 %89, 100
  br i1 %90, label %91, label %92

91:                                               ; preds = %72
  store i64 0, i64* @lo, align 8
  br label %92

92:                                               ; preds = %91, %72
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** @pressed, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %66, label %98

98:                                               ; preds = %93
  %99 = call i32 (...) @key_done()
  ret void
}

declare dso_local i32 @clrscr(...) #1

declare dso_local i32 @textattr(i64) #1

declare dso_local i32 @gotoxy(i32, i32) #1

declare dso_local i32 @cputs(i8*) #1

declare dso_local i32 @key_init(...) #1

declare dso_local i32 @showjoy(i32, i32, i32) #1

declare dso_local i32 @key_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
