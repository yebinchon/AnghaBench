; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_AimLineAttack.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_AimLineAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@shootthing = common dso_local global %struct.TYPE_4__* null, align 8
@FRACBITS = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8
@FRACUNIT = common dso_local global i32 0, align 4
@shootz = common dso_local global i64 0, align 8
@topslope = common dso_local global i32 0, align 4
@bottomslope = common dso_local global i32 0, align 4
@attackrange = common dso_local global i32 0, align 4
@linetarget = common dso_local global i32* null, align 8
@PT_ADDLINES = common dso_local global i32 0, align 4
@PT_ADDTHINGS = common dso_local global i32 0, align 4
@PTR_AimTraverse = common dso_local global i32 0, align 4
@aimslope = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_AimLineAttack(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %11 = load i64, i64* %6, align 8
  %12 = lshr i64 %11, %10
  store i64 %12, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** @shootthing, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FRACBITS, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32*, i32** @finecosine, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %19, %23
  %25 = add nsw i32 %16, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @FRACBITS, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32*, i32** @finesine, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  %37 = add nsw i32 %28, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = load i32, i32* @FRACUNIT, align 4
  %48 = mul nsw i32 8, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  store i64 %50, i64* @shootz, align 8
  %51 = load i32, i32* @FRACUNIT, align 4
  %52 = mul nsw i32 100, %51
  %53 = sdiv i32 %52, 160
  store i32 %53, i32* @topslope, align 4
  %54 = load i32, i32* @FRACUNIT, align 4
  %55 = mul nsw i32 -100, %54
  %56 = sdiv i32 %55, 160
  store i32 %56, i32* @bottomslope, align 4
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* @attackrange, align 4
  store i32* null, i32** @linetarget, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @PT_ADDLINES, align 4
  %67 = load i32, i32* @PT_ADDTHINGS, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PTR_AimTraverse, align 4
  %70 = call i32 @P_PathTraverse(i32 %60, i32 %63, i32 %64, i32 %65, i32 %68, i32 %69)
  %71 = load i32*, i32** @linetarget, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %3
  %74 = load i32, i32* @aimslope, align 4
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %73
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @P_PathTraverse(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
