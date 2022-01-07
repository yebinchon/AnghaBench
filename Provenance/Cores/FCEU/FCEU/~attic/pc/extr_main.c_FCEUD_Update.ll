; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_FCEUD_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_FCEUD_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fps_scale = common dso_local global i32 0, align 4
@FCEUD_Update.uflow = internal global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@NoWaiting = common dso_local global i32 0, align 4
@eoptions = common dso_local global i32 0, align 4
@EO_NOTHROTTLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FCEUD_Update(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* @fps_scale, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %111

17:                                               ; preds = %3
  %18 = call i32 (...) @GetWriteSound()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (...) @GetMaxSound()
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @fps_scale, align 4
  %24 = icmp sle i32 %23, 256
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* @FCEUD_Update.uflow, align 4
  br label %26

26:                                               ; preds = %25, %22, %17
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %8, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* @FCEUD_Update.uflow, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @WriteSound(i32* %34, i32 %35)
  %37 = call i32 (...) @GetWriteSound()
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @fps_scale, align 4
  %39 = icmp sgt i32 %38, 256
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %6, align 4
  %44 = sitofp i32 %43 to double
  %45 = fmul double %44, 9.000000e-01
  %46 = fcmp olt double %42, %45
  br i1 %46, label %47, label %110

47:                                               ; preds = %40
  %48 = load i32, i32* @FCEUD_Update.uflow, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %110, label %50

50:                                               ; preds = %47, %33
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @inited, align 4
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @NoWaiting, align 4
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @BlitScreen(i32* %62)
  br label %64

64:                                               ; preds = %61, %57, %53, %50
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %64
  %75 = load i32, i32* @NoWaiting, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = call i32 (...) @GetWriteSound()
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @WriteSound(i32* %85, i32 %86)
  br label %108

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = call i32 @WriteSound(i32* %93, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %89

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %107, %84
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109, %47, %40
  br label %135

111:                                              ; preds = %3
  %112 = load i32, i32* @NoWaiting, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @eoptions, align 4
  %116 = load i32, i32* @EO_NOTHROTTLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = call i64 (...) @FCEUI_EmulationPaused()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119, %114
  %123 = call i32 (...) @SpeedThrottle()
  br label %124

124:                                              ; preds = %122, %119, %111
  %125 = load i32*, i32** %4, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32, i32* @inited, align 4
  %129 = and i32 %128, 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @BlitScreen(i32* %132)
  br label %134

134:                                              ; preds = %131, %127, %124
  br label %135

135:                                              ; preds = %134, %110
  %136 = call i32 (...) @FCEUD_UpdateInput()
  ret void
}

declare dso_local i32 @GetWriteSound(...) #1

declare dso_local i32 @GetMaxSound(...) #1

declare dso_local i32 @WriteSound(i32*, i32) #1

declare dso_local i32 @BlitScreen(i32*) #1

declare dso_local i64 @FCEUI_EmulationPaused(...) #1

declare dso_local i32 @SpeedThrottle(...) #1

declare dso_local i32 @FCEUD_UpdateInput(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
