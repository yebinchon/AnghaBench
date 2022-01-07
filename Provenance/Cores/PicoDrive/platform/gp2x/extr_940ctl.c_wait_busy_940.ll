; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_wait_busy_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_wait_busy_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@memregs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"940 crashed (cnt: %i, ve: \00", align 1
@shared_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"irq pending flags: DUALCPU %04x, SRCPND %08x (see 26), INTPND %08x\0A\00", align 1
@memregl = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"last lr: %08x, lastjob: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"trying to interrupt..\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"i = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"940 crashed, too much overclock?\00", align 1
@PGS_Menu = common dso_local global i32 0, align 4
@engineState = common dso_local global i32 0, align 4
@crashed_940 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wait_busy_940 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_busy_940(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = load i32*, i32** @memregs, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 7587
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 65536
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i1 [ false, %6 ], [ %16, %14 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = call i32 @spend_cycles(i32 8192)
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %6

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 65536
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %107

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %45, %28
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %33

48:                                               ; preds = %33
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** @memregs, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7587
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @memregl, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4416
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @memregl, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4420
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %55, i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32*, i32** @memregs, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7583
  store i32 65535, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %82, %48
  %71 = load i32*, i32** @memregs, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7587
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 65536
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i1 [ false, %70 ], [ %77, %75 ]
  br i1 %79, label %80, label %85

80:                                               ; preds = %78
  %81 = call i32 @spend_cycles(i32 8192)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %70

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  %88 = load i32*, i32** @memregs, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 7587
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @memregl, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4416
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** @memregl, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4420
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %93, i32 %96)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @shared_ctl, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %103)
  %105 = call i32 @menu_update_msg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* @PGS_Menu, align 4
  store i32 %106, i32* @engineState, align 4
  store i32 1, i32* @crashed_940, align 4
  br label %107

107:                                              ; preds = %85, %27
  ret void
}

declare dso_local i32 @spend_cycles(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @menu_update_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
