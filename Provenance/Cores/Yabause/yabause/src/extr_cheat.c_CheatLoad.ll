; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatLoad.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cheat.c_CheatLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"YCHT\00", align 1
@numcheats = common dso_local global i32 0, align 4
@cheatsize = common dso_local global i32 0, align 4
@cheatlist = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheatLoad(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca [256 x i8], align 16
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %138

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %138

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @yread(%struct.TYPE_6__* %8, i8* %20, i32 1, i32 4, i32* %21)
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fclose(i32* %27)
  store i32 -2, i32* %2, align 4
  br label %138

29:                                               ; preds = %19
  %30 = call i32 (...) @CheatClearCodes()
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @yread(%struct.TYPE_6__* %8, i8* bitcast (i32* @numcheats to i8*), i32 4, i32 1, i32* %31)
  %33 = load i32, i32* @numcheats, align 4
  %34 = call i32 @DoubleWordSwap(i32 %33)
  %35 = load i32, i32* @numcheats, align 4
  %36 = load i32, i32* @cheatsize, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %40 = load i32, i32* @cheatsize, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_7__* @realloc(%struct.TYPE_7__* %39, i32 %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** @cheatlist, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %47 = bitcast %struct.TYPE_7__* %46 to i8*
  %48 = load i32, i32* @cheatsize, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i8* %47, i32 0, i32 %52)
  %54 = load i32, i32* @cheatsize, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* @cheatsize, align 4
  br label %56

56:                                               ; preds = %38, %29
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %132, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @numcheats, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %135

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to i8*
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @yread(%struct.TYPE_6__* %8, i8* %67, i32 4, i32 1, i32* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = bitcast i32* %74 to i8*
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @yread(%struct.TYPE_6__* %8, i8* %75, i32 4, i32 1, i32* %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = bitcast i32* %82 to i8*
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @yread(%struct.TYPE_6__* %8, i8* %83, i32 4, i32 1, i32* %84)
  %86 = bitcast i32* %9 to i8*
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @yread(%struct.TYPE_6__* %8, i8* %86, i32 4, i32 1, i32* %87)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @yread(%struct.TYPE_6__* %8, i8* %89, i32 1, i32 %90, i32* %91)
  %93 = load i32, i32* %5, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %95 = call i32 @CheatChangeDescriptionByIndex(i32 %93, i8* %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = bitcast i32* %100 to i8*
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @yread(%struct.TYPE_6__* %8, i8* %101, i32 4, i32 1, i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DoubleWordSwap(i32 %109)
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @DoubleWordSwap(i32 %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DoubleWordSwap(i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cheatlist, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @DoubleWordSwap(i32 %130)
  br label %132

132:                                              ; preds = %61
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %57

135:                                              ; preds = %57
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @fclose(i32* %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %135, %26, %18, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @yread(%struct.TYPE_6__*, i8*, i32, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @CheatClearCodes(...) #2

declare dso_local i32 @DoubleWordSwap(i32) #2

declare dso_local %struct.TYPE_7__* @realloc(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @CheatChangeDescriptionByIndex(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
