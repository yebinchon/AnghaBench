; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Update_.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_dma.c_S_Update_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float }
%struct.TYPE_6__ = type { float, i32, i32, i32 }
%struct.TYPE_5__ = type { float }

@S_Update_.lastTime = internal global float 0.000000e+00, align 4
@S_Update_.ot = internal global i32 -1, align 4
@s_soundStarted = common dso_local global i32 0, align 4
@s_soundMuted = common dso_local global i64 0, align 8
@s_soundtime = common dso_local global i32 0, align 4
@s_mixahead = common dso_local global %struct.TYPE_4__* null, align 8
@dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@s_mixPreStep = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_Update_() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = load i32, i32* @s_soundStarted, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i64, i64* @s_soundMuted, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  br label %84

13:                                               ; preds = %9
  %14 = call float (...) @Com_Milliseconds()
  store float %14, float* %5, align 4
  %15 = call i32 (...) @S_GetSoundtime()
  %16 = load i32, i32* @s_soundtime, align 4
  %17 = load i32, i32* @S_Update_.ot, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %84

20:                                               ; preds = %13
  %21 = load i32, i32* @s_soundtime, align 4
  store i32 %21, i32* @S_Update_.ot, align 4
  %22 = call i32 (...) @S_ScanChannelStarts()
  %23 = load float, float* %5, align 4
  %24 = load float, float* @S_Update_.lastTime, align 4
  %25 = fsub float %23, %24
  store float %25, float* %6, align 4
  %26 = load float, float* %6, align 4
  %27 = fcmp olt float %26, 1.100000e+01
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store float 1.100000e+01, float* %6, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_mixahead, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load float, float* %31, align 4
  %33 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 4
  %34 = fmul float %32, %33
  store float %34, float* %3, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s_mixPreStep, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = load float, float* %6, align 4
  %40 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 4
  %41 = fmul float %39, %40
  %42 = fpext float %41 to double
  %43 = fmul double %42, 1.000000e-02
  %44 = fadd double %38, %43
  %45 = fptrunc double %44 to float
  store float %45, float* %4, align 4
  %46 = load float, float* %4, align 4
  %47 = load float, float* %3, align 4
  %48 = fcmp olt float %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = load float, float* %4, align 4
  store float %50, float* %3, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* @s_soundtime, align 4
  %53 = sitofp i32 %52 to float
  %54 = load float, float* %3, align 4
  %55 = fadd float %53, %54
  %56 = fptoui float %55 to i32
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %59 = add i32 %57, %58
  %60 = sub i32 %59, 1
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %62 = sub i32 %61, 1
  %63 = xor i32 %62, -1
  %64 = and i32 %60, %63
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 2), align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 3), align 4
  %67 = sub nsw i32 %66, 1
  %68 = ashr i32 %65, %67
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* @s_soundtime, align 4
  %71 = sub i32 %69, %70
  %72 = load i32, i32* %2, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %51
  %75 = load i32, i32* @s_soundtime, align 4
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %74, %51
  %79 = call i32 (...) @SNDDMA_BeginPainting()
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @S_PaintChannels(i32 %80)
  %82 = call i32 (...) @SNDDMA_Submit()
  %83 = load float, float* %5, align 4
  store float %83, float* @S_Update_.lastTime, align 4
  br label %84

84:                                               ; preds = %78, %19, %12
  ret void
}

declare dso_local float @Com_Milliseconds(...) #1

declare dso_local i32 @S_GetSoundtime(...) #1

declare dso_local i32 @S_ScanChannelStarts(...) #1

declare dso_local i32 @SNDDMA_BeginPainting(...) #1

declare dso_local i32 @S_PaintChannels(i32) #1

declare dso_local i32 @SNDDMA_Submit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
