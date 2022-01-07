; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Hunk_AllocateTempMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Hunk_AllocateTempMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@s_hunkData = common dso_local global i32* null, align 8
@hunk_temp = common dso_local global %struct.TYPE_6__* null, align 8
@hunk_permanent = common dso_local global %struct.TYPE_7__* null, align 8
@s_hunkTotal = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Hunk_AllocateTempMemory: failed on %i\00", align 1
@hunk_low = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HUNK_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Hunk_AllocateTempMemory(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32*, i32** @s_hunkData, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i8* @Z_Malloc(i32 %9)
  store i8* %10, i8** %2, align 8
  br label %97

11:                                               ; preds = %1
  %12 = call i32 (...) @Hunk_SwapBanks()
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 3
  %15 = and i32 %14, -4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @hunk_permanent, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i64, i64* @s_hunkTotal, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load i32, i32* @ERR_DROP, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @Com_Error(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %11
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %38 = icmp eq %struct.TYPE_6__* %37, @hunk_low
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32*, i32** @s_hunkData, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  br label %68

52:                                               ; preds = %36
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i32*, i32** @s_hunkData, align 8
  %60 = load i64, i64* @s_hunkTotal, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 0, %64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %52, %39
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ugt i32* %72, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @hunk_temp, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %77, %68
  %85 = load i8*, i8** %4, align 8
  %86 = bitcast i8* %85 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %5, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 1
  %89 = bitcast %struct.TYPE_5__* %88 to i8*
  store i8* %89, i8** %4, align 8
  %90 = load i32, i32* @HUNK_MAGIC, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load i8*, i8** %4, align 8
  store i8* %96, i8** %2, align 8
  br label %97

97:                                               ; preds = %84, %8
  %98 = load i8*, i8** %2, align 8
  ret i8* %98
}

declare dso_local i8* @Z_Malloc(i32) #1

declare dso_local i32 @Hunk_SwapBanks(...) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
