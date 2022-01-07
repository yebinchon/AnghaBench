; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_clean_binds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_clean_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_GP2X_NBUTTONS = common dso_local global i32 0, align 4
@IN_BINDTYPE_COUNT = common dso_local global i32 0, align 4
@in_gp2x_keys = common dso_local global i32** null, align 8
@GP2X_BTN_PUSH = common dso_local global i32 0, align 4
@in_gp2x_combo_keys = common dso_local global i32 0, align 4
@in_gp2x_combo_acts = common dso_local global i32 0, align 4
@GP2X_BTN_SELECT = common dso_local global i64 0, align 8
@GP2X_BTN_VOL_DOWN = common dso_local global i64 0, align 8
@GP2X_BTN_VOL_UP = common dso_local global i64 0, align 8
@IN_BINDTYPE_EMU = common dso_local global i32 0, align 4
@PEV_MENU = common dso_local global i32 0, align 4
@PEV_VOL_DOWN = common dso_local global i32 0, align 4
@PEV_VOL_UP = common dso_local global i32 0, align 4
@eb = common dso_local global i32 0, align 4
@have_menu = common dso_local global i32 0, align 4
@have_vol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @in_gp2x_clean_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_gp2x_clean_binds(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %56, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IN_GP2X_NBUTTONS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @IN_BINDTYPE_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @IN_BIND_OFFS(i64 %22, i32 %23)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32**, i32*** @in_gp2x_keys, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %16

55:                                               ; preds = %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %11

59:                                               ; preds = %11
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @GP2X_BTN_PUSH, align 4
  %62 = call i32 @in_combos_find(i32* %60, i32 %61, i32* @in_gp2x_combo_keys, i32* @in_gp2x_combo_acts)
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i64 @IN_BIND_OFFS(i64, i32) #1

declare dso_local i32 @in_combos_find(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
