; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_clear_cheats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_cheats.c_clear_cheats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@maxcheats = common dso_local global i32 0, align 4
@cheatlist = common dso_local global %struct.TYPE_3__* null, align 8
@cart = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_cheats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_cheats() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @maxcheats, align 4
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %84, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %87

6:                                                ; preds = %3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %6
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0), align 8
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %15
  %26 = load i32, i32* @system_hw, align 4
  %27 = load i32, i32* @SYSTEM_PBC, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SYSTEM_MD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 1), align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 16777214
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %39, %48
  %50 = inttoptr i64 %49 to i32*
  store i32 %38, i32* %50, align 4
  br label %82

51:                                               ; preds = %25
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %81

60:                                               ; preds = %51
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  store i32 %67, i32* %74, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cheatlist, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %60, %51
  br label %82

82:                                               ; preds = %81, %31
  br label %83

83:                                               ; preds = %82, %15
  br label %84

84:                                               ; preds = %83, %6
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %1, align 4
  br label %3

87:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
