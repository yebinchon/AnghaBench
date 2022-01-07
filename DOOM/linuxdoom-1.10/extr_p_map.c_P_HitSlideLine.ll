; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_HitSlideLine.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_P_HitSlideLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i8*, i8* }

@ST_HORIZONTAL = common dso_local global i64 0, align 8
@tmymove = common dso_local global i8* null, align 8
@ST_VERTICAL = common dso_local global i64 0, align 8
@tmxmove = common dso_local global i8* null, align 8
@slidemo = common dso_local global %struct.TYPE_6__* null, align 8
@ANG180 = common dso_local global i64 0, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@finecosine = common dso_local global i32* null, align 8
@finesine = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_HitSlideLine(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ST_HORIZONTAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** @tmymove, align 8
  br label %86

15:                                               ; preds = %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ST_VERTICAL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* null, i8** @tmxmove, align 8
  br label %86

22:                                               ; preds = %15
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @slidemo, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @slidemo, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = call i32 @P_PointOnLineSide(i32 %25, i32 %28, %struct.TYPE_5__* %29)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @R_PointToAngle2(i32 0, i32 0, i8* %33, i8* %36)
  store i64 %37, i64* %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %22
  %41 = load i64, i64* @ANG180, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %40, %22
  %45 = load i8*, i8** @tmxmove, align 8
  %46 = load i8*, i8** @tmymove, align 8
  %47 = call i64 @R_PointToAngle2(i32 0, i32 0, i8* %45, i8* %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @ANG180, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* @ANG180, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %54, %44
  %59 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %60 = load i64, i64* %4, align 8
  %61 = lshr i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %63 = load i64, i64* %6, align 8
  %64 = lshr i64 %63, %62
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** @tmxmove, align 8
  %66 = load i8*, i8** @tmymove, align 8
  %67 = call i8* @P_AproxDistance(i8* %65, i8* %66)
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i32*, i32** @finecosine, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @FixedMul(i8* %68, i32 %72)
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** @finecosine, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @FixedMul(i8* %74, i32 %78)
  store i8* %79, i8** @tmxmove, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i32*, i32** @finesine, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @FixedMul(i8* %80, i32 %84)
  store i8* %85, i8** @tmymove, align 8
  br label %86

86:                                               ; preds = %58, %21, %14
  ret void
}

declare dso_local i32 @P_PointOnLineSide(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i64 @R_PointToAngle2(i32, i32, i8*, i8*) #1

declare dso_local i8* @P_AproxDistance(i8*, i8*) #1

declare dso_local i8* @FixedMul(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
