; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_appearance_to_cod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_appearance_to_cod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTM_COD_MAJOR_PHONE = common dso_local global i64 0, align 8
@BTM_COD_MINOR_UNCLASSIFIED = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_COMPUTER = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_PERIPHERAL = common dso_local global i64 0, align 8
@BTM_COD_MINOR_REMOTE_CONTROL = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_HEALTH = common dso_local global i64 0, align 8
@BTM_COD_MINOR_THERMOMETER = common dso_local global i64 0, align 8
@BTM_COD_MINOR_HEART_PULSE_MONITOR = common dso_local global i64 0, align 8
@BTM_COD_MINOR_BLOOD_MONITOR = common dso_local global i64 0, align 8
@BTM_COD_MINOR_PULSE_OXIMETER = common dso_local global i64 0, align 8
@BTM_COD_MINOR_GLUCOSE_METER = common dso_local global i64 0, align 8
@BTM_COD_MINOR_WEIGHING_SCALE = common dso_local global i64 0, align 8
@BTM_COD_MINOR_STEP_COUNTER = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_WEARABLE = common dso_local global i64 0, align 8
@BTM_COD_MINOR_WRIST_WATCH = common dso_local global i64 0, align 8
@BTM_COD_MINOR_GLASSES = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_IMAGING = common dso_local global i64 0, align 8
@BTM_COD_MINOR_DISPLAY = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_AUDIO = common dso_local global i64 0, align 8
@BTM_COD_MINOR_KEYBOARD = common dso_local global i64 0, align 8
@BTM_COD_MINOR_POINTING = common dso_local global i64 0, align 8
@BTM_COD_MINOR_JOYSTICK = common dso_local global i64 0, align 8
@BTM_COD_MINOR_GAMEPAD = common dso_local global i64 0, align 8
@BTM_COD_MINOR_DIGITIZING_TABLET = common dso_local global i64 0, align 8
@BTM_COD_MINOR_CARD_READER = common dso_local global i64 0, align 8
@BTM_COD_MINOR_DIGITAL_PAN = common dso_local global i64 0, align 8
@BTM_COD_MAJOR_UNCLASSIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @btm_ble_appearance_to_cod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btm_ble_appearance_to_cod(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %163 [
    i32 156, label %8
    i32 166, label %15
    i32 154, label %22
    i32 152, label %29
    i32 132, label %29
    i32 161, label %36
    i32 148, label %36
    i32 168, label %43
    i32 176, label %43
    i32 175, label %43
    i32 155, label %50
    i32 135, label %50
    i32 134, label %50
    i32 162, label %57
    i32 149, label %64
    i32 151, label %71
    i32 130, label %71
    i32 128, label %71
    i32 129, label %71
    i32 150, label %78
    i32 133, label %78
    i32 163, label %85
    i32 164, label %92
    i32 158, label %99
    i32 169, label %106
    i32 147, label %106
    i32 160, label %106
    i32 141, label %113
    i32 140, label %120
    i32 142, label %127
    i32 143, label %134
    i32 144, label %141
    i32 146, label %148
    i32 145, label %155
    i32 131, label %162
    i32 167, label %162
    i32 153, label %162
    i32 159, label %162
    i32 165, label %162
    i32 173, label %162
    i32 171, label %162
    i32 174, label %162
    i32 172, label %162
    i32 170, label %162
    i32 157, label %162
    i32 139, label %162
    i32 138, label %162
    i32 137, label %162
    i32 136, label %162
  ]

8:                                                ; preds = %2
  %9 = load i64, i64* @BTM_COD_MAJOR_PHONE, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  store i64 %9, i64* %11, align 8
  %12 = load i64, i64* @BTM_COD_MINOR_UNCLASSIFIED, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 2
  store i64 %12, i64* %14, align 8
  br label %170

15:                                               ; preds = %2
  %16 = load i64, i64* @BTM_COD_MAJOR_COMPUTER, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* @BTM_COD_MINOR_UNCLASSIFIED, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  store i64 %19, i64* %21, align 8
  br label %170

22:                                               ; preds = %2
  %23 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* @BTM_COD_MINOR_REMOTE_CONTROL, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  store i64 %26, i64* %28, align 8
  br label %170

29:                                               ; preds = %2, %2
  %30 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* @BTM_COD_MINOR_THERMOMETER, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  store i64 %33, i64* %35, align 8
  br label %170

36:                                               ; preds = %2, %2
  %37 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* @BTM_COD_MINOR_HEART_PULSE_MONITOR, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  store i64 %40, i64* %42, align 8
  br label %170

43:                                               ; preds = %2, %2, %2
  %44 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* @BTM_COD_MINOR_BLOOD_MONITOR, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %47, i64* %49, align 8
  br label %170

50:                                               ; preds = %2, %2, %2
  %51 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* @BTM_COD_MINOR_PULSE_OXIMETER, align 8
  %55 = load i64*, i64** %4, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  store i64 %54, i64* %56, align 8
  br label %170

57:                                               ; preds = %2
  %58 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @BTM_COD_MINOR_GLUCOSE_METER, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 %61, i64* %63, align 8
  br label %170

64:                                               ; preds = %2
  %65 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %66 = load i64*, i64** %4, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* @BTM_COD_MINOR_WEIGHING_SCALE, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 2
  store i64 %68, i64* %70, align 8
  br label %170

71:                                               ; preds = %2, %2, %2, %2
  %72 = load i64, i64* @BTM_COD_MAJOR_HEALTH, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* @BTM_COD_MINOR_STEP_COUNTER, align 8
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 2
  store i64 %75, i64* %77, align 8
  br label %170

78:                                               ; preds = %2, %2
  %79 = load i64, i64* @BTM_COD_MAJOR_WEARABLE, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* @BTM_COD_MINOR_WRIST_WATCH, align 8
  %83 = load i64*, i64** %4, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  store i64 %82, i64* %84, align 8
  br label %170

85:                                               ; preds = %2
  %86 = load i64, i64* @BTM_COD_MAJOR_WEARABLE, align 8
  %87 = load i64*, i64** %4, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* @BTM_COD_MINOR_GLASSES, align 8
  %90 = load i64*, i64** %4, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 2
  store i64 %89, i64* %91, align 8
  br label %170

92:                                               ; preds = %2
  %93 = load i64, i64* @BTM_COD_MAJOR_IMAGING, align 8
  %94 = load i64*, i64** %4, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* @BTM_COD_MINOR_DISPLAY, align 8
  %97 = load i64*, i64** %4, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  store i64 %96, i64* %98, align 8
  br label %170

99:                                               ; preds = %2
  %100 = load i64, i64* @BTM_COD_MAJOR_AUDIO, align 8
  %101 = load i64*, i64** %4, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* @BTM_COD_MINOR_UNCLASSIFIED, align 8
  %104 = load i64*, i64** %4, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  store i64 %103, i64* %105, align 8
  br label %170

106:                                              ; preds = %2, %2, %2
  %107 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %108 = load i64*, i64** %4, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 1
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* @BTM_COD_MINOR_UNCLASSIFIED, align 8
  %111 = load i64*, i64** %4, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  store i64 %110, i64* %112, align 8
  br label %170

113:                                              ; preds = %2
  %114 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %115 = load i64*, i64** %4, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* @BTM_COD_MINOR_KEYBOARD, align 8
  %118 = load i64*, i64** %4, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 2
  store i64 %117, i64* %119, align 8
  br label %170

120:                                              ; preds = %2
  %121 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %122 = load i64*, i64** %4, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 1
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* @BTM_COD_MINOR_POINTING, align 8
  %125 = load i64*, i64** %4, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 2
  store i64 %124, i64* %126, align 8
  br label %170

127:                                              ; preds = %2
  %128 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %129 = load i64*, i64** %4, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* @BTM_COD_MINOR_JOYSTICK, align 8
  %132 = load i64*, i64** %4, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 2
  store i64 %131, i64* %133, align 8
  br label %170

134:                                              ; preds = %2
  %135 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %136 = load i64*, i64** %4, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* @BTM_COD_MINOR_GAMEPAD, align 8
  %139 = load i64*, i64** %4, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  store i64 %138, i64* %140, align 8
  br label %170

141:                                              ; preds = %2
  %142 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %143 = load i64*, i64** %4, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  store i64 %142, i64* %144, align 8
  %145 = load i64, i64* @BTM_COD_MINOR_DIGITIZING_TABLET, align 8
  %146 = load i64*, i64** %4, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64 %145, i64* %147, align 8
  br label %170

148:                                              ; preds = %2
  %149 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %150 = load i64*, i64** %4, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* @BTM_COD_MINOR_CARD_READER, align 8
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 2
  store i64 %152, i64* %154, align 8
  br label %170

155:                                              ; preds = %2
  %156 = load i64, i64* @BTM_COD_MAJOR_PERIPHERAL, align 8
  %157 = load i64*, i64** %4, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 1
  store i64 %156, i64* %158, align 8
  %159 = load i64, i64* @BTM_COD_MINOR_DIGITAL_PAN, align 8
  %160 = load i64*, i64** %4, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 2
  store i64 %159, i64* %161, align 8
  br label %170

162:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %163

163:                                              ; preds = %2, %162
  %164 = load i64, i64* @BTM_COD_MAJOR_UNCLASSIFIED, align 8
  %165 = load i64*, i64** %4, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* @BTM_COD_MINOR_UNCLASSIFIED, align 8
  %168 = load i64*, i64** %4, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 2
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %163, %155, %148, %141, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
