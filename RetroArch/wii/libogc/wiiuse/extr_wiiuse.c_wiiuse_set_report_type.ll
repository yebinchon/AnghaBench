; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_set_report_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_wiiuse.c_wiiuse_set_report_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIUSE_CONTINUOUS = common dso_local global i32 0, align 4
@WIIMOTE_STATE_ACC = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WM_RPT_BTN_ACC_IR_EXP = common dso_local global i32 0, align 4
@WM_RPT_BTN_ACC_EXP = common dso_local global i32 0, align 4
@WM_RPT_BTN_ACC_IR = common dso_local global i32 0, align 4
@WM_RPT_BTN_IR_EXP = common dso_local global i32 0, align 4
@WM_RPT_BTN_EXP = common dso_local global i32 0, align 4
@WM_RPT_BTN_ACC = common dso_local global i32 0, align 4
@WM_RPT_BTN = common dso_local global i32 0, align 4
@WM_CMD_REPORT_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wiiuse_set_report_type(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimote_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %11 = icmp ne %struct.wiimote_t* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %14 = call i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %117

17:                                               ; preds = %12
  %18 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %19 = load i32, i32* @WIIUSE_CONTINUOUS, align 4
  %20 = call i64 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 0
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %27 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %28 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %17
  %31 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %32 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %33 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %17
  %36 = phi i1 [ true, %17 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %39 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %40 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %42 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %43 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @WM_RPT_BTN_ACC_IR_EXP, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  br label %109

55:                                               ; preds = %49, %46, %35
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @WM_RPT_BTN_ACC_EXP, align 4
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %62, i32* %63, align 4
  br label %108

64:                                               ; preds = %58, %55
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @WM_RPT_BTN_ACC_IR, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  br label %107

73:                                               ; preds = %67, %64
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @WM_RPT_BTN_IR_EXP, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %80, i32* %81, align 4
  br label %106

82:                                               ; preds = %76, %73
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @WM_RPT_BTN_ACC_IR, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %86, i32* %87, align 4
  br label %105

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @WM_RPT_BTN_EXP, align 4
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %92, i32* %93, align 4
  br label %104

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @WM_RPT_BTN_ACC, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %98, i32* %99, align 4
  br label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @WM_RPT_BTN, align 4
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %79
  br label %107

107:                                              ; preds = %106, %70
  br label %108

108:                                              ; preds = %107, %61
  br label %109

109:                                              ; preds = %108, %52
  %110 = load %struct.wiimote_t*, %struct.wiimote_t** %4, align 8
  %111 = load i32, i32* @WM_CMD_REPORT_TYPE, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %110, i32 %111, i32* %112, i32 2, i32 %113)
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %109, %16
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @WIIMOTE_IS_CONNECTED(%struct.wiimote_t*) #1

declare dso_local i64 @WIIMOTE_IS_FLAG_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_sendcmd(%struct.wiimote_t*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
