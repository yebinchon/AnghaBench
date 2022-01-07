; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspChangeSoundCore.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspChangeSoundCore.c"
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
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** @SNDCore, align 8
  br label %49

20:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %45, %20
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SNDCoreList, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** @SNDCore, align 8
  br label %48

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %21

48:                                               ; preds = %38, %21
  br label %49

49:                                               ; preds = %48, %16
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store %struct.TYPE_4__* @SNDDummy, %struct.TYPE_4__** @SNDCore, align 8
  store i32 -1, i32* %2, align 4
  br label %89

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32 (...)*, i32 (...)** %55, align 8
  %57 = call i32 (...) %56()
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @YAB_ERR_CANNOTINIT, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @YabSetError(i32 %60, i8* %64)
  store %struct.TYPE_4__* @SNDDummy, %struct.TYPE_4__** @SNDCore, align 8
  br label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %68 = icmp ne %struct.TYPE_4__* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load i64, i64* @scsp_mute_flags, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = call i32 (...) %75()
  br label %82

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32 (...)*, i32 (...)** %79, align 8
  %81 = call i32 (...) %80()
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @SNDCore, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load i32, i32* @scsp_volume, align 4
  %87 = call i32 %85(i32 %86)
  br label %88

88:                                               ; preds = %82, %66
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %52
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @YabSetError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
