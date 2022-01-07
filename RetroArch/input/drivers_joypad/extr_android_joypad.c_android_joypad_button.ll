; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32** }

@g_android = common dso_local global i64 0, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@LAST_KEYCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @android_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_joypad_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.android_app*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @android_keyboard_state_get(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i64, i64* @g_android, align 8
  %13 = inttoptr i64 %12 to %struct.android_app*
  store %struct.android_app* %13, %struct.android_app** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_HAT_DIR(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %80

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @GET_HAT(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ugt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %92

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %79 [
    i32 130, label %31
    i32 129, label %43
    i32 128, label %55
    i32 131, label %67
  ]

31:                                               ; preds = %29
  %32 = load %struct.android_app*, %struct.android_app** %7, align 8
  %33 = getelementptr inbounds %struct.android_app, %struct.android_app* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %92

43:                                               ; preds = %29
  %44 = load %struct.android_app*, %struct.android_app** %7, align 8
  %45 = getelementptr inbounds %struct.android_app, %struct.android_app* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %92

55:                                               ; preds = %29
  %56 = load %struct.android_app*, %struct.android_app** %7, align 8
  %57 = getelementptr inbounds %struct.android_app, %struct.android_app* %56, i32 0, i32 0
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %92

67:                                               ; preds = %29
  %68 = load %struct.android_app*, %struct.android_app** %7, align 8
  %69 = getelementptr inbounds %struct.android_app, %struct.android_app* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %92

79:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %92

80:                                               ; preds = %20
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @LAST_KEYCODE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @BIT_GET(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i1 [ false, %80 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %79, %67, %55, %43, %31, %28, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32* @android_keyboard_state_get(i32) #1

declare dso_local i32 @GET_HAT_DIR(i32) #1

declare dso_local i32 @GET_HAT(i32) #1

declare dso_local i64 @BIT_GET(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
