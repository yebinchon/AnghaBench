; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_InitLightTables.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_InitLightTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIGHTLEVELS = common dso_local global i32 0, align 4
@NUMCOLORMAPS = common dso_local global i32 0, align 4
@MAXLIGHTZ = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@LIGHTZSHIFT = common dso_local global i32 0, align 4
@LIGHTSCALESHIFT = common dso_local global i32 0, align 4
@DISTMAP = common dso_local global i32 0, align 4
@colormaps = common dso_local global i64 0, align 8
@zlight = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitLightTables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %70, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @LIGHTLEVELS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %73

10:                                               ; preds = %6
  %11 = load i32, i32* @LIGHTLEVELS, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %1, align 4
  %14 = sub nsw i32 %12, %13
  %15 = mul nsw i32 %14, 2
  %16 = load i32, i32* @NUMCOLORMAPS, align 4
  %17 = mul nsw i32 %15, %16
  %18 = load i32, i32* @LIGHTLEVELS, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %66, %10
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @MAXLIGHTZ, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i32, i32* @SCREENWIDTH, align 4
  %26 = sdiv i32 %25, 2
  %27 = load i32, i32* @FRACUNIT, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @LIGHTZSHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @FixedDiv(i32 %28, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @LIGHTSCALESHIFT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @DISTMAP, align 4
  %40 = sdiv i32 %38, %39
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @NUMCOLORMAPS, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @NUMCOLORMAPS, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i64, i64* @colormaps, align 8
  %54 = load i32, i32* %3, align 4
  %55 = mul nsw i32 %54, 256
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i64**, i64*** @zlight, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %57, i64* %65, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %20

69:                                               ; preds = %20
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %6

73:                                               ; preds = %6
  ret void
}

declare dso_local i32 @FixedDiv(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
