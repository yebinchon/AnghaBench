; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_crc.c_CRC_ContinueProcessString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_crc.c_CRC_ContinueProcessString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctable = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRC_ContinueProcessString(i16* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %36, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load i16*, i16** %4, align 8
  %14 = load i16, i16* %13, align 2
  %15 = zext i16 %14 to i32
  %16 = shl i32 %15, 8
  %17 = load i16*, i16** @crctable, align 8
  %18 = load i16*, i16** %4, align 8
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = xor i32 %21, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %17, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = xor i32 %16, %32
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %4, align 8
  store i16 %34, i16* %35, align 2
  br label %36

36:                                               ; preds = %12
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %8

39:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
