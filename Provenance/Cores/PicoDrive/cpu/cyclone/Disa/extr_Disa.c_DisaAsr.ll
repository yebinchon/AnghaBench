; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAsr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaAsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s%c.%c %c%d, d%d\00", align 1
@AsrName = common dso_local global i8** null, align 8
@Tasm = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaAsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaAsr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 9
  %12 = and i32 %11, 7
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 3
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %63

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 3
  %28 = and i32 %27, 3
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %35, 7
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %22
  %39 = load i32, i32* @DisaText, align 4
  %40 = load i8**, i8*** @AsrName, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 108, i32 114
  %49 = trunc i32 %48 to i8
  %50 = load i32*, i32** @Tasm, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 100, i32 35
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sprintf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %44, i8 signext %49, i32 %54, i8 signext %59, i32 %60, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %38, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i8 signext, i32, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
