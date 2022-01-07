; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_RunEvents.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_RunEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PsndOut = common dso_local global i32* null, align 8
@giz_screen = common dso_local global i32* null, align 8
@state_slot = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"LOAD STATE? (PLAY=yes, STOP=no)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"OVERWRITE SAVE? (PLAY=yes, STOP=no)\00", align 1
@PBTN_PLAY = common dso_local global i32 0, align 4
@PBTN_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"LOADING GAME\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"SAVING GAME\00", align 1
@emu_stateCb = common dso_local global i32* null, align 8
@PicoStateProgressCB = common dso_local global i32* null, align 8
@reset_timing = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@noticeMsg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c" 8bit fast renderer\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"16bit accurate renderer\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" 8bit accurate renderer\00", align 1
@noticeMsgTime = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"SAVE SLOT %i [%s]\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
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
  br i1 %7, label %8, label %95

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %9 = load i32*, i32** @PsndOut, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @FrameworkAudio_SetPause(i32 1)
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32*, i32** @giz_screen, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32* @fb_lock(i32 1)
  store i32* %17, i32** @giz_screen, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @state_slot, align 4
  %20 = call i64 @emu_check_save_file(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 4096
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %28 = and i32 %27, 2048
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 4096
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %36 = and i32 %35, 512
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 4096
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @blit(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %53, %38
  %46 = call i32 (...) @Framework_PollGetButtons()
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @PBTN_PLAY, align 4
  %48 = load i32, i32* @PBTN_STOP, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @Sleep(i32 50)
  br label %45

55:                                               ; preds = %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PBTN_STOP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %55
  br label %62

62:                                               ; preds = %69, %61
  %63 = call i32 (...) @Framework_PollGetButtons()
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @PBTN_PLAY, align 4
  %65 = load i32, i32* @PBTN_STOP, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 @Sleep(i32 50)
  br label %62

71:                                               ; preds = %62
  %72 = call i32 @clearArea(i32 0)
  br label %73

73:                                               ; preds = %71, %34, %30, %18
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %2, align 4
  %78 = and i32 %77, 4096
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %82 = call i32 @osd_text(i32 4, i32 232, i8* %81)
  %83 = load i32*, i32** @emu_stateCb, align 8
  store i32* %83, i32** @PicoStateProgressCB, align 8
  %84 = load i32, i32* %2, align 4
  %85 = and i32 %84, 4096
  %86 = lshr i32 %85, 12
  %87 = call i32 @emu_save_load_game(i32 %86, i32 0)
  store i32* null, i32** @PicoStateProgressCB, align 8
  %88 = call i32 @Sleep(i32 0)
  br label %89

89:                                               ; preds = %76, %73
  %90 = load i32*, i32** @PsndOut, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @FrameworkAudio_SetPause(i32 0)
  br label %94

94:                                               ; preds = %92, %89
  store i32 1, i32* @reset_timing, align 4
  br label %95

95:                                               ; preds = %94, %1
  %96 = load i32, i32* %2, align 4
  %97 = and i32 %96, 1024
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %95
  %100 = load i32, i32* @PicoOpt, align 4
  %101 = and i32 %100, 16
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* @PicoOpt, align 4
  %105 = and i32 %104, -17
  store i32 %105, i32* @PicoOpt, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %107 = or i32 %106, 128
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %113

108:                                              ; preds = %99
  %109 = load i32, i32* @PicoOpt, align 4
  %110 = or i32 %109, 16
  store i32 %110, i32* @PicoOpt, align 4
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %112 = and i32 %111, -129
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = call i32 (...) @vidResetMode()
  %115 = load i32, i32* @PicoOpt, align 4
  %116 = and i32 %115, 16
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @noticeMsg, align 4
  %120 = call i32 @strcpy(i32 %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %132

121:                                              ; preds = %113
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %123 = and i32 %122, 128
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @noticeMsg, align 4
  %127 = call i32 @strcpy(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @noticeMsg, align 4
  %130 = call i32 @strcpy(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %118
  %133 = call i32 (...) @GetTickCount()
  store i32 %133, i32* @noticeMsgTime, align 4
  br label %134

134:                                              ; preds = %132, %95
  %135 = load i32, i32* %2, align 4
  %136 = and i32 %135, 768
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %134
  %139 = load i32, i32* %2, align 4
  %140 = and i32 %139, 512
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i32, i32* @state_slot, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* @state_slot, align 4
  %145 = load i32, i32* @state_slot, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 9, i32* @state_slot, align 4
  br label %148

148:                                              ; preds = %147, %142
  br label %156

149:                                              ; preds = %138
  %150 = load i32, i32* @state_slot, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* @state_slot, align 4
  %152 = load i32, i32* @state_slot, align 4
  %153 = icmp sgt i32 %152, 9
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  store i32 0, i32* @state_slot, align 4
  br label %155

155:                                              ; preds = %154, %149
  br label %156

156:                                              ; preds = %155, %148
  %157 = load i32, i32* @noticeMsg, align 4
  %158 = load i32, i32* @state_slot, align 4
  %159 = load i32, i32* @state_slot, align 4
  %160 = call i64 @emu_check_save_file(i32 %159)
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  %164 = call i32 @sprintf(i32 %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %158, i8* %163)
  %165 = call i32 (...) @GetTickCount()
  store i32 %165, i32* @noticeMsgTime, align 4
  br label %166

166:                                              ; preds = %156, %134
  ret void
}

declare dso_local i32 @FrameworkAudio_SetPause(i32) #1

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i64 @emu_check_save_file(i32) #1

declare dso_local i32 @blit(i8*, i8*) #1

declare dso_local i32 @Framework_PollGetButtons(...) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @clearArea(i32) #1

declare dso_local i32 @osd_text(i32, i32, i8*) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @vidResetMode(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
