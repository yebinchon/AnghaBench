; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_sensitivity.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_wiiuse_set_ir_sensitivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_IR_SENS_LVL1 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR_SENS_LVL2 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR_SENS_LVL3 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR_SENS_LVL4 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR_SENS_LVL5 = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR = common dso_local global i32 0, align 4
@WM_REG_IR_BLOCK1 = common dso_local global i32 0, align 4
@WM_REG_IR_BLOCK2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Set IR sensitivity to level %i (unid %i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_ir_sensitivity(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %8 = icmp ne %struct.wiimote_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %76

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 5, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %20 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL1, align 4
  %21 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL3, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL5, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %19, i32 %28)
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %51 [
    i32 1, label %31
    i32 2, label %35
    i32 3, label %39
    i32 4, label %43
    i32 5, label %47
  ]

31:                                               ; preds = %18
  %32 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %33 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL1, align 4
  %34 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %32, i32 %33)
  br label %52

35:                                               ; preds = %18
  %36 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %37 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL2, align 4
  %38 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %36, i32 %37)
  br label %52

39:                                               ; preds = %18
  %40 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %41 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL3, align 4
  %42 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %40, i32 %41)
  br label %52

43:                                               ; preds = %18
  %44 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %45 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL4, align 4
  %46 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %44, i32 %45)
  br label %52

47:                                               ; preds = %18
  %48 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %49 = load i32, i32* @WIIMOTE_STATE_IR_SENS_LVL5, align 4
  %50 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %48, i32 %49)
  br label %52

51:                                               ; preds = %18
  br label %76

52:                                               ; preds = %47, %43, %39, %35, %31
  %53 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %54 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %55 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %76

58:                                               ; preds = %52
  %59 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %60 = call i32 @get_ir_sens(%struct.wiimote_t* %59, i8** %5, i8** %6)
  %61 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %62 = load i32, i32* @WM_REG_IR_BLOCK1, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = call i32 @wiiuse_write_data(%struct.wiimote_t* %61, i32 %62, i32* %64, i32 9, i32* null)
  %66 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %67 = load i32, i32* @WM_REG_IR_BLOCK2, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = call i32 @wiiuse_write_data(%struct.wiimote_t* %66, i32 %67, i32* %69, i32 2, i32* null)
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %73 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WIIUSE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %58, %57, %51, %9
  ret void
}

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @get_ir_sens(%struct.wiimote_t*, i8**, i8**) #1

declare dso_local i32 @wiiuse_write_data(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

declare dso_local i32 @WIIUSE_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
