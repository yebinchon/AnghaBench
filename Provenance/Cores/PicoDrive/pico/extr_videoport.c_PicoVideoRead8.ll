; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoRead8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_videoport.c_PicoVideoRead8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EL_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SR read (h): %02x @ %06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@line_base_cycles = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"SR read (l): %02x @ %06x\00", align 1
@EL_HVCNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"vcounter: %02x (%i) @ %06x\00", align 1
@hcounts_40 = common dso_local global i32* null, align 8
@hcounts_32 = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"hcounter: %02x (%i) @ %06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoVideoRead8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 29
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %94 [
    i32 0, label %8
    i32 1, label %11
    i32 4, label %14
    i32 5, label %29
    i32 8, label %58
    i32 9, label %65
  ]

8:                                                ; preds = %1
  %9 = call i32 (...) @VideoRead()
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %2, align 4
  br label %95

11:                                               ; preds = %1
  %12 = call i32 (...) @VideoRead()
  %13 = and i32 %12, 255
  store i32 %13, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %22 = and i32 %21, -257
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  br label %23

23:                                               ; preds = %20, %14
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 4), align 8
  %24 = load i32, i32* @EL_SR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SekPc, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %95

29:                                               ; preds = %1
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %31 = and i32 %30, 255
  store i32 %31, i32* %4, align 4
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 64
  %36 = xor i32 %35, 64
  %37 = ashr i32 %36, 3
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 2), align 8
  %41 = and i32 %40, 32
  %42 = shl i32 %41, 2
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = call i32 (...) @SekCyclesDone()
  %46 = load i32, i32* @line_base_cycles, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sge i32 %47, 400
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %29
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 4), align 8
  %53 = load i32, i32* @EL_SR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SekPc, align 4
  %56 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %1
  %59 = load i32, i32* @EL_HVCNT, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 3), align 4
  %61 = call i32 (...) @SekCyclesDone()
  %62 = load i32, i32* @SekPc, align 4
  %63 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 3), align 4
  store i32 %64, i32* %2, align 4
  br label %95

65:                                               ; preds = %1
  %66 = call i32 (...) @SekCyclesDone()
  %67 = load i32, i32* @line_base_cycles, align 4
  %68 = sub nsw i32 %66, %67
  %69 = and i32 %68, 511
  store i32 %69, i32* %4, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 12
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i32*, i32** @hcounts_40, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  br label %87

81:                                               ; preds = %65
  %82 = load i32*, i32** @hcounts_32, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @EL_HVCNT, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 (...) @SekCyclesDone()
  %91 = load i32, i32* @SekPc, align 4
  %92 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %4, align 4
  store i32 %93, i32* %2, align 4
  br label %95

94:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %87, %58, %52, %23, %11, %8
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @VideoRead(...) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @SekCyclesDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
