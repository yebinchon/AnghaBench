; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c_KEYBOARD_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c_KEYBOARD_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.stat = type { i64 }

@IPC_OK = common dso_local global i64 0, align 8
@_ukbd_keymapdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@KB_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"/wiikbd.map\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@KB_DE = common dso_local global i64 0, align 8
@KB_JP = common dso_local global i64 0, align 8
@KB_FR = common dso_local global i64 0, align 8
@KB_ES = common dso_local global i64 0, align 8
@KB_IT = common dso_local global i64 0, align 8
@KB_NL = common dso_local global i64 0, align 8
@KB_US = common dso_local global i64 0, align 8
@_sc_map = common dso_local global i32 0, align 4
@_sc_maplen = common dso_local global i32 0, align 4
@_queue = common dso_local global i32 0, align 4
@_kbd_thread_running = common dso_local global i32 0, align 4
@_kbd_thread_quit = common dso_local global i32 0, align 4
@_kbd_stack = common dso_local global i32 0, align 4
@KBD_THREAD_STACKSIZE = common dso_local global i32 0, align 4
@_kbd_thread = common dso_local global i32 0, align 4
@_kbd_thread_func = common dso_local global i32 0, align 4
@KBD_THREAD_PRIO = common dso_local global i32 0, align 4
@_keyBuffer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@_kbd_buf_thread = common dso_local global i32 0, align 4
@_kbd_buf_thread_func = common dso_local global i32 0, align 4
@_kbd_buf_stack = common dso_local global i32 0, align 4
@std_in = common dso_local global i32 0, align 4
@devoptab_list = common dso_local global i32** null, align 8
@STD_IN = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@_readKey_cb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KEYBOARD_Init(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = call i64 (...) @USB_Initialize()
  %10 = load i64, i64* @IPC_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %152

13:                                               ; preds = %1
  %14 = call i64 (...) @USBKeyboard_Initialize()
  %15 = load i64, i64* @IPC_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -2, i32* %2, align 4
  br label %152

18:                                               ; preds = %13
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  %20 = load i64, i64* @KB_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %81

22:                                               ; preds = %18
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %23, align 16
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @fstat(i32 %29, %struct.stat* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 64
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @read(i32 %43, i8* %44, i64 %46)
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 63
  store i8 0, i8* %50, align 1
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %71, %49
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %52, 64
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 45
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i64 @isalpha(i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 %68
  store i8 0, i8* %69, align 1
  br label %74

70:                                               ; preds = %60, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %51

74:                                               ; preds = %67, %51
  br label %75

75:                                               ; preds = %74, %40, %36, %32
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %75, %28, %22
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %80 = call i64 @_get_keymap_by_name(i8* %79)
  store i64 %80, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %81

81:                                               ; preds = %78, %18
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  %83 = load i64, i64* @KB_NONE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = call i32 (...) @CONF_GetLanguage()
  switch i32 %86, label %100 [
    i32 134, label %87
    i32 132, label %89
    i32 135, label %91
    i32 129, label %93
    i32 133, label %95
    i32 136, label %97
    i32 130, label %99
    i32 128, label %99
    i32 131, label %99
  ]

87:                                               ; preds = %85
  %88 = load i64, i64* @KB_DE, align 8
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

89:                                               ; preds = %85
  %90 = load i64, i64* @KB_JP, align 8
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

91:                                               ; preds = %85
  %92 = load i64, i64* @KB_FR, align 8
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

93:                                               ; preds = %85
  %94 = load i64, i64* @KB_ES, align 8
  store i64 %94, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

95:                                               ; preds = %85
  %96 = load i64, i64* @KB_IT, align 8
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

97:                                               ; preds = %85
  %98 = load i64, i64* @KB_NL, align 8
  store i64 %98, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

99:                                               ; preds = %85, %85, %85
  br label %100

100:                                              ; preds = %85, %99
  %101 = load i64, i64* @KB_US, align 8
  store i64 %101, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  br label %102

102:                                              ; preds = %100, %97, %95, %93, %91, %89, %87
  br label %103

103:                                              ; preds = %102, %81
  %104 = call i64 @wskbd_load_keymap(%struct.TYPE_4__* @_ukbd_keymapdata, i32* @_sc_map, i32* @_sc_maplen)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64, i64* @KB_NONE, align 8
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_ukbd_keymapdata, i32 0, i32 0), align 8
  store i32 -4, i32* %2, align 4
  br label %152

108:                                              ; preds = %103
  %109 = call i32 @__lwp_queue_init_empty(i32* @_queue)
  %110 = load i32, i32* @_kbd_thread_running, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %151, label %112

112:                                              ; preds = %108
  store i32 0, i32* @_kbd_thread_quit, align 4
  %113 = load i32, i32* @_kbd_stack, align 4
  %114 = load i32, i32* @KBD_THREAD_STACKSIZE, align 4
  %115 = call i32 @memset(i32 %113, i32 0, i32 %114)
  %116 = load i32, i32* @_kbd_thread_func, align 4
  %117 = load i32, i32* @_kbd_stack, align 4
  %118 = load i32, i32* @KBD_THREAD_STACKSIZE, align 4
  %119 = load i32, i32* @KBD_THREAD_PRIO, align 4
  %120 = call i32 @LWP_CreateThread(i32* @_kbd_thread, i32 %116, i32* null, i32 %117, i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %112
  %124 = call i32 (...) @USBKeyboard_Close()
  store i32 -6, i32* %2, align 4
  br label %152

125:                                              ; preds = %112
  %126 = load i64, i64* %3, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @_keyBuffer, i32 0, i32 0), align 8
  %129 = load i32, i32* @_kbd_buf_thread_func, align 4
  %130 = load i32, i32* @_kbd_buf_stack, align 4
  %131 = load i32, i32* @KBD_THREAD_STACKSIZE, align 4
  %132 = load i32, i32* @KBD_THREAD_PRIO, align 4
  %133 = call i32 @LWP_CreateThread(i32* @_kbd_buf_thread, i32 %129, i32* null, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  store i32 1, i32* @_kbd_thread_quit, align 4
  %137 = load i32, i32* @_kbd_thread, align 4
  %138 = call i32 @LWP_JoinThread(i32 %137, i32* null)
  %139 = call i32 (...) @USBKeyboard_Close()
  %140 = call i32 (...) @KEYBOARD_FlushEvents()
  %141 = call i32 (...) @USBKeyboard_Deinitialize()
  store i32 0, i32* @_kbd_thread_running, align 4
  store i32 -6, i32* %2, align 4
  br label %152

142:                                              ; preds = %128
  %143 = load i32**, i32*** @devoptab_list, align 8
  %144 = load i64, i64* @STD_IN, align 8
  %145 = getelementptr inbounds i32*, i32** %143, i64 %144
  store i32* @std_in, i32** %145, align 8
  %146 = load i32, i32* @stdin, align 4
  %147 = load i32, i32* @_IONBF, align 4
  %148 = call i32 @setvbuf(i32 %146, i32* null, i32 %147, i32 0)
  %149 = load i64, i64* %3, align 8
  store i64 %149, i64* @_readKey_cb, align 8
  br label %150

150:                                              ; preds = %142, %125
  store i32 1, i32* @_kbd_thread_running, align 4
  br label %151

151:                                              ; preds = %150, %108
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %136, %123, %106, %17, %12
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i64 @USB_Initialize(...) #1

declare dso_local i64 @USBKeyboard_Initialize(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @_get_keymap_by_name(i8*) #1

declare dso_local i32 @CONF_GetLanguage(...) #1

declare dso_local i64 @wskbd_load_keymap(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @LWP_CreateThread(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @USBKeyboard_Close(...) #1

declare dso_local i32 @LWP_JoinThread(i32, i32*) #1

declare dso_local i32 @KEYBOARD_FlushEvents(...) #1

declare dso_local i32 @USBKeyboard_Deinitialize(...) #1

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
