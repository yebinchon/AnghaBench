; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_EV_DoLockedDoor.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_doors.c_EV_DoLockedDoor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }

@it_bluecard = common dso_local global i64 0, align 8
@it_blueskull = common dso_local global i64 0, align 8
@PD_BLUEO = common dso_local global i32 0, align 4
@sfx_oof = common dso_local global i32 0, align 4
@it_redcard = common dso_local global i64 0, align 8
@it_redskull = common dso_local global i64 0, align 8
@PD_REDO = common dso_local global i32 0, align 4
@it_yellowcard = common dso_local global i64 0, align 8
@it_yellowskull = common dso_local global i64 0, align 8
@PD_YELLOWO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EV_DoLockedDoor(%struct.TYPE_9__* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

15:                                               ; preds = %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %100 [
    i32 99, label %19
    i32 133, label %19
    i32 134, label %46
    i32 135, label %46
    i32 136, label %73
    i32 137, label %73
  ]

19:                                               ; preds = %15, %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %104

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @it_bluecard, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @it_blueskull, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @PD_BLUEO, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @sfx_oof, align 4
  %44 = call i32 @S_StartSound(i32* null, i32 %43)
  store i32 0, i32* %4, align 4
  br label %104

45:                                               ; preds = %31, %23
  br label %100

46:                                               ; preds = %15, %15
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %104

50:                                               ; preds = %46
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @it_redcard, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %50
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @it_redskull, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @PD_REDO, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @sfx_oof, align 4
  %71 = call i32 @S_StartSound(i32* null, i32 %70)
  store i32 0, i32* %4, align 4
  br label %104

72:                                               ; preds = %58, %50
  br label %100

73:                                               ; preds = %15, %15
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %75 = icmp ne %struct.TYPE_7__* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %104

77:                                               ; preds = %73
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @it_yellowcard, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @it_yellowskull, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @PD_YELLOWO, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @sfx_oof, align 4
  %98 = call i32 @S_StartSound(i32* null, i32 %97)
  store i32 0, i32* %4, align 4
  br label %104

99:                                               ; preds = %85, %77
  br label %100

100:                                              ; preds = %15, %99, %72, %45
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @EV_DoDoor(%struct.TYPE_9__* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %93, %76, %66, %49, %39, %22, %14
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @EV_DoDoor(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
