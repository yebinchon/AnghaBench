; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_SlideTraverse.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_map.c_PTR_SlideTraverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@.str = private unnamed_addr constant [31 x i8] c"PTR_SlideTraverse: not a line?\00", align 1
@ML_TWOSIDED = common dso_local global i32 0, align 4
@slidemo = common dso_local global %struct.TYPE_13__* null, align 8
@openrange = common dso_local global i64 0, align 8
@opentop = common dso_local global i64 0, align 8
@openbottom = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@bestslidefrac = common dso_local global i64 0, align 8
@secondslidefrac = common dso_local global i64 0, align 8
@bestslideline = common dso_local global %struct.TYPE_11__* null, align 8
@secondslideline = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PTR_SlideTraverse(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @I_Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %4, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ML_TWOSIDED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %11
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = call i64 @P_PointOnLineSide(i32 %25, i32 %28, %struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %81

33:                                               ; preds = %22
  br label %67

34:                                               ; preds = %11
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = call i32 @P_LineOpening(%struct.TYPE_11__* %35)
  %37 = load i64, i64* @openrange, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %67

43:                                               ; preds = %34
  %44 = load i64, i64* @opentop, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %67

54:                                               ; preds = %43
  %55 = load i32, i32* @openbottom, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @slidemo, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load i32, i32* @FRACUNIT, align 4
  %62 = mul nsw i32 24, %61
  %63 = sext i32 %62 to i64
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %67

66:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %81

67:                                               ; preds = %65, %53, %42, %33
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @bestslidefrac, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i64, i64* @bestslidefrac, align 8
  store i64 %74, i64* @secondslidefrac, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bestslideline, align 8
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** @secondslideline, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* @bestslidefrac, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** @bestslideline, align 8
  br label %80

80:                                               ; preds = %73, %67
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %66, %32
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i64 @P_PointOnLineSide(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @P_LineOpening(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
