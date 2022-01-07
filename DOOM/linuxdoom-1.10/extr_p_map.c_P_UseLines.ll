; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_UseLines.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_UseLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@usething = common dso_local global %struct.TYPE_5__* null, align 8
@ANGLETOFINESHIFT = common dso_local global i32 0, align 4
@USERANGE = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8
@PT_ADDLINES = common dso_local global i32 0, align 4
@PTR_UseTraverse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_UseLines(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** @usething, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ANGLETOFINESHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @USERANGE, align 4
  %30 = load i32, i32* @FRACBITS, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32*, i32** @finecosine, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %28, %38
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @USERANGE, align 4
  %42 = load i32, i32* @FRACBITS, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32*, i32** @finesine, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %43, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %40, %50
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @PT_ADDLINES, align 4
  %57 = load i32, i32* @PTR_UseTraverse, align 4
  %58 = call i32 @P_PathTraverse(i64 %52, i64 %53, i64 %54, i64 %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @P_PathTraverse(i64, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
