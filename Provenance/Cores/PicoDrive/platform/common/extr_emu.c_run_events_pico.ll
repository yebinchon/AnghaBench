; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_run_events_pico.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_run_events_pico.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@PEV_PICO_SWINP = common dso_local global i32 0, align 4
@pico_inp_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Input: Pen on Pad\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Input: Pen on Storyware\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Input: Joystick\00", align 1
@PicoPicohw = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PEV_PICO_PPREV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Page %i\00", align 1
@PEV_PICO_PNEXT = common dso_local global i32 0, align 4
@PicoPad = common dso_local global i32* null, align 8
@pico_pen_y = common dso_local global i32 0, align 4
@pico_pen_x = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PICO_PEN_ADJUST_Y = common dso_local global i32 0, align 4
@PICO_PEN_ADJUST_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_events_pico(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PEV_PICO_SWINP, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @pico_inp_mode, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @pico_inp_mode, align 4
  %11 = load i32, i32* @pico_inp_mode, align 4
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 0, i32* @pico_inp_mode, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* @pico_inp_mode, align 4
  switch i32 %15, label %26 [
    i32 2, label %16
    i32 1, label %18
    i32 0, label %20
  ]

16:                                               ; preds = %14
  %17 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %26

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %26

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 32768, i32* %23, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 32768, i32* %25, align 4
  br label %26

26:                                               ; preds = %14, %20, %18, %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @PEV_PICO_PPREV, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %40 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %27
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @PEV_PICO_PNEXT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %50 = icmp sgt i32 %49, 6
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 1), align 8
  %54 = call i32 (i8*, ...) @emu_status_msg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, i32* @pico_inp_mode, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %165

59:                                               ; preds = %55
  %60 = load i32*, i32** @PicoPad, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @pico_pen_y, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @pico_pen_y, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32*, i32** @PicoPad, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* @pico_pen_y, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @pico_pen_y, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32*, i32** @PicoPad, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @pico_pen_x, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @pico_pen_x, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32*, i32** @PicoPad, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @pico_pen_x, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @pico_pen_x, align 4
  br label %95

95:                                               ; preds = %92, %86
  %96 = load i32*, i32** @PicoPad, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -16
  store i32 %99, i32* %97, align 4
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 12
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 319, i32 255
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* @pico_pen_y, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  store i32 8, i32* @pico_pen_y, align 4
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i32, i32* @pico_pen_y, align 4
  %112 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %113 = sub nsw i32 224, %112
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @PICO_PEN_ADJUST_Y, align 4
  %117 = sub nsw i32 224, %116
  store i32 %117, i32* @pico_pen_y, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load i32, i32* @pico_pen_x, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 0, i32* @pico_pen_x, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load i32, i32* @pico_pen_x, align 4
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @PICO_PEN_ADJUST_X, align 4
  %126 = sub nsw i32 %124, %125
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @PICO_PEN_ADJUST_X, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* @pico_pen_x, align 4
  br label %132

132:                                              ; preds = %128, %122
  %133 = load i32, i32* @pico_pen_x, align 4
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 12
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %132
  %142 = load i32, i32* @pico_pen_x, align 4
  %143 = sdiv i32 %142, 4
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %132
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 60
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @pico_inp_mode, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load i32, i32* @pico_pen_y, align 4
  %157 = add nsw i32 760, %156
  br label %161

158:                                              ; preds = %148
  %159 = load i32, i32* @pico_pen_y, align 4
  %160 = add nsw i32 508, %159
  br label %161

161:                                              ; preds = %158, %155
  %162 = phi i32 [ %157, %155 ], [ %160, %158 ]
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @PicoPicohw, i32 0, i32 0), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %58
  ret void
}

declare dso_local i32 @emu_status_msg(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
