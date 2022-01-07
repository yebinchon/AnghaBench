; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_speaker.c_wiiuse_set_speaker.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_speaker.c_wiiuse_set_speaker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32 }

@WIIMOTE_STATE_HANDSHAKE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Tried to enable speaker, will wait until handshake finishes.\0A\00", align 1
@WIIMOTE_STATE_SPEAKER_INIT = common dso_local global i32 0, align 4
@WIIMOTE_STATE_SPEAKER = common dso_local global i32 0, align 4
@WM_CMD_SPEAKER_MUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Disabled speaker for wiimote id %i.\00", align 1
@WM_REG_SPEAKER_REG1 = common dso_local global i32 0, align 4
@WM_REG_SPEAKER_REG3 = common dso_local global i32 0, align 4
@WM_CMD_SPEAKER_ENABLE = common dso_local global i32 0, align 4
@__wiiuse_speaker_defconf = common dso_local global i32 0, align 4
@__wiiuse_speaker_vol = common dso_local global i32 0, align 4
@WM_REG_SPEAKER_BLOCK = common dso_local global i32 0, align 4
@WM_REG_SPEAKER_REG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiiuse_set_speaker(%struct.wiimote_t* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %8 = icmp ne %struct.wiimote_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %100

10:                                               ; preds = %2
  %11 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %12 = load i32, i32* @WIIMOTE_STATE_HANDSHAKE_COMPLETE, align 4
  %13 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %21 = load i32, i32* @WIIMOTE_STATE_SPEAKER_INIT, align 4
  %22 = call i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t* %20, i32 %21)
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %25 = load i32, i32* @WIIMOTE_STATE_SPEAKER_INIT, align 4
  %26 = call i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %100

28:                                               ; preds = %10
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %33 = load i32, i32* @WIIMOTE_STATE_SPEAKER, align 4
  %34 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %38 = call i32 @wiiuse_status(%struct.wiimote_t* %37, i32* null)
  br label %100

39:                                               ; preds = %31
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %42 = load i32, i32* @WIIMOTE_STATE_SPEAKER, align 4
  %43 = call i64 @WIIMOTE_IS_SET(%struct.wiimote_t* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %47 = call i32 @wiiuse_status(%struct.wiimote_t* %46, i32* null)
  br label %100

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %39
  store i32 4, i32* %6, align 4
  %50 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %51 = load i32, i32* @WM_CMD_SPEAKER_MUTE, align 4
  %52 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %50, i32 %51, i32* %6, i32 1, i32* null)
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %49
  %56 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %57 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @WIIUSE_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 1, i32* %6, align 4
  %60 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %61 = load i32, i32* @WM_REG_SPEAKER_REG1, align 4
  %62 = call i32 @wiiuse_write_data(%struct.wiimote_t* %60, i32 %61, i32* %6, i32 1, i32* null)
  store i32 0, i32* %6, align 4
  %63 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %64 = load i32, i32* @WM_REG_SPEAKER_REG3, align 4
  %65 = call i32 @wiiuse_write_data(%struct.wiimote_t* %63, i32 %64, i32* %6, i32 1, i32* null)
  store i32 0, i32* %6, align 4
  %66 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %67 = load i32, i32* @WM_CMD_SPEAKER_ENABLE, align 4
  %68 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %66, i32 %67, i32* %6, i32 1, i32* null)
  %69 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %70 = call i32 @wiiuse_status(%struct.wiimote_t* %69, i32* null)
  br label %100

71:                                               ; preds = %49
  %72 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %73 = load i32, i32* @__wiiuse_speaker_defconf, align 4
  %74 = call i32 @memcpy(i32* %72, i32 %73, i32 7)
  store i32 4, i32* %6, align 4
  %75 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %76 = load i32, i32* @WM_CMD_SPEAKER_ENABLE, align 4
  %77 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %75, i32 %76, i32* %6, i32 1, i32* null)
  store i32 1, i32* %6, align 4
  %78 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %79 = load i32, i32* @WM_REG_SPEAKER_REG3, align 4
  %80 = call i32 @wiiuse_write_data(%struct.wiimote_t* %78, i32 %79, i32* %6, i32 1, i32* null)
  store i32 8, i32* %6, align 4
  %81 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %82 = load i32, i32* @WM_REG_SPEAKER_REG1, align 4
  %83 = call i32 @wiiuse_write_data(%struct.wiimote_t* %81, i32 %82, i32* %6, i32 1, i32* null)
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 2
  store i32 208, i32* %84, align 8
  %85 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 3
  store i32 7, i32* %85, align 4
  %86 = load i32, i32* @__wiiuse_speaker_vol, align 4
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 4
  store i32 %86, i32* %87, align 16
  %88 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %89 = load i32, i32* @WM_REG_SPEAKER_BLOCK, align 4
  %90 = getelementptr inbounds [7 x i32], [7 x i32]* %5, i64 0, i64 0
  %91 = call i32 @wiiuse_write_data(%struct.wiimote_t* %88, i32 %89, i32* %90, i32 7, i32* null)
  store i32 1, i32* %6, align 4
  %92 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %93 = load i32, i32* @WM_REG_SPEAKER_REG2, align 4
  %94 = call i32 @wiiuse_write_data(%struct.wiimote_t* %92, i32 %93, i32* %6, i32 1, i32* null)
  store i32 0, i32* %6, align 4
  %95 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %96 = load i32, i32* @WM_CMD_SPEAKER_MUTE, align 4
  %97 = call i32 @wiiuse_sendcmd(%struct.wiimote_t* %95, i32 %96, i32* %6, i32 1, i32* null)
  %98 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %99 = call i32 @wiiuse_status(%struct.wiimote_t* %98, i32* null)
  br label %100

100:                                              ; preds = %71, %55, %45, %36, %27, %9
  ret void
}

declare dso_local i64 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIUSE_DEBUG(i8*, ...) #1

declare dso_local i32 @WIIMOTE_ENABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @WIIMOTE_DISABLE_STATE(%struct.wiimote_t*, i32) #1

declare dso_local i32 @wiiuse_status(%struct.wiimote_t*, i32*) #1

declare dso_local i32 @wiiuse_sendcmd(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wiiuse_write_data(%struct.wiimote_t*, i32, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
