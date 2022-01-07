; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_get_ir_sens.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_get_ir_sens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_IR_SENS_LVL1 = common dso_local global i32 0, align 4
@WM_IR_BLOCK1_LEVEL1 = common dso_local global i8* null, align 8
@WM_IR_BLOCK2_LEVEL1 = common dso_local global i8* null, align 8
@WIIMOTE_STATE_IR_SENS_LVL2 = common dso_local global i32 0, align 4
@WM_IR_BLOCK1_LEVEL2 = common dso_local global i8* null, align 8
@WM_IR_BLOCK2_LEVEL2 = common dso_local global i8* null, align 8
@WIIMOTE_STATE_IR_SENS_LVL3 = common dso_local global i32 0, align 4
@WM_IR_BLOCK1_LEVEL3 = common dso_local global i8* null, align 8
@WM_IR_BLOCK2_LEVEL3 = common dso_local global i8* null, align 8
@WIIMOTE_STATE_IR_SENS_LVL4 = common dso_local global i32 0, align 4
@WM_IR_BLOCK1_LEVEL4 = common dso_local global i8* null, align 8
@WM_IR_BLOCK2_LEVEL4 = common dso_local global i8* null, align 8
@WIIMOTE_STATE_IR_SENS_LVL5 = common dso_local global i32 0, align 4
@WM_IR_BLOCK1_LEVEL5 = common dso_local global i8* null, align 8
@WM_IR_BLOCK2_LEVEL5 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimote_t*, i8**, i8**)* @get_ir_sens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ir_sens(%struct.wiimote_t* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiimote_t*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %9 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL1, align 4
  %10 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i8*, i8** @WM_IR_BLOCK1_LEVEL1, align 8
  %14 = load i8**, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  %15 = load i8*, i8** @WM_IR_BLOCK2_LEVEL1, align 8
  %16 = load i8**, i8*** %7, align 8
  store i8* %15, i8** %16, align 8
  store i32 1, i32* %4, align 4
  br label %64

17:                                               ; preds = %3
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %19 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL2, align 4
  %20 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8*, i8** @WM_IR_BLOCK1_LEVEL2, align 8
  %24 = load i8**, i8*** %6, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** @WM_IR_BLOCK2_LEVEL2, align 8
  %26 = load i8**, i8*** %7, align 8
  store i8* %25, i8** %26, align 8
  store i32 2, i32* %4, align 4
  br label %64

27:                                               ; preds = %17
  %28 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %29 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL3, align 4
  %30 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** @WM_IR_BLOCK1_LEVEL3, align 8
  %34 = load i8**, i8*** %6, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** @WM_IR_BLOCK2_LEVEL3, align 8
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  store i32 3, i32* %4, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %39 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL4, align 4
  %40 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** @WM_IR_BLOCK1_LEVEL4, align 8
  %44 = load i8**, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @WM_IR_BLOCK2_LEVEL4, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  store i32 4, i32* %4, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.wiimote_t*, %struct.wiimote_t** %5, align 8
  %49 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL5, align 4
  %50 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i8*, i8** @WM_IR_BLOCK1_LEVEL5, align 8
  %54 = load i8**, i8*** %6, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i8*, i8** @WM_IR_BLOCK2_LEVEL5, align 8
  %56 = load i8**, i8*** %7, align 8
  store i8* %55, i8** %56, align 8
  store i32 5, i32* %4, align 4
  br label %64

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i8**, i8*** %6, align 8
  store i8* null, i8** %62, align 8
  %63 = load i8**, i8*** %7, align 8
  store i8* null, i8** %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %52, %42, %32, %22, %12
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
