; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointToDist.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_PointToDist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@viewx = common dso_local global i64 0, align 8
@viewy = common dso_local global i64 0, align 8
@tantoangle = common dso_local global i32* null, align 8
@DBITS = common dso_local global i64 0, align 8
@ANG90 = common dso_local global i32 0, align 4
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@finesine = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @R_PointToDist(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @viewx, align 8
  %12 = sub nsw i64 %10, %11
  %13 = call i64 @abs(i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @viewy, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i64 @abs(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32*, i32** @tantoangle, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @FixedDiv(i64 %27, i64 %28)
  %30 = load i64, i64* @DBITS, align 8
  %31 = lshr i64 %29, %30
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ANG90, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* %6, align 8
  %39 = load i64*, i64** @finesine, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @FixedDiv(i64 %38, i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  ret i64 %45
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @FixedDiv(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
