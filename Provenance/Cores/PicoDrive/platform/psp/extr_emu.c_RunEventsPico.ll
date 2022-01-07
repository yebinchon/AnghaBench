; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_RunEventsPico.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_RunEventsPico.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@pico_inp_mode = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@PBTN_UP = common dso_local global i32 0, align 4
@pico_pen_y = common dso_local global i32 0, align 4
@PBTN_DOWN = common dso_local global i32 0, align 4
@PICO_PEN_ADJUST_Y = common dso_local global i32 0, align 4
@PBTN_LEFT = common dso_local global i32 0, align 4
@pico_pen_x = common dso_local global i32 0, align 4
@PBTN_RIGHT = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PICO_PEN_ADJUST_X = common dso_local global i32 0, align 4
@PicoPicohw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @RunEventsPico to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RunEventsPico(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @emu_RunEventsPico(i32 %6)
  %8 = load i32, i32* @pico_inp_mode, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %112

10:                                               ; preds = %2
  %11 = load i32*, i32** @PicoPad, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -16
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PBTN_UP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load i32, i32* @pico_pen_y, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @pico_pen_y, align 4
  %22 = load i32, i32* @pico_pen_y, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 8, i32* @pico_pen_y, align 4
  br label %25

25:                                               ; preds = %24, %19
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PBTN_DOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @pico_pen_y, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @pico_pen_y, align 4
  %34 = load i32, i32* @pico_pen_y, align 4
  %35 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %36 = sub nsw i32 224, %35
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %40 = sub nsw i32 224, %39
  store i32 %40, i32* @pico_pen_y, align 4
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PBTN_LEFT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* @pico_pen_x, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* @pico_pen_x, align 4
  %50 = load i32, i32* @pico_pen_x, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* @pico_pen_x, align 4
  br label %53

53:                                               ; preds = %52, %47
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PBTN_RIGHT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 319, i32 255
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* @pico_pen_x, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @pico_pen_x, align 4
  %69 = load i32, i32* @pico_pen_x, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @PICO_PEN_ADJUST_X, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PICO_PEN_ADJUST_X, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* @pico_pen_x, align 4
  br label %78

78:                                               ; preds = %74, %59
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* @pico_pen_x, align 4
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 12
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @pico_pen_x, align 4
  %90 = sdiv i32 %89, 4
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %79
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 60
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @pico_inp_mode, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @pico_pen_y, align 4
  %104 = add nsw i32 760, %103
  br label %108

105:                                              ; preds = %95
  %106 = load i32, i32* @pico_pen_y, align 4
  %107 = add nsw i32 508, %106
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %104, %102 ], [ %107, %105 ]
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %2
  ret void
}

declare dso_local i32 @emu_RunEventsPico(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
