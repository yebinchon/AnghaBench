; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dinput_joypad.c_dinput_create_rumble_effects.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dinput_joypad.c_dinput_create_rumble_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_joypad_data = type { i32*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@DIJOFS_X = common dso_local global i32 0, align 4
@DIEB_NOTRIGGER = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@DIEFF_CARTESIAN = common dso_local global i32 0, align 4
@DIEFF_OBJECTOFFSETS = common dso_local global i32 0, align 4
@GUID_ConstantForce = common dso_local global i32******** null, align 8
@DI_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"[DINPUT]: Strong rumble unavailable.\0A\00", align 1
@DIJOFS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"[DINPUT]: Weak rumble unavailable.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dinput_joypad_data*)* @dinput_create_rumble_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_create_rumble_effects(%struct.dinput_joypad_data* %0) #0 {
  %2 = alloca %struct.dinput_joypad_data*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dinput_joypad_data* %0, %struct.dinput_joypad_data** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @DIJOFS_X, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 24, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 5000, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 250000, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i32 250000, i32* %13, align 4
  %14 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %15 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @DIEB_NOTRIGGER, align 4
  %18 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %19 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 12
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %22 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 11
  store i64 0, i64* %23, align 8
  %24 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %25 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 8, i32* %26, align 4
  %27 = load i32, i32* @INFINITE, align 4
  %28 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %29 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @DIEFF_CARTESIAN, align 4
  %32 = load i32, i32* @DIEFF_OBJECTOFFSETS, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %35 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %38 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  store i64 0, i64* %39, align 8
  %40 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %41 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 4, i32* %42, align 4
  %43 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %44 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %47 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 7
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %50 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %53 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store i32* %6, i32** %54, align 8
  %55 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %56 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32* %5, i32** %57, align 8
  %58 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %59 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %62 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %61, i32 0, i32 1
  %63 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %64 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i64 @IDirectInputDevice8_CreateEffect(i32 %60, i32********* @GUID_ConstantForce, %struct.TYPE_6__* %62, i32* %66, i32* null)
  %68 = load i64, i64* @DI_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %1
  %71 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %1
  %73 = load i32, i32* @DIJOFS_Y, align 4
  store i32 %73, i32* %6, align 4
  %74 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %75 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %78 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %77, i32 0, i32 1
  %79 = load %struct.dinput_joypad_data*, %struct.dinput_joypad_data** %2, align 8
  %80 = getelementptr inbounds %struct.dinput_joypad_data, %struct.dinput_joypad_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = call i64 @IDirectInputDevice8_CreateEffect(i32 %76, i32********* @GUID_ConstantForce, %struct.TYPE_6__* %78, i32* %82, i32* null)
  %84 = load i64, i64* @DI_OK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %72
  %87 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %72
  ret void
}

declare dso_local i64 @IDirectInputDevice8_CreateEffect(i32, i32*********, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
