; ModuleID = '/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_get_buttons.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/connect/extr_connect_ps4.c_hidpad_ps4_get_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpad_ps4_data = type { i32 }
%struct.ps4 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@RETRO_DEVICE_ID_JOYPAD_R3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L3 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_START = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_SELECT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L2 = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_R = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_L = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_X = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_A = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_B = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_Y = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_LEFT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_DOWN = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_RIGHT = common dso_local global i32 0, align 4
@RETRO_DEVICE_ID_JOYPAD_UP = common dso_local global i32 0, align 4
@RARCH_MENU_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @hidpad_ps4_get_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpad_ps4_get_buttons(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hidpad_ps4_data*, align 8
  %6 = alloca %struct.ps4*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.hidpad_ps4_data*
  store %struct.hidpad_ps4_data* %8, %struct.hidpad_ps4_data** %5, align 8
  %9 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %5, align 8
  %10 = icmp ne %struct.hidpad_ps4_data* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %5, align 8
  %13 = getelementptr inbounds %struct.hidpad_ps4_data, %struct.hidpad_ps4_data* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.ps4*
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.ps4* [ %14, %11 ], [ null, %15 ]
  store %struct.ps4* %17, %struct.ps4** %6, align 8
  %18 = load %struct.hidpad_ps4_data*, %struct.hidpad_ps4_data** %5, align 8
  %19 = icmp ne %struct.hidpad_ps4_data* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.ps4*, %struct.ps4** %6, align 8
  %22 = icmp ne %struct.ps4* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %16
  br label %192

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @BIT256_CLEAR_ALL_PTR(i32* %25)
  %27 = load %struct.ps4*, %struct.ps4** %6, align 8
  %28 = getelementptr inbounds %struct.ps4, %struct.ps4* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 12
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R3, align 4
  %35 = call i32 @BIT256_SET_PTR(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.ps4*, %struct.ps4** %6, align 8
  %38 = getelementptr inbounds %struct.ps4, %struct.ps4* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L3, align 4
  %45 = call i32 @BIT256_SET_PTR(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.ps4*, %struct.ps4** %6, align 8
  %48 = getelementptr inbounds %struct.ps4, %struct.ps4* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_START, align 4
  %55 = call i32 @BIT256_SET_PTR(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.ps4*, %struct.ps4** %6, align 8
  %58 = getelementptr inbounds %struct.ps4, %struct.ps4* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_SELECT, align 4
  %65 = call i32 @BIT256_SET_PTR(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.ps4*, %struct.ps4** %6, align 8
  %68 = getelementptr inbounds %struct.ps4, %struct.ps4* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R2, align 4
  %75 = call i32 @BIT256_SET_PTR(i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.ps4*, %struct.ps4** %6, align 8
  %78 = getelementptr inbounds %struct.ps4, %struct.ps4* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32*, i32** %4, align 8
  %84 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L2, align 4
  %85 = call i32 @BIT256_SET_PTR(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.ps4*, %struct.ps4** %6, align 8
  %88 = getelementptr inbounds %struct.ps4, %struct.ps4* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_R, align 4
  %95 = call i32 @BIT256_SET_PTR(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.ps4*, %struct.ps4** %6, align 8
  %98 = getelementptr inbounds %struct.ps4, %struct.ps4* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_L, align 4
  %105 = call i32 @BIT256_SET_PTR(i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load %struct.ps4*, %struct.ps4** %6, align 8
  %108 = getelementptr inbounds %struct.ps4, %struct.ps4* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_X, align 4
  %115 = call i32 @BIT256_SET_PTR(i32* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.ps4*, %struct.ps4** %6, align 8
  %118 = getelementptr inbounds %struct.ps4, %struct.ps4* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_A, align 4
  %125 = call i32 @BIT256_SET_PTR(i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.ps4*, %struct.ps4** %6, align 8
  %128 = getelementptr inbounds %struct.ps4, %struct.ps4* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_B, align 4
  %135 = call i32 @BIT256_SET_PTR(i32* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %126
  %137 = load %struct.ps4*, %struct.ps4** %6, align 8
  %138 = getelementptr inbounds %struct.ps4, %struct.ps4* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_Y, align 4
  %145 = call i32 @BIT256_SET_PTR(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %142, %136
  %147 = load %struct.ps4*, %struct.ps4** %6, align 8
  %148 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %149 = call i64 @hidpad_ps4_check_dpad(%struct.ps4* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_LEFT, align 4
  %154 = call i32 @BIT256_SET_PTR(i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %146
  %156 = load %struct.ps4*, %struct.ps4** %6, align 8
  %157 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %158 = call i64 @hidpad_ps4_check_dpad(%struct.ps4* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_DOWN, align 4
  %163 = call i32 @BIT256_SET_PTR(i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %155
  %165 = load %struct.ps4*, %struct.ps4** %6, align 8
  %166 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %167 = call i64 @hidpad_ps4_check_dpad(%struct.ps4* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_RIGHT, align 4
  %172 = call i32 @BIT256_SET_PTR(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %164
  %174 = load %struct.ps4*, %struct.ps4** %6, align 8
  %175 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %176 = call i64 @hidpad_ps4_check_dpad(%struct.ps4* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* @RETRO_DEVICE_ID_JOYPAD_UP, align 4
  %181 = call i32 @BIT256_SET_PTR(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %173
  %183 = load %struct.ps4*, %struct.ps4** %6, align 8
  %184 = getelementptr inbounds %struct.ps4, %struct.ps4* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load i32*, i32** %4, align 8
  %190 = load i32, i32* @RARCH_MENU_TOGGLE, align 4
  %191 = call i32 @BIT256_SET_PTR(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %23, %188, %182
  ret void
}

declare dso_local i32 @BIT256_CLEAR_ALL_PTR(i32*) #1

declare dso_local i32 @BIT256_SET_PTR(i32*, i32) #1

declare dso_local i64 @hidpad_ps4_check_dpad(%struct.ps4*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
