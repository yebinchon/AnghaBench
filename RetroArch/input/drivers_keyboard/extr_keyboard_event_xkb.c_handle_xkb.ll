; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_keyboard/extr_keyboard_event_xkb.c_handle_xkb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_keyboard/extr_keyboard_event_xkb.c_handle_xkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xkb_state = common dso_local global i32 0, align 4
@XKB_KEY_UP = common dso_local global i32 0, align 4
@XKB_KEY_DOWN = common dso_local global i32 0, align 4
@MOD_MAP_SIZE = common dso_local global i32 0, align 4
@mod_map_idx = common dso_local global i32* null, align 8
@mod_map_bit = common dso_local global i32* null, align 8
@XKB_MOD_INVALID = common dso_local global i64 0, align 8
@XKB_STATE_MODS_EFFECTIVE = common dso_local global i64 0, align 8
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETROK_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_xkb(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @xkb_state, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %127

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @xkb_state, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @XKB_KEY_UP, align 4
  %25 = call i32 @xkb_state_update_key(i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @xkb_state, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @xkb_state_key_get_syms(i32 %30, i32 %31, i32** %7)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @xkb_state, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @XKB_KEY_DOWN, align 4
  %40 = call i32 @xkb_state_update_key(i32 %37, i32 %38, i32 %39)
  br label %46

41:                                               ; preds = %33
  %42 = load i32, i32* @xkb_state, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @XKB_KEY_UP, align 4
  %45 = call i32 @xkb_state_update_key(i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %127

50:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MOD_MAP_SIZE, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %51
  %56 = load i32*, i32** @mod_map_idx, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to i64*
  store i64* %60, i64** %11, align 8
  %61 = load i32*, i32** @mod_map_bit, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %12, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XKB_MOD_INVALID, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %55
  %70 = load i32, i32* @xkb_state, align 4
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @XKB_STATE_MODS_EFFECTIVE, align 8
  %74 = icmp sgt i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @xkb_state_mod_index_is_active(i32 %70, i64 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %82, %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %51

90:                                               ; preds = %51
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @input_keymaps_translate_keysym_to_rk(i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @xkb_keysym_to_utf32(i32 %99)
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %96
  %103 = phi i32 [ %100, %96 ], [ 0, %101 ]
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %106 = call i32 @input_keyboard_event(i32 %91, i32 %93, i32 %103, i32 %104, i32 %105)
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %123, %102
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @RETROK_UNKNOWN, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %6, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @xkb_keysym_to_utf32(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %122 = call i32 @input_keyboard_event(i32 %112, i32 %113, i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %107

126:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %49, %17
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @xkb_state_update_key(i32, i32, i32) #1

declare dso_local i32 @xkb_state_key_get_syms(i32, i32, i32**) #1

declare dso_local i64 @xkb_state_mod_index_is_active(i32, i64, i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i32) #1

declare dso_local i32 @xkb_keysym_to_utf32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
