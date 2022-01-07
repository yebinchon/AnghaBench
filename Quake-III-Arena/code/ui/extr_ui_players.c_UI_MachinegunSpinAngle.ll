; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_MachinegunSpinAngle.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_MachinegunSpinAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@dp_realtime = common dso_local global i8* null, align 8
@SPIN_SPEED = common dso_local global i32 0, align 4
@COAST_TIME = common dso_local global i32 0, align 4
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@TORSO_ATTACK2 = common dso_local global i32 0, align 4
@TORSO_ATTACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @UI_MachinegunSpinAngle(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i8*, i8** @dp_realtime, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = ptrtoint i8* %7 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SPIN_SPEED, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %22, %25
  %27 = sitofp i32 %26 to float
  store float %27, float* %4, align 4
  br label %57

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @COAST_TIME, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @COAST_TIME, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @SPIN_SPEED, align 4
  %36 = sitofp i32 %35 to float
  %37 = load i32, i32* @COAST_TIME, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sitofp i32 %39 to float
  %41 = load i32, i32* @COAST_TIME, align 4
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %40, %42
  %44 = fadd float %36, %43
  %45 = fpext float %44 to double
  %46 = fmul double 5.000000e-01, %45
  %47 = fptrunc double %46 to float
  store float %47, float* %5, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to float
  %52 = load i32, i32* %3, align 4
  %53 = sitofp i32 %52 to float
  %54 = load float, float* %5, align 4
  %55 = fmul float %53, %54
  %56 = fadd float %51, %55
  store float %56, float* %4, align 4
  br label %57

57:                                               ; preds = %34, %19
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @TORSO_ATTACK2, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @TORSO_ATTACK, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @TORSO_ATTACK, align 4
  %75 = icmp eq i32 %73, %74
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %72, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %69
  %80 = load i8*, i8** @dp_realtime, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load float, float* %4, align 4
  %84 = call i32 @AngleMod(float %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @TORSO_ATTACK, align 4
  %89 = icmp eq i32 %87, %88
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %79, %69
  %96 = load float, float* %4, align 4
  ret float %96
}

declare dso_local i32 @AngleMod(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
