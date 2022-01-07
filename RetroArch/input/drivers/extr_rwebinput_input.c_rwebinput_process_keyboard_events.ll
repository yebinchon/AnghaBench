; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_process_keyboard_events.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_rwebinput_input.c_rwebinput_process_keyboard_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64, i64, i64, i64, i64 }

@EMSCRIPTEN_EVENT_KEYDOWN = common dso_local global i64 0, align 8
@RETROKMOD_CTRL = common dso_local global i32 0, align 4
@RETROKMOD_ALT = common dso_local global i32 0, align 4
@RETROKMOD_SHIFT = common dso_local global i32 0, align 4
@RETROKMOD_META = common dso_local global i32 0, align 4
@RETROK_BACKSPACE = common dso_local global i32 0, align 4
@RETROK_RETURN = common dso_local global i32 0, align 4
@RETROK_KP_ENTER = common dso_local global i32 0, align 4
@RETROK_TAB = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETROK_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_6__*)* @rwebinput_process_keyboard_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwebinput_process_keyboard_events(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i8 0, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EMSCRIPTEN_EVENT_KEYDOWN, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @utf8len(i8* %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %11, align 8
  %30 = call signext i8 @utf8_walk(i8** %11)
  store i8 %30, i8* %7, align 1
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @RETROKMOD_CTRL, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @RETROKMOD_ALT, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @RETROKMOD_SHIFT, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @RETROKMOD_META, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @strnlen(i64 %74, i32 8)
  %76 = call signext i8 @encoding_crc32(i32 0, i32* %71, i32 %75)
  store i8 %76, i8* %5, align 1
  %77 = load i8, i8* %5, align 1
  %78 = call i32 @input_keymaps_translate_keysym_to_rk(i8 signext %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @RETROK_BACKSPACE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %67
  store i8 8, i8* %7, align 1
  br label %99

83:                                               ; preds = %67
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RETROK_RETURN, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @RETROK_KP_ENTER, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %83
  store i8 10, i8* %7, align 1
  br label %98

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @RETROK_TAB, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i8 9, i8* %7, align 1
  br label %97

97:                                               ; preds = %96, %92
  br label %98

98:                                               ; preds = %97, %91
  br label %99

99:                                               ; preds = %98, %82
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i8, i8* %7, align 1
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %105 = call i32 @input_keyboard_event(i32 %100, i32 %101, i8 signext %102, i32 %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @RETROK_LAST, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  br label %117

117:                                              ; preds = %109, %99
  ret void
}

declare dso_local i32 @utf8len(i8*) #1

declare dso_local signext i8 @utf8_walk(i8**) #1

declare dso_local signext i8 @encoding_crc32(i32, i32*, i32) #1

declare dso_local i32 @strnlen(i64, i32) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i8 signext) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
