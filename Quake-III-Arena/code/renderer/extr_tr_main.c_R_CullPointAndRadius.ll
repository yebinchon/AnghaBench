; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_CullPointAndRadius.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_CullPointAndRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float, i32 }

@qfalse = common dso_local global i64 0, align 8
@r_nocull = common dso_local global %struct.TYPE_8__* null, align 8
@CULL_CLIP = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CULL_OUT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@CULL_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_CullPointAndRadius(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %10 = load i64, i64* @qfalse, align 8
  store i64 %10, i64* %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_nocull, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @CULL_CLIP, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %49, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0, i32 0), align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call float @DotProduct(i32 %26, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = fsub float %30, %33
  store float %34, float* %7, align 4
  %35 = load float, float* %7, align 4
  %36 = load float, float* %5, align 4
  %37 = fneg float %36
  %38 = fcmp olt float %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @CULL_OUT, align 4
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %21
  %42 = load float, float* %7, align 4
  %43 = load float, float* %5, align 4
  %44 = fcmp ole float %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @qtrue, align 8
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @CULL_CLIP, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @CULL_IN, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %39, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local float @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
