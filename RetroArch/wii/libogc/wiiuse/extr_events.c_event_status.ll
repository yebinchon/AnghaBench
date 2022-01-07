; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_status.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_events.c_event_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, i32, %struct.cmd_blk_t*, i32 }
%struct.cmd_blk_t = type { i64, i64*, i32, i32 (%struct.wiimote_t*, i32*, i32)*, %struct.cmd_blk_t* }

@WIIUSE_STATUS = common dso_local global i32 0, align 4
@WM_CTRL_STATUS_BYTE1_ATTACHMENT = common dso_local global i32 0, align 4
@WM_CTRL_STATUS_BYTE1_IR_ENABLED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR_INIT = common dso_local global i32 0, align 4
@WIIMOTE_STATE_IR = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP_FAILED = common dso_local global i32 0, align 4
@WIIMOTE_STATE_EXP_HANDSHAKE = common dso_local global i32 0, align 4
@CMD_SENT = common dso_local global i64 0, align 8
@WM_CMD_CTRL_STATUS = common dso_local global i64 0, align 8
@CMD_DONE = common dso_local global i64 0, align 8
@WIIMOTE_STATE_SPEAKER = common dso_local global i32 0, align 4
@WIIMOTE_STATE_SPEAKER_INIT = common dso_local global i32 0, align 4
@WM_CTRL_STATUS_BYTE1_SPEAKER_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_t*, i32*)* @event_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_status(%struct.wiimote_t* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_blk_t*, align 8
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %9 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %8, i32 0, i32 2
  %10 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %9, align 8
  store %struct.cmd_blk_t* %10, %struct.cmd_blk_t** %7, align 8
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @wiiuse_pressed_buttons(%struct.wiimote_t* %11, i32* %12)
  %14 = load i32, i32* @WIIUSE_STATUS, align 4
  %15 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %16 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WM_CTRL_STATUS_BYTE1_ATTACHMENT, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @WM_CTRL_STATUS_BYTE1_ATTACHMENT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WM_CTRL_STATUS_BYTE1_IR_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @WM_CTRL_STATUS_BYTE1_IR_ENABLED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %39 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %44 = load i32, i32* @WIIMOTE_STATE_IR_INIT, align 4
  %45 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %49 = load i32, i32* @WIIMOTE_STATE_IR_INIT, align 4
  %50 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %48, i32 %49)
  %51 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %52 = call i32 @wiiuse_set_ir(%struct.wiimote_t* %51, i32 1)
  br label %115

53:                                               ; preds = %42, %34
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %58 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %59 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %63 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %64 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %62, i32 %63)
  br label %78

65:                                               ; preds = %56, %53
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %70 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %71 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %75 = load i32, i32* @WIIMOTE_STATE_IR, align 4
  %76 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %68, %65
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %83 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %84 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %81
  %87 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %88 = load i32, i32* @WIIMOTE_STATE_EXP_FAILED, align 4
  %89 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %86
  %92 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %93 = load i32, i32* @WIIMOTE_STATE_EXP_HANDSHAKE, align 4
  %94 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %98 = call i32 @wiiuse_handshake_expansion_start(%struct.wiimote_t* %97)
  br label %115

99:                                               ; preds = %91, %86, %81
  br label %112

100:                                              ; preds = %78
  %101 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %102 = load i32, i32* @WIIMOTE_STATE_EXP_FAILED, align 4
  %103 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %101, i32 %102)
  %104 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %105 = load i32, i32* @WIIMOTE_STATE_EXP, align 4
  %106 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %110 = call i32 @wiiuse_disable_expansion(%struct.wiimote_t* %109)
  br label %115

111:                                              ; preds = %100
  br label %112

112:                                              ; preds = %111, %99
  %113 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %114 = call i32 @wiiuse_set_report_type(%struct.wiimote_t* %113, i32* null)
  br label %115

115:                                              ; preds = %112, %108, %96, %47
  %116 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %117 = icmp ne %struct.cmd_blk_t* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  br label %162

119:                                              ; preds = %115
  %120 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %121 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CMD_SENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %119
  %126 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %127 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @WM_CMD_CTRL_STATUS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %125, %119
  br label %162

134:                                              ; preds = %125
  %135 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %136 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %135, i32 0, i32 4
  %137 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %136, align 8
  %138 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %139 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %138, i32 0, i32 2
  store %struct.cmd_blk_t* %137, %struct.cmd_blk_t** %139, align 8
  %140 = load i64, i64* @CMD_DONE, align 8
  %141 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %142 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %144 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %143, i32 0, i32 3
  %145 = load i32 (%struct.wiimote_t*, i32*, i32)*, i32 (%struct.wiimote_t*, i32*, i32)** %144, align 8
  %146 = icmp ne i32 (%struct.wiimote_t*, i32*, i32)* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %149 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %148, i32 0, i32 3
  %150 = load i32 (%struct.wiimote_t*, i32*, i32)*, i32 (%struct.wiimote_t*, i32*, i32)** %149, align 8
  %151 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 %150(%struct.wiimote_t* %151, i32* %152, i32 6)
  br label %154

154:                                              ; preds = %147, %134
  %155 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %156 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %155, i32 0, i32 1
  %157 = load %struct.cmd_blk_t*, %struct.cmd_blk_t** %7, align 8
  %158 = getelementptr inbounds %struct.cmd_blk_t, %struct.cmd_blk_t* %157, i32 0, i32 2
  %159 = call i32 @__lwp_queue_append(i32* %156, i32* %158)
  %160 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %161 = call i32 @wiiuse_send_next_command(%struct.wiimote_t* %160)
  br label %162

162:                                              ; preds = %154, %133, %118
  ret void
}

declare dso_local i32 @wiiuse_pressed_buttons(%struct.wiimote_t*, i32*) #1

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_set_ir(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_handshake_expansion_start(%struct.wiimote_t*) #1

declare dso_local i32 @wiiuse_disable_expansion(%struct.wiimote_t*) #1

declare dso_local i32 @wiiuse_set_report_type(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @__lwp_queue_append(i32*, i32*) #1

declare dso_local i32 @wiiuse_send_next_command(%struct.wiimote_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
