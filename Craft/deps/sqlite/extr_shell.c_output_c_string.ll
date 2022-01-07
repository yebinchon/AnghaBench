; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_output_c_string.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_shell.c_output_c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @output_c_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_c_string(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @fputc(i8 signext 34, i32* %6)
  br label %8

8:                                                ; preds = %77, %2
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %4, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 92
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @fputc(i8 signext %19, i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = trunc i32 %22 to i8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fputc(i8 signext %23, i32* %24)
  br label %77

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 34
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fputc(i8 signext 92, i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @fputc(i8 signext 34, i32* %32)
  br label %76

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @fputc(i8 signext 92, i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @fputc(i8 signext 116, i32* %40)
  br label %75

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fputc(i8 signext 92, i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fputc(i8 signext 110, i32* %48)
  br label %74

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 13
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @fputc(i8 signext 92, i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @fputc(i8 signext 114, i32* %56)
  br label %73

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @isprint(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 255
  %66 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %72

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i32*, i32** %3, align 8
  %71 = call i32 @fputc(i8 signext %69, i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75, %29
  br label %77

77:                                               ; preds = %76, %17
  br label %8

78:                                               ; preds = %8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @fputc(i8 signext 34, i32* %79)
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @isprint(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
