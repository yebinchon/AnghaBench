; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_amenu_loop_options.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_amenu_loop_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@amenu_loop_options.menu_sel = internal global i32 0, align 4
@opt2_entries = common dso_local global i32 0, align 4
@OPT2_ENTRY_COUNT = common dso_local global i32 0, align 4
@PBTN_UP = common dso_local global i64 0, align 8
@PBTN_DOWN = common dso_local global i64 0, align 8
@PBTN_LEFT = common dso_local global i64 0, align 8
@PBTN_RIGHT = common dso_local global i64 0, align 8
@PBTN_PLAY = common dso_local global i64 0, align 8
@PBTN_STOP = common dso_local global i64 0, align 8
@PBTN_REW = common dso_local global i64 0, align 8
@MA_OPT2_GAMMA = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MA_OPT2_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amenu_loop_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amenu_loop_options() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  %4 = load i32, i32* @opt2_entries, align 4
  %5 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %6 = call i32 @me_count_enabled(i32 %4, i32 %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %132, %0
  %9 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %10 = call i32 @draw_amenu_options(i32 %9)
  %11 = load i64, i64* @PBTN_UP, align 8
  %12 = load i64, i64* @PBTN_DOWN, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @PBTN_LEFT, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @PBTN_RIGHT, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @PBTN_PLAY, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @PBTN_STOP, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @PBTN_REW, align 8
  %23 = or i64 %21, %22
  %24 = call i64 @in_menu_wait(i64 %23)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @PBTN_UP, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %8
  %30 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* @amenu_loop_options.menu_sel, align 4
  %32 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %1, align 4
  store i32 %35, i32* @amenu_loop_options.menu_sel, align 4
  br label %36

36:                                               ; preds = %34, %29
  br label %37

37:                                               ; preds = %36, %8
  %38 = load i64, i64* %2, align 8
  %39 = load i64, i64* @PBTN_DOWN, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @amenu_loop_options.menu_sel, align 4
  %45 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* @amenu_loop_options.menu_sel, align 4
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* @opt2_entries, align 4
  %52 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %53 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %54 = call i32 @me_index2id(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* @PBTN_LEFT, align 8
  %57 = load i64, i64* @PBTN_RIGHT, align 8
  %58 = or i64 %56, %57
  %59 = and i64 %55, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %107

61:                                               ; preds = %50
  %62 = load i32, i32* @opt2_entries, align 4
  %63 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @PBTN_RIGHT, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32 @me_process(i32 %62, i32 %63, i32 %64, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @MA_OPT2_GAMMA, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %101, %77
  %79 = call i64 (...) @Framework_PollGetButtons()
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* @PBTN_LEFT, align 8
  %81 = load i64, i64* @PBTN_RIGHT, align 8
  %82 = or i64 %80, %81
  %83 = and i64 %79, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load i64, i64* %2, align 8
  %87 = load i64, i64* @PBTN_LEFT, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 -1, i32 1
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %99 = icmp sgt i32 %98, 300
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 300, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %101

101:                                              ; preds = %100, %97
  %102 = load i32, i32* @amenu_loop_options.menu_sel, align 4
  %103 = call i32 @draw_amenu_options(i32 %102)
  %104 = call i32 @Sleep(i32 18)
  br label %78

105:                                              ; preds = %78
  br label %106

106:                                              ; preds = %105, %73, %61
  br label %107

107:                                              ; preds = %106, %50
  %108 = load i64, i64* %2, align 8
  %109 = load i64, i64* @PBTN_PLAY, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i32, i32* @opt2_entries, align 4
  %114 = load i32, i32* @OPT2_ENTRY_COUNT, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @me_process(i32 %113, i32 %114, i32 %115, i32 1)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @MA_OPT2_DONE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %133

123:                                              ; preds = %118, %112
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i64, i64* %2, align 8
  %126 = load i64, i64* @PBTN_STOP, align 8
  %127 = load i64, i64* @PBTN_REW, align 8
  %128 = or i64 %126, %127
  %129 = and i64 %125, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %133

132:                                              ; preds = %124
  br label %8

133:                                              ; preds = %131, %122
  ret void
}

declare dso_local i32 @me_count_enabled(i32, i32) #1

declare dso_local i32 @draw_amenu_options(i32) #1

declare dso_local i64 @in_menu_wait(i64) #1

declare dso_local i32 @me_index2id(i32, i32, i32) #1

declare dso_local i32 @me_process(i32, i32, i32, i32) #1

declare dso_local i64 @Framework_PollGetButtons(...) #1

declare dso_local i32 @Sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
