; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_seteafieldstr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_seteafieldstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(a%d)\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(a%d)+\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-(a%d)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"0x%X(a%d)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"0x%X(a%d, Xn)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"(0x%X).w\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"(0x%X).l\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"#0x%X\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"0x%X(PC)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i8*)* @seteafieldstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seteafieldstr(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = ashr i32 %10, 3
  %12 = and i32 %11, 7
  switch i32 %12, label %102 [
    i32 0, label %13
    i32 1, label %18
    i32 2, label %23
    i32 3, label %28
    i32 4, label %33
    i32 5, label %38
    i32 6, label %48
    i32 7, label %59
  ]

13:                                               ; preds = %4
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 7
  %17 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %5, align 4
  br label %104

18:                                               ; preds = %4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 7
  %22 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %5, align 4
  br label %104

23:                                               ; preds = %4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 7
  %27 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  br label %104

28:                                               ; preds = %4
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 7
  %32 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %5, align 4
  br label %104

33:                                               ; preds = %4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 7
  %37 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  store i32 %37, i32* %5, align 4
  br label %104

38:                                               ; preds = %4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %39, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @c68k_word_read(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 7
  %47 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %44, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %104

48:                                               ; preds = %4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 2
  store i32 %51, i32* %49, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @c68k_word_read(i32 %53)
  %55 = and i32 %54, 255
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 7
  %58 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %55, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %104

59:                                               ; preds = %4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 7
  switch i32 %61, label %100 [
    i32 0, label %62
    i32 1, label %70
    i32 4, label %83
    i32 2, label %91
    i32 3, label %99
  ]

62:                                               ; preds = %59
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %63, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @c68k_word_read(i32 %67)
  %69 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %5, align 4
  br label %104

70:                                               ; preds = %59
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %71, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @c68k_word_read(i32 %75)
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 2
  %80 = call i32 @c68k_word_read(i32 %79)
  %81 = or i32 %77, %80
  %82 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %5, align 4
  br label %104

83:                                               ; preds = %59
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %84, align 4
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @c68k_word_read(i32 %88)
  %90 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %89)
  store i32 %90, i32* %5, align 4
  br label %104

91:                                               ; preds = %59
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %92, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @c68k_word_read(i32 %96)
  %98 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %5, align 4
  br label %104

99:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %104

100:                                              ; preds = %59
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %4, %101
  br label %103

103:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %99, %91, %83, %70, %62, %48, %38, %33, %28, %23, %18, %13
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @c68k_word_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
