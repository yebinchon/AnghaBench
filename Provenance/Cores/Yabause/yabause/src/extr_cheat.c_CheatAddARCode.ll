; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatAddARCode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatAddARCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%08lX %04hX\00", align 1
@CHEATTYPE_WORDWRITE = common dso_local global i32 0, align 4
@CHEATTYPE_BYTEWRITE = common dso_local global i32 0, align 4
@CHEATTYPE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheatAddARCode(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @sscanf(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64* %4, i16* %5)
  %8 = load i64, i64* %4, align 8
  %9 = lshr i64 %8, 28
  switch i64 %9, label %29 [
    i64 0, label %10
    i64 1, label %11
    i64 3, label %17
    i64 13, label %23
  ]

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* @CHEATTYPE_WORDWRITE, align 4
  %13 = load i64, i64* %4, align 8
  %14 = and i64 %13, 268435455
  %15 = load i16, i16* %5, align 2
  %16 = call i32 @CheatAddCode(i32 %12, i64 %14, i16 zeroext %15)
  store i32 %16, i32* %2, align 4
  br label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @CHEATTYPE_BYTEWRITE, align 4
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 268435455
  %21 = load i16, i16* %5, align 2
  %22 = call i32 @CheatAddCode(i32 %18, i64 %20, i16 zeroext %21)
  store i32 %22, i32* %2, align 4
  br label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @CHEATTYPE_ENABLE, align 4
  %25 = load i64, i64* %4, align 8
  %26 = and i64 %25, 268435455
  %27 = load i16, i16* %5, align 2
  %28 = call i32 @CheatAddCode(i32 %24, i64 %26, i16 zeroext %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23, %17, %11, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i16*) #1

declare dso_local i32 @CheatAddCode(i32, i64, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
