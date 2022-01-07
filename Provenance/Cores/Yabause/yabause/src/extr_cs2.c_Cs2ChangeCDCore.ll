; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ChangeCDCore.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2ChangeCDCore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 (i8*)*, i64, i32 (...)* }

@Cs2Area = common dso_local global %struct.TYPE_5__* null, align 8
@CDCORE_DEFAULT = common dso_local global i32 0, align 4
@CDCoreList = common dso_local global %struct.TYPE_4__** null, align 8
@DummyCD = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@YAB_ERR_CANNOTINIT = common dso_local global i32 0, align 4
@CDB_STAT_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cs2ChangeCDCore(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32 (...)*, i32 (...)** %15, align 8
  %17 = call i32 (...) %16()
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @CDCORE_DEFAULT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %18
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %50, %23
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @CDCoreList, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @CDCoreList, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @CDCoreList, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  br label %53

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %24

53:                                               ; preds = %41, %24
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp eq %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  store %struct.TYPE_4__* @DummyCD, %struct.TYPE_4__** %60, align 8
  store i32 -1, i32* %3, align 4
  br label %88

61:                                               ; preds = %53
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64 (i8*)*, i64 (i8*)** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 %66(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @YabSetError(i32 %71, i8* %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store %struct.TYPE_4__* @DummyCD, %struct.TYPE_4__** %80, align 8
  br label %81

81:                                               ; preds = %70, %61
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @CDB_STAT_PAUSE, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Cs2Area, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = call i32 (...) @SmpcRecheckRegion()
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %58
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @SmpcRecheckRegion(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
