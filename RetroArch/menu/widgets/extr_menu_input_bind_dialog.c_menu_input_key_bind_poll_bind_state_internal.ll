; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_state_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_bind_state_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (...)* }
%struct.menu_bind_state = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32*, i32* }

@MENU_MAX_BUTTONS = common dso_local global i32 0, align 4
@MENU_MAX_AXES = common dso_local global i32 0, align 4
@MENU_MAX_HATS = common dso_local global i32 0, align 4
@HAT_UP_MASK = common dso_local global i32 0, align 4
@HAT_DOWN_MASK = common dso_local global i32 0, align 4
@HAT_LEFT_MASK = common dso_local global i32 0, align 4
@HAT_RIGHT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.menu_bind_state*, i32, i32)* @menu_input_key_bind_poll_bind_state_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_key_bind_poll_bind_state_internal(%struct.TYPE_8__* %0, %struct.menu_bind_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.menu_bind_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.menu_bind_state* %1, %struct.menu_bind_state** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %170

15:                                               ; preds = %4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = icmp ne i32 (...)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  br label %25

25:                                               ; preds = %20, %15
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MENU_MAX_BUTTONS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @input_joypad_button_raw(%struct.TYPE_8__* %31, i32 %32, i32 %33)
  %35 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %36 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %34, i32* %45, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MENU_MAX_AXES, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @input_joypad_axis_raw(%struct.TYPE_8__* %55, i32 %56, i32 %57)
  %59 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %60 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %58, i32* %69, align 4
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %10, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %50

73:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %167, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @MENU_MAX_HATS, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %170

78:                                               ; preds = %74
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @HAT_UP_MASK, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @input_joypad_hat_raw(%struct.TYPE_8__* %79, i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78
  %86 = load i32, i32* @HAT_UP_MASK, align 4
  %87 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %88 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %86
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %85, %78
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @HAT_DOWN_MASK, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @input_joypad_hat_raw(%struct.TYPE_8__* %101, i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load i32, i32* @HAT_DOWN_MASK, align 4
  %109 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %110 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %108
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %107, %100
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @HAT_LEFT_MASK, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i64 @input_joypad_hat_raw(%struct.TYPE_8__* %123, i32 %124, i32 %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %144

129:                                              ; preds = %122
  %130 = load i32, i32* @HAT_LEFT_MASK, align 4
  %131 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %132 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %130
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %129, %122
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @HAT_RIGHT_MASK, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i64 @input_joypad_hat_raw(%struct.TYPE_8__* %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load i32, i32* @HAT_RIGHT_MASK, align 4
  %153 = load %struct.menu_bind_state*, %struct.menu_bind_state** %6, align 8
  %154 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %153, i32 0, i32 0
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %152
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %151, %144
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %74

170:                                              ; preds = %14, %74
  ret void
}

declare dso_local i32 @input_joypad_button_raw(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @input_joypad_axis_raw(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @input_joypad_hat_raw(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
