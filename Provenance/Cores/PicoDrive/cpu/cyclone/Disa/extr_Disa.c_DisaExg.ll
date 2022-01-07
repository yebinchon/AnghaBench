; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaExg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaExg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DisaText = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"exg d%d, d%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"exg a%d, a%d\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"exg a%d, d%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DisaExg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DisaExg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 9
  %9 = and i32 %8, 7
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 248
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 7
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 64
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @DisaText, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @sprintf(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %40

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 72
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @DisaText, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sprintf(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27)
  br label %39

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 136
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @DisaText, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sprintf(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  br label %38

37:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %41

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %16
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
