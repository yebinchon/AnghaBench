; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_setbranchdispstr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_m68kd.c_setbranchdispstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c".l   %X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".w   %X\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".s   %X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*, i8*)* @setbranchdispstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setbranchdispstr(i64 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, 255
  %12 = icmp eq i32 %11, 255
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @c68k_word_read(i64 %19)
  %21 = shl i32 %20, 16
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @c68k_word_read(i64 %23)
  %25 = or i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %18, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %5, align 4
  br label %56

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  store i32 %37, i32* %35, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @c68k_word_read(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %34, %13
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @c68k_word_read(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
