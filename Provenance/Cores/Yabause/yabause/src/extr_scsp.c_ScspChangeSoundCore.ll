; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspChangeSoundCore.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspChangeSoundCore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (...)*, i32 (i32)*, i32 (...)*, i32 (...)*, i64, i32 (...)* }

@SNDCore = common dso_local global %struct.TYPE_4__* null, align 8
@SNDCORE_DEFAULT = common dso_local global i32 0, align 4
@SNDCoreList = common dso_local global %struct.TYPE_4__** null, align 8
@SNDDummy = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@YAB_ERR_CANNOTINIT = common dso_local global i32 0, align 4
@scsp_mute_flags = common dso_local global i64 0, align 8
@scsp_volume = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScspChangeSoundCore(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SNDCORE_DEFAULT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %12
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %18
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** @SNDCore, align 8
  br label %45

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %18

45:                                               ; preds = %35, %18
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %47 = icmp eq %struct.TYPE_4__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store %struct.TYPE_4__* @SNDDummy, %struct.TYPE_4__** @SNDCore, align 8
  store i32 -1, i32* %2, align 4
  br label %85

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32 (...)*, i32 (...)** %51, align 8
  %53 = call i32 (...) %52()
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @YabSetError(i32 %56, i8* %60)
  store %struct.TYPE_4__* @SNDDummy, %struct.TYPE_4__** @SNDCore, align 8
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load i64, i64* @scsp_mute_flags, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32 (...)*, i32 (...)** %70, align 8
  %72 = call i32 (...) %71()
  br label %78

73:                                               ; preds = %65
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32 (...)*, i32 (...)** %75, align 8
  %77 = call i32 (...) %76()
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load i32, i32* @scsp_volume, align 4
  %83 = call i32 %81(i32 %82)
  br label %84

84:                                               ; preds = %78, %62
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @YabSetError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
