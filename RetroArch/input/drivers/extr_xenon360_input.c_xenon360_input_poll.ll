; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_xenon360_input.c_xenon360_input_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_xenon360_input.c_xenon360_input_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller_data_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@state = common dso_local global i32* null, align 8
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xenon360_input_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenon360_input_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller_data_s, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %151, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %154

11:                                               ; preds = %7
  %12 = call i32 (...) @usb_do_poll()
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @get_controller_data(%struct.controller_data_s* %4, i32 %13)
  %15 = load i32*, i32** @state, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %5, align 8
  %19 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 11
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  br label %25

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 10
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  br label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ]
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  br label %47

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  br label %69

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  br label %91

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  br label %113

112:                                              ; preds = %102
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  br label %124

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L, align 4
  br label %135

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 0, %134 ]
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = getelementptr inbounds %struct.controller_data_s, %struct.controller_data_s* %4, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R, align 4
  br label %146

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 0, %145 ]
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %3, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %7

154:                                              ; preds = %7
  ret void
}

declare dso_local i32 @usb_do_poll(...) #1

declare dso_local i32 @get_controller_data(%struct.controller_data_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
