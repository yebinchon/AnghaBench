; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_handle_key_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_handle_key_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@KeyPress = common dso_local global i64 0, align 8
@ShiftMask = common dso_local global i32 0, align 4
@LockMask = common dso_local global i32 0, align 4
@XK_A = common dso_local global i64 0, align 8
@XK_Z = common dso_local global i64 0, align 8
@XK_z = common dso_local global i64 0, align 8
@RETROKMOD_SHIFT = common dso_local global i32 0, align 4
@RETROKMOD_CAPSLOCK = common dso_local global i32 0, align 4
@ControlMask = common dso_local global i32 0, align 4
@RETROKMOD_CTRL = common dso_local global i32 0, align 4
@Mod1Mask = common dso_local global i32 0, align 4
@RETROKMOD_ALT = common dso_local global i32 0, align 4
@Mod2Mask = common dso_local global i32 0, align 4
@RETROKMOD_NUMLOCK = common dso_local global i32 0, align 4
@Mod4Mask = common dso_local global i32 0, align 4
@RETROKMOD_META = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@RETROK_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*, i32, i32)* @x11_handle_key_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_handle_key_event(i32 %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [32 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KeyPress, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %29, align 16
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %36, align 16
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %41 = call i32 @XLookupString(%struct.TYPE_7__* %39, i8* %40, i32 32, i64* %17, i32* null)
  store i32 %41, i32* %16, align 4
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %57, %35
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = and i32 %51, 127
  %53 = trunc i32 %52 to i8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %55
  store i8 %53, i8* %56, align 1
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %42

60:                                               ; preds = %42
  br label %77

61:                                               ; preds = %32
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @ShiftMask, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @LockMask, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %61
  %74 = phi i1 [ true, %61 ], [ %72, %68 ]
  %75 = zext i1 %74 to i32
  %76 = call i64 @XLookupKeysym(%struct.TYPE_7__* %63, i32 %75)
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %73, %60
  br label %78

78:                                               ; preds = %77, %4
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* @XK_A, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* @XK_Z, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* @XK_z, align 8
  %88 = load i64, i64* @XK_Z, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64, i64* %17, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %17, align 8
  br label %92

92:                                               ; preds = %86, %82, %78
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @input_keymaps_translate_keysym_to_rk(i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @ShiftMask, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @RETROKMOD_SHIFT, align 4
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @LockMask, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @RETROKMOD_CAPSLOCK, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @ControlMask, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @RETROKMOD_CTRL, align 4
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @Mod1Mask, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @RETROKMOD_ALT, align 4
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %126, %121
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @Mod2Mask, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @RETROKMOD_NUMLOCK, align 4
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @Mod4Mask, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @RETROKMOD_META, align 4
  %146 = load i32, i32* %13, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %12, align 4
  %151 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %152 = load i8, i8* %151, align 16
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %155 = call i32 @input_keyboard_event(i32 %149, i32 %150, i8 signext %152, i32 %153, i32 %154)
  store i32 1, i32* %9, align 4
  br label %156

156:                                              ; preds = %170, %148
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %16, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* @RETROK_UNKNOWN, align 4
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %169 = call i32 @input_keyboard_event(i32 %161, i32 %162, i8 signext %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %9, align 4
  br label %156

173:                                              ; preds = %156
  ret void
}

declare dso_local i32 @XLookupString(%struct.TYPE_7__*, i8*, i32, i64*, i32*) #1

declare dso_local i64 @XLookupKeysym(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
