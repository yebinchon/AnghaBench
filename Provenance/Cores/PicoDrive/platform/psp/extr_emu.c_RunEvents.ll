; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_RunEvents.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_RunEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@state_slot = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"LOAD STATE? (X=yes, O=no)\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"OVERWRITE SAVE? (X=yes, O=no)\00", align 1
@PBTN_X = common dso_local global i32 0, align 4
@PBTN_CIRCLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"LOADING GAME\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SAVING GAME\00", align 1
@emu_msg_cb = common dso_local global i32* null, align 8
@PicoStateProgressCB = common dso_local global i32* null, align 8
@reset_timing = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_ALT_RENDERER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"fast renderer\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"accurate renderer\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SAVE SLOT %i [%s]\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @RunEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RunEvents(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 6144
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %81

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %9 = load i32, i32* @state_slot, align 4
  %10 = call i64 @emu_check_save_file(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 4096
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %18 = and i32 %17, 2048
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %2, align 4
  %22 = and i32 %21, 4096
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %64, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %26 = and i32 %25, 512
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %24, %16
  %29 = call i32 @sceGuSync(i32 0, i32 0)
  %30 = load i32, i32* %2, align 4
  %31 = and i32 %30, 4096
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @blit2(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %34, i32 0)
  br label %36

36:                                               ; preds = %44, %28
  %37 = call i32 @psp_pad_read(i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @PBTN_X, align 4
  %39 = load i32, i32* @PBTN_CIRCLE, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 @psp_msleep(i32 50)
  br label %36

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PBTN_CIRCLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %60, %52
  %54 = call i32 @psp_pad_read(i32 1)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @PBTN_X, align 4
  %56 = load i32, i32* @PBTN_CIRCLE, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = call i32 @psp_msleep(i32 50)
  br label %53

62:                                               ; preds = %53
  %63 = call i32 @clearArea(i32 0)
  br label %64

64:                                               ; preds = %62, %24, %20, %8
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = and i32 %68, 4096
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %73 = call i32 @osd_text(i32 4, i8* %72, i32 1, i32 0)
  %74 = load i32*, i32** @emu_msg_cb, align 8
  store i32* %74, i32** @PicoStateProgressCB, align 8
  %75 = load i32, i32* %2, align 4
  %76 = and i32 %75, 4096
  %77 = lshr i32 %76, 12
  %78 = call i32 @emu_save_load_game(i32 %77, i32 0)
  store i32* null, i32** @PicoStateProgressCB, align 8
  %79 = call i32 @psp_msleep(i32 0)
  br label %80

80:                                               ; preds = %67, %64
  store i32 1, i32* @reset_timing, align 4
  br label %81

81:                                               ; preds = %80, %1
  %82 = load i32, i32* %2, align 4
  %83 = and i32 %82, 1024
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load i32, i32* @PicoOpt, align 4
  %87 = and i32 %86, 16
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* @PicoOpt, align 4
  %91 = and i32 %90, -17
  store i32 %91, i32* @PicoOpt, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %93 = or i32 %92, 128
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %99

94:                                               ; preds = %85
  %95 = load i32, i32* @PicoOpt, align 4
  %96 = or i32 %95, 16
  store i32 %96, i32* @PicoOpt, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %98 = and i32 %97, -129
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = call i32 (...) @vidResetMode()
  %101 = load i32, i32* @PicoOpt, align 4
  %102 = load i32, i32* @POPT_ALT_RENDERER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %114

107:                                              ; preds = %99
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %107
  br label %114

114:                                              ; preds = %113, %105
  br label %115

115:                                              ; preds = %114, %81
  %116 = load i32, i32* %2, align 4
  %117 = and i32 %116, 768
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %115
  %120 = load i32, i32* %2, align 4
  %121 = and i32 %120, 512
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* @state_slot, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* @state_slot, align 4
  %126 = load i32, i32* @state_slot, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 9, i32* @state_slot, align 4
  br label %129

129:                                              ; preds = %128, %123
  br label %137

130:                                              ; preds = %119
  %131 = load i32, i32* @state_slot, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @state_slot, align 4
  %133 = load i32, i32* @state_slot, align 4
  %134 = icmp sgt i32 %133, 9
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 0, i32* @state_slot, align 4
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %129
  %138 = load i32, i32* @state_slot, align 4
  %139 = load i32, i32* @state_slot, align 4
  %140 = call i64 @emu_check_save_file(i32 %139)
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %144 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %138, i8* %143)
  br label %145

145:                                              ; preds = %137, %115
  ret void
}

declare dso_local i64 @emu_check_save_file(i32) #1

declare dso_local i32 @sceGuSync(i32, i32) #1

declare dso_local i32 @blit2(i8*, i8*, i32) #1

declare dso_local i32 @psp_pad_read(i32) #1

declare dso_local i32 @psp_msleep(i32) #1

declare dso_local i32 @clearArea(i32) #1

declare dso_local i32 @osd_text(i32, i8*, i32, i32) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @vidResetMode(...) #1

declare dso_local i32 @emu_status_msg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
