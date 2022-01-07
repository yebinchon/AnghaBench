; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_TouchMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_TouchMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, i64 }

@hunk_low = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@s_hunkData = common dso_local global i64 0, align 8
@s_hunkTotal = common dso_local global i32 0, align 4
@hunk_high = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@mainzone = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Com_TouchMemory: %i msec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_TouchMemory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = call i32 (...) @Z_CheckHeap()
  %8 = call i32 (...) @Sys_Milliseconds()
  store i32 %8, i32* %1, align 4
  store i32 0, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hunk_low, i32 0, i32 0), align 4
  %10 = ashr i32 %9, 2
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %24, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64, i64* @s_hunkData, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 64
  store i32 %26, i32* %3, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* @s_hunkTotal, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hunk_high, i32 0, i32 0), align 4
  %30 = sub nsw i32 %28, %29
  %31 = ashr i32 %30, 2
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hunk_high, i32 0, i32 0), align 4
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %47, %27
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i64, i64* @s_hunkData, align 8
  %40 = inttoptr i64 %39 to i32*
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 64
  store i32 %49, i32* %3, align 4
  br label %34

50:                                               ; preds = %34
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %6, align 8
  br label %55

55:                                               ; preds = %91, %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %78, %60
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = bitcast %struct.TYPE_5__* %70 to i32*
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 64
  store i32 %80, i32* %3, align 4
  br label %65

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %55
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mainzone, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = icmp eq %struct.TYPE_5__* %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %95

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %6, align 8
  br label %55

95:                                               ; preds = %89
  %96 = call i32 (...) @Sys_Milliseconds()
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* %1, align 4
  %99 = sub nsw i32 %97, %98
  %100 = call i32 @Com_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %99)
  ret void
}

declare dso_local i32 @Z_CheckHeap(...) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
