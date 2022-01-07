; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_UseTargets.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_G_UseTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { double }
%struct.TYPE_10__ = type { i32, i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)*, i32, i64, i64 }

@level = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@CS_SHADERSTATE = common dso_local global i32 0, align 4
@targetname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: Entity used itself.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"entity was removed while using targets\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_UseTargets(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp ne %struct.TYPE_10__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %79

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @level, i32 0, i32 0), align 8
  %22 = fmul double %21, 1.000000e-03
  %23 = fptrunc double %22 to float
  store float %23, float* %6, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load float, float* %6, align 4
  %31 = call i32 @AddRemap(i64 %26, i64 %29, float %30)
  %32 = load i32, i32* @CS_SHADERSTATE, align 4
  %33 = call i32 (...) @BuildShaderStateConfig()
  %34 = call i32 @trap_SetConfigstring(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %20, %15, %10
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %79

41:                                               ; preds = %35
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %42

42:                                               ; preds = %78, %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load i32, i32* @targetname, align 4
  %45 = call i32 @FOFS(i32 %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_10__* @G_Find(%struct.TYPE_10__* %43, i32 %45, i32 %48)
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %5, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %42
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = icmp eq %struct.TYPE_10__* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @G_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %71

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)** %59, align 8
  %61 = icmp ne i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*)** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 %65(%struct.TYPE_10__* %66, %struct.TYPE_10__* %67, %struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %62, %57
  br label %71

71:                                               ; preds = %70, %55
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = call i32 @G_Printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %79

78:                                               ; preds = %71
  br label %42

79:                                               ; preds = %9, %40, %76, %42
  ret void
}

declare dso_local i32 @AddRemap(i64, i64, float) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @BuildShaderStateConfig(...) #1

declare dso_local %struct.TYPE_10__* @G_Find(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @FOFS(i32) #1

declare dso_local i32 @G_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
