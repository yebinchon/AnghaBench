; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_SetupFrame.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_main.c_R_SetupFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@viewplayer = common dso_local global %struct.TYPE_6__* null, align 8
@viewx = common dso_local global i32 0, align 4
@viewy = common dso_local global i32 0, align 4
@viewangleoffset = common dso_local global i64 0, align 8
@viewangle = common dso_local global i64 0, align 8
@extralight = common dso_local global i32 0, align 4
@viewz = common dso_local global i32 0, align 4
@finesine = common dso_local global i32* null, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@viewsin = common dso_local global i32 0, align 4
@finecosine = common dso_local global i32* null, align 8
@viewcos = common dso_local global i32 0, align 4
@sscount = common dso_local global i64 0, align 8
@colormaps = common dso_local global i64 0, align 8
@fixedcolormap = common dso_local global i64 0, align 8
@scalelightfixed = common dso_local global i64* null, align 8
@walllights = common dso_local global i64* null, align 8
@MAXLIGHTSCALE = common dso_local global i32 0, align 4
@framecount = common dso_local global i32 0, align 4
@validcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupFrame(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** @viewplayer, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @viewx, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* @viewy, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @viewangleoffset, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* @viewangle, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* @extralight, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @viewz, align 4
  %28 = load i32*, i32** @finesine, align 8
  %29 = load i64, i64* @viewangle, align 8
  %30 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @viewsin, align 4
  %34 = load i32*, i32** @finecosine, align 8
  %35 = load i64, i64* @viewangle, align 8
  %36 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @viewcos, align 4
  store i64 0, i64* @sscount, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %1
  %45 = load i64, i64* @colormaps, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 256
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = add i64 %45, %51
  store i64 %52, i64* @fixedcolormap, align 8
  %53 = load i64*, i64** @scalelightfixed, align 8
  store i64* %53, i64** @walllights, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %64, %44
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @MAXLIGHTSCALE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i64, i64* @fixedcolormap, align 8
  %60 = load i64*, i64** @scalelightfixed, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %54

67:                                               ; preds = %54
  br label %69

68:                                               ; preds = %1
  store i64 0, i64* @fixedcolormap, align 8
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* @framecount, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @framecount, align 4
  %72 = load i32, i32* @validcount, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @validcount, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
