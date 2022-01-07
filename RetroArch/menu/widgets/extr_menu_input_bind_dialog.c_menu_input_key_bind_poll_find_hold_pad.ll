; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_hold_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_input_bind_dialog.c_menu_input_key_bind_poll_find_hold_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_bind_state = type { i32* }
%struct.retro_keybind = type { i32, i32, i8* }
%struct.menu_bind_state_port = type { i32*, i32*, i64*, i32* }

@MENU_MAX_MBUTTONS = common dso_local global i32 0, align 4
@MENU_MAX_BUTTONS = common dso_local global i32 0, align 4
@AXIS_NONE = common dso_local global i8* null, align 8
@MENU_MAX_AXES = common dso_local global i32 0, align 4
@NO_BTN = common dso_local global i32 0, align 4
@MENU_MAX_HATS = common dso_local global i32 0, align 4
@HAT_UP_MASK = common dso_local global i32 0, align 4
@HAT_DOWN_MASK = common dso_local global i32 0, align 4
@HAT_LEFT_MASK = common dso_local global i32 0, align 4
@HAT_RIGHT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu_bind_state*, %struct.retro_keybind*, i32)* @menu_input_key_bind_poll_find_hold_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_input_key_bind_poll_find_hold_pad(%struct.menu_bind_state* %0, %struct.retro_keybind* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.menu_bind_state*, align 8
  %6 = alloca %struct.retro_keybind*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.menu_bind_state_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.menu_bind_state* %0, %struct.menu_bind_state** %5, align 8
  store %struct.retro_keybind* %1, %struct.retro_keybind** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.menu_bind_state*, %struct.menu_bind_state** %5, align 8
  %17 = getelementptr inbounds %struct.menu_bind_state, %struct.menu_bind_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = bitcast i32* %21 to %struct.menu_bind_state_port*
  store %struct.menu_bind_state_port* %22, %struct.menu_bind_state_port** %11, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %45, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MENU_MAX_MBUTTONS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %11, align 8
  %29 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %45

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %44 [
    i32 132, label %40
    i32 130, label %40
    i32 131, label %40
    i32 136, label %40
    i32 135, label %40
    i32 128, label %40
    i32 129, label %40
    i32 133, label %40
    i32 134, label %40
  ]

40:                                               ; preds = %38, %38, %38, %38, %38, %38, %38, %38, %38
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %43 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  store i32 1, i32* %4, align 4
  br label %175

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %23

48:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MENU_MAX_BUTTONS, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %11, align 8
  %55 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %71

64:                                               ; preds = %53
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %67 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** @AXIS_NONE, align 8
  %69 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %70 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  store i32 1, i32* %4, align 4
  br label %175

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %49

74:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %112, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MENU_MAX_AXES, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %115

79:                                               ; preds = %75
  %80 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %11, align 8
  %81 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @abs(i64 %86)
  %88 = icmp sge i32 %87, 20000
  br i1 %88, label %89, label %111

89:                                               ; preds = %79
  %90 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %11, align 8
  %91 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  %100 = call i8* @AXIS_POS(i32 %99)
  br label %104

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = call i8* @AXIS_NEG(i32 %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i8* [ %100, %98 ], [ %103, %101 ]
  %106 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %107 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @NO_BTN, align 4
  %109 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %110 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %4, align 4
  br label %175

111:                                              ; preds = %79
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %75

115:                                              ; preds = %75
  store i32 0, i32* %10, align 4
  br label %116

116:                                              ; preds = %171, %115
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* @MENU_MAX_HATS, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %174

120:                                              ; preds = %116
  %121 = load %struct.menu_bind_state_port*, %struct.menu_bind_state_port** %11, align 8
  %122 = getelementptr inbounds %struct.menu_bind_state_port, %struct.menu_bind_state_port* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @HAT_UP_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = load i32, i32* @HAT_UP_MASK, align 4
  store i32 %133, i32* %15, align 4
  br label %158

134:                                              ; preds = %120
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @HAT_DOWN_MASK, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = load i32, i32* @HAT_DOWN_MASK, align 4
  store i32 %140, i32* %15, align 4
  br label %157

141:                                              ; preds = %134
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @HAT_LEFT_MASK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @HAT_LEFT_MASK, align 4
  store i32 %147, i32* %15, align 4
  br label %156

148:                                              ; preds = %141
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* @HAT_RIGHT_MASK, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* @HAT_RIGHT_MASK, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %148
  br label %156

156:                                              ; preds = %155, %146
  br label %157

157:                                              ; preds = %156, %139
  br label %158

158:                                              ; preds = %157, %132
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @HAT_MAP(i32 %162, i32 %163)
  %165 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %166 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i8*, i8** @AXIS_NONE, align 8
  %168 = load %struct.retro_keybind*, %struct.retro_keybind** %6, align 8
  %169 = getelementptr inbounds %struct.retro_keybind, %struct.retro_keybind* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  store i32 1, i32* %4, align 4
  br label %175

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %10, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %10, align 4
  br label %116

174:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %174, %161, %104, %64, %40
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @abs(i64) #1

declare dso_local i8* @AXIS_POS(i32) #1

declare dso_local i8* @AXIS_NEG(i32) #1

declare dso_local i32 @HAT_MAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
