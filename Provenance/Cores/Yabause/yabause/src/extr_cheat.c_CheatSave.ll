; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatSave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"YCHT\00", align 1
@numcheats = common dso_local global i32 0, align 4
@cheatlist = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheatSave(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %93

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @numcheats, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @DoubleWordSwap(i32 %23)
  %25 = bitcast i32* %6 to i8*
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %25, i32 4, i32 1, i32* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %87, %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @numcheats, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cheatlist, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = call i32 @memcpy(%struct.TYPE_7__* %9, %struct.TYPE_9__* %36, i32 16)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DoubleWordSwap(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DoubleWordSwap(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DoubleWordSwap(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DoubleWordSwap(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %51 = bitcast i32* %50 to i8*
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %51, i32 4, i32 1, i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %55 = bitcast i32* %54 to i8*
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %55, i32 4, i32 1, i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %59 = bitcast i32* %58 to i8*
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %59, i32 4, i32 1, i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cheatlist, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @strlen(i64 %67)
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  %70 = bitcast i32* %8 to i8*
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %70, i32 4, i32 1, i32* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cheatlist, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %79, i32 1, i32 %80, i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  %84 = bitcast i32* %83 to i8*
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ywrite(%struct.TYPE_8__* %7, i8* %84, i32 4, i32 1, i32* %85)
  br label %87

87:                                               ; preds = %32
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %28

90:                                               ; preds = %28
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @fclose(i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %18, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @DoubleWordSwap(i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_8__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @strlen(i64) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
