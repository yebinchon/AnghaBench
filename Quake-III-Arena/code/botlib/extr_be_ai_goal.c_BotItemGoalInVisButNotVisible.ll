; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotItemGoalInVisButNotVisible.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_goal.c_BotItemGoalInVisButNotVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32 }
%struct.TYPE_9__ = type { double }
%struct.TYPE_7__ = type { i32 }

@GFL_ITEM = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotItemGoalInVisButNotVisible(i32 %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFL_ITEM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @qfalse, align 4
  store i32 %21, i32* %5, align 4
  br label %73

22:                                               ; preds = %4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @VectorAdd(i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @VectorScale(i32 %31, double 5.000000e-01, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @VectorAdd(i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @CONTENTS_SOLID, align 4
  %44 = call i32 @AAS_Trace(i32 %40, i32* null, i32* null, i32 %41, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = bitcast %struct.TYPE_7__* %11 to i8*
  %47 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 1
  br i1 %50, label %51, label %71

51:                                               ; preds = %22
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @qfalse, align 4
  store i32 %57, i32* %5, align 4
  br label %73

58:                                               ; preds = %51
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @AAS_EntityInfo(i64 %61, %struct.TYPE_9__* %10)
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %64 = load double, double* %63, align 8
  %65 = call double (...) @AAS_Time()
  %66 = fsub double %65, 5.000000e-01
  %67 = fcmp olt double %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* @qtrue, align 4
  store i32 %69, i32* %5, align 4
  br label %73

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %68, %56, %20
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, double, i32) #1

declare dso_local i32 @AAS_Trace(i32, i32*, i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AAS_EntityInfo(i64, %struct.TYPE_9__*) #1

declare dso_local double @AAS_Time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
