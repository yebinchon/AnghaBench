; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_crt_screen_setup_aspect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_crt_switch.c_crt_screen_setup_aspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ra_set_core_hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @crt_screen_setup_aspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crt_screen_setup_aspect(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @switch_crt_hz()
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 700
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 320, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %8
  store i32 240, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @crt_aspect_ratio_switch(i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 200
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 144
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @crt_aspect_ratio_switch(i32 %23, i32 %24)
  store i32 200, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %19, %16
  %27 = load i32, i32* %4, align 4
  %28 = icmp ugt i32 %27, 200
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @crt_aspect_ratio_switch(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 144
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @ra_set_core_hz, align 4
  %38 = icmp eq i32 %37, 50
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  store i32 288, i32* %4, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @crt_aspect_ratio_switch(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36, %33
  %44 = load i32, i32* %4, align 4
  %45 = icmp ugt i32 %44, 200
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp ult i32 %47, 224
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @crt_aspect_ratio_switch(i32 %50, i32 %51)
  store i32 224, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %46, %43
  %54 = load i32, i32* %4, align 4
  %55 = icmp ugt i32 %54, 224
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = icmp ult i32 %57, 240
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @crt_aspect_ratio_switch(i32 %60, i32 %61)
  store i32 240, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %56, %53
  %64 = load i32, i32* %4, align 4
  %65 = icmp ugt i32 %64, 240
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp ult i32 %67, 255
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @crt_aspect_ratio_switch(i32 %70, i32 %71)
  store i32 254, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %66, %63
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 528
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @ra_set_core_hz, align 4
  %78 = icmp eq i32 %77, 60
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @crt_aspect_ratio_switch(i32 %80, i32 %81)
  store i32 480, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %76, %73
  %84 = load i32, i32* %4, align 4
  %85 = icmp uge i32 %84, 240
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = icmp ult i32 %87, 255
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* @ra_set_core_hz, align 4
  %91 = icmp eq i32 %90, 55
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @crt_aspect_ratio_switch(i32 %93, i32 %94)
  store i32 254, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %89, %86, %83
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @switch_res_crt(i32 %97, i32 %98)
  ret void
}

declare dso_local i32 @switch_crt_hz(...) #1

declare dso_local i32 @crt_aspect_ratio_switch(i32, i32) #1

declare dso_local i32 @switch_res_crt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
