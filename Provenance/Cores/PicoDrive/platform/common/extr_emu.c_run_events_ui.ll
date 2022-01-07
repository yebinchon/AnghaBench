; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_run_events_ui.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_run_events_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PEV_STATE_LOAD = common dso_local global i32 0, align 4
@PEV_STATE_SAVE = common dso_local global i32 0, align 4
@state_slot = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EOPT_CONFIRM_LOAD = common dso_local global i32 0, align 4
@EOPT_CONFIRM_SAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LOAD STATE? \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"OVERWRITE SAVE? \00", align 1
@PBTN_MOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"(%s=yes, \00", align 1
@PBTN_MBACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s=no)\00", align 1
@IN_CFG_BLOCKING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"LOADING STATE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SAVING STATE\00", align 1
@plat_status_msg_busy_next = common dso_local global i32* null, align 8
@PicoStateProgressCB = common dso_local global i32* null, align 8
@PEV_SWITCH_RND = common dso_local global i32 0, align 4
@PEV_SSLOT_PREV = common dso_local global i32 0, align 4
@PEV_SSLOT_NEXT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"SAVE SLOT %i [%s]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"USED\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@PEV_MENU = common dso_local global i32 0, align 4
@PGS_Menu = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_events_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_events_ui(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @PEV_STATE_LOAD, align 4
  %10 = load i32, i32* @PEV_STATE_SAVE, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %137

14:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %15 = load i32, i32* @state_slot, align 4
  %16 = call i64 @emu_check_save_file(i32 %15, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %117

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @PEV_STATE_LOAD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %25 = load i32, i32* @EOPT_CONFIRM_LOAD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @PEV_STATE_SAVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %117

33:                                               ; preds = %28
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %35 = load i32, i32* @EOPT_CONFIRM_SAVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %117

38:                                               ; preds = %33, %23
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @PEV_STATE_LOAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)
  %46 = call i32 @strcpy(i8* %39, i8* %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @PBTN_MOK, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i8* @in_get_key_name(i32 -1, i32 %50)
  store i8* %51, i8** %4, align 8
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 64, %57
  %59 = trunc i64 %58 to i32
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @snprintf(i8* %55, i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @PBTN_MBACK, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i8* @in_get_key_name(i32 -1, i32 %65)
  store i8* %66, i8** %4, align 8
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 64, %72
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @snprintf(i8* %70, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %78 = call i32 @plat_status_msg_busy_first(i8* %77)
  %79 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %80 = call i32 @in_set_config_int(i32 0, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %88, %38
  %82 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %83 = load i32, i32* @PBTN_MOK, align 4
  %84 = load i32, i32* @PBTN_MBACK, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %81

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %98, %89
  %91 = call i32 @in_menu_wait_any(i32* null, i32 50)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @PBTN_MOK, align 4
  %93 = load i32, i32* @PBTN_MBACK, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %90

99:                                               ; preds = %90
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @PBTN_MBACK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %99
  br label %106

106:                                              ; preds = %113, %105
  %107 = call i32 @in_menu_wait_any(i32* null, i32 50)
  %108 = load i32, i32* @PBTN_MOK, align 4
  %109 = load i32, i32* @PBTN_MBACK, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %106

114:                                              ; preds = %106
  %115 = load i32, i32* @IN_CFG_BLOCKING, align 4
  %116 = call i32 @in_set_config_int(i32 0, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %114, %33, %28, %14
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load i32, i32* %2, align 4
  %122 = load i32, i32* @PEV_STATE_LOAD, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)
  %127 = call i32 @plat_status_msg_busy_first(i8* %126)
  %128 = load i32*, i32** @plat_status_msg_busy_next, align 8
  store i32* %128, i32** @PicoStateProgressCB, align 8
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @PEV_STATE_LOAD, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 1, i32 0
  %135 = call i32 @emu_save_load_game(i32 %134, i32 0)
  store i32* null, i32** @PicoStateProgressCB, align 8
  br label %136

136:                                              ; preds = %120, %117
  br label %137

137:                                              ; preds = %136, %1
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @PEV_SWITCH_RND, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = call i32 @plat_video_toggle_renderer(i32 1, i32 0)
  br label %144

144:                                              ; preds = %142, %137
  %145 = load i32, i32* %2, align 4
  %146 = load i32, i32* @PEV_SSLOT_PREV, align 4
  %147 = load i32, i32* @PEV_SSLOT_NEXT, align 4
  %148 = or i32 %146, %147
  %149 = and i32 %145, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %144
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @PEV_SSLOT_PREV, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load i32, i32* @state_slot, align 4
  %158 = sub nsw i32 %157, 1
  store i32 %158, i32* @state_slot, align 4
  %159 = load i32, i32* @state_slot, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 9, i32* @state_slot, align 4
  br label %162

162:                                              ; preds = %161, %156
  br label %170

163:                                              ; preds = %151
  %164 = load i32, i32* @state_slot, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* @state_slot, align 4
  %166 = load i32, i32* @state_slot, align 4
  %167 = icmp sgt i32 %166, 9
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 0, i32* @state_slot, align 4
  br label %169

169:                                              ; preds = %168, %163
  br label %170

170:                                              ; preds = %169, %162
  %171 = load i32, i32* @state_slot, align 4
  %172 = load i32, i32* @state_slot, align 4
  %173 = call i64 @emu_check_save_file(i32 %172, i32* null)
  %174 = icmp ne i64 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %177 = call i32 @emu_status_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %171, i8* %176)
  br label %178

178:                                              ; preds = %170, %144
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @PEV_MENU, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @PGS_Menu, align 4
  store i32 %184, i32* @engineState, align 4
  br label %185

185:                                              ; preds = %183, %178
  ret void
}

declare dso_local i64 @emu_check_save_file(i32, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @in_get_key_name(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @plat_status_msg_busy_first(i8*) #1

declare dso_local i32 @in_set_config_int(i32, i32, i32) #1

declare dso_local i32 @in_menu_wait_any(i32*, i32) #1

declare dso_local i32 @emu_save_load_game(i32, i32) #1

declare dso_local i32 @plat_video_toggle_renderer(i32, i32) #1

declare dso_local i32 @emu_status_msg(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
