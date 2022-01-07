; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_AddTestModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_AddTestModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32**, i32 }
%struct.TYPE_7__ = type { i32*, i32** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@cg = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"Can't register model\0A\00", align 1
@cg_gun_x = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cg_gun_y = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@cg_gun_z = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_AddTestModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_AddTestModel() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 3), align 8
  %3 = call i32 @trap_R_RegisterModel(i32 %2)
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @CG_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %91

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 2), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 0), align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 0), align 8
  %14 = call i32 @VectorCopy(i32* %12, i32* %13)
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 1), align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @VectorCopy(i32* %17, i32* %20)
  %22 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 1), align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @VectorCopy(i32* %24, i32* %27)
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @VectorCopy(i32* %31, i32* %34)
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %85, %11
  %37 = load i32, i32* %1, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %88

39:                                               ; preds = %36
  %40 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg_gun_x, i32 0, i32 0), align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 0), align 8
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %48
  store i32 %54, i32* %52, align 4
  %55 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg_gun_y, i32 0, i32 0), align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 0), align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 1, i32 1), align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg_gun_z, i32 0, i32 0), align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0, i32 0), align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %78
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %39
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %36

88:                                               ; preds = %36
  br label %89

89:                                               ; preds = %88, %8
  %90 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_8__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg, i32 0, i32 0))
  br label %91

91:                                               ; preds = %89, %6
  ret void
}

declare dso_local i32 @trap_R_RegisterModel(i32) #1

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
