; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_FindHashedPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_FindHashedPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@PLANE_HASH_SIZE = common dso_local global i32 0, align 4
@aas_hashplanes = common dso_local global i32* null, align 8
@aasworld = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@aas_planechain = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_FindHashedPlane(i32 %0, float %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load float, float* %6, align 4
  %14 = call i64 @fabs(float %13)
  %15 = trunc i64 %14 to i32
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* @PLANE_HASH_SIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %11, align 4
  store i32 -1, i32* %8, align 4
  br label %21

21:                                               ; preds = %60, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @PLANE_HASH_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** @aas_hashplanes, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %53, %24
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @aasworld, i32 0, i32 0), align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %10, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load float, float* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @AAS_PlaneEqual(i32 %44, float %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %4, align 4
  br label %64

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** @aas_planechain, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  br label %36

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %21

63:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %49
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @fabs(float) #1

declare dso_local i64 @AAS_PlaneEqual(i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
