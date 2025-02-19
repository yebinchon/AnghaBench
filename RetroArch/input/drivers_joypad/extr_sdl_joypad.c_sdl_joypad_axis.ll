; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_sdl_joypad.c_sdl_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_sdl_joypad.c_sdl_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@AXIS_NONE = common dso_local global i64 0, align 8
@sdl_pads = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @sdl_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_joypad_axis(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @AXIS_NONE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

12:                                               ; preds = %2
  %13 = load i32*, i32** @sdl_pads, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = bitcast i32* %16 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %6, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %63

23:                                               ; preds = %12
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @AXIS_NEG_GET(i64 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @AXIS_NEG_GET(i64 %32)
  %34 = call i32 @sdl_pad_get_axis(%struct.TYPE_3__* %31, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, -32767
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -32767, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %37
  br label %61

44:                                               ; preds = %23
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @AXIS_POS_GET(i64 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @AXIS_POS_GET(i64 %53)
  %55 = call i32 @sdl_pad_get_axis(%struct.TYPE_3__* %52, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %22, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @AXIS_NEG_GET(i64) #1

declare dso_local i32 @sdl_pad_get_axis(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
