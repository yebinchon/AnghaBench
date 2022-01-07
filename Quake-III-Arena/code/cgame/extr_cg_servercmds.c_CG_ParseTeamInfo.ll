; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_ParseTeamInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_ParseTeamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@numSortedTeamPlayers = common dso_local global i32 0, align 4
@sortedTeamPlayers = common dso_local global i32* null, align 8
@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ParseTeamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ParseTeamInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @CG_Argv(i32 1)
  %4 = call i8* @atoi(i32 %3)
  %5 = ptrtoint i8* %4 to i32
  store i32 %5, i32* @numSortedTeamPlayers, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %72, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @numSortedTeamPlayers, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %75

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = mul nsw i32 %11, 6
  %13 = add nsw i32 %12, 2
  %14 = call i32 @CG_Argv(i32 %13)
  %15 = call i8* @atoi(i32 %14)
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32*, i32** @sortedTeamPlayers, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %1, align 4
  %23 = mul nsw i32 %22, 6
  %24 = add nsw i32 %23, 3
  %25 = call i32 @CG_Argv(i32 %24)
  %26 = call i8* @atoi(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i8* %26, i8** %31, align 8
  %32 = load i32, i32* %1, align 4
  %33 = mul nsw i32 %32, 6
  %34 = add nsw i32 %33, 4
  %35 = call i32 @CG_Argv(i32 %34)
  %36 = call i8* @atoi(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i8* %36, i8** %41, align 8
  %42 = load i32, i32* %1, align 4
  %43 = mul nsw i32 %42, 6
  %44 = add nsw i32 %43, 5
  %45 = call i32 @CG_Argv(i32 %44)
  %46 = call i8* @atoi(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i8* %46, i8** %51, align 8
  %52 = load i32, i32* %1, align 4
  %53 = mul nsw i32 %52, 6
  %54 = add nsw i32 %53, 6
  %55 = call i32 @CG_Argv(i32 %54)
  %56 = call i8* @atoi(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* %1, align 4
  %63 = mul nsw i32 %62, 6
  %64 = add nsw i32 %63, 7
  %65 = call i32 @CG_Argv(i32 %64)
  %66 = call i8* @atoi(i32 %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0), align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  br label %72

72:                                               ; preds = %10
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %6

75:                                               ; preds = %6
  ret void
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @CG_Argv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
