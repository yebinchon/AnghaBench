; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRender.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/titan/extr_titan.c_TitanRender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@tt_context = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@Vdp2Regs = common dso_local global %struct.TYPE_4__* null, align 8
@TITAN_NBG0 = common dso_local global i64 0, align 8
@TITAN_NBG1 = common dso_local global i64 0, align 8
@TITAN_NBG2 = common dso_local global i64 0, align 8
@TITAN_NBG3 = common dso_local global i64 0, align 8
@TITAN_RBG0 = common dso_local global i64 0, align 8
@vidsoft_num_priority_threads = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TitanRender(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 3), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 2), align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %1
  br label %87

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 32895
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1023
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 31
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 319
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 7
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %44 = load i64, i64* @TITAN_NBG0, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 7
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %52 = load i64, i64* @TITAN_NBG1, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 7
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %59 = load i64, i64* @TITAN_NBG2, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 7
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %67 = load i64, i64* @TITAN_NBG3, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Vdp2Regs, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 0), align 8
  %74 = load i64, i64* @TITAN_RBG0, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i64, i64* @vidsoft_num_priority_threads, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %38
  %79 = load i32*, i32** %2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @TitanRenderThreads(i32* %79, i32 %80)
  br label %87

82:                                               ; preds = %38
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tt_context, i32 0, i32 1), align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @TitanRenderSimplifiedCheck(i32* %83, i32 0, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %9, %82, %78
  ret void
}

declare dso_local i32 @TitanRenderThreads(i32*, i32) #1

declare dso_local i32 @TitanRenderSimplifiedCheck(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
