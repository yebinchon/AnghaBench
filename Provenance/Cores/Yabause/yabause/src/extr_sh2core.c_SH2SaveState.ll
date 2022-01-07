; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2SaveState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2SaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_11__*, i64)* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i64, i64, i32, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"MSH2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SSH2\00", align 1
@yabsys = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@SH2Core = common dso_local global %struct.TYPE_14__* null, align 8
@MAX_INTERRUPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SH2SaveState(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @StateWriteHeader(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @StateWriteHeader(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* bitcast (%struct.TYPE_13__* @yabsys to i8*), i32 1, i32 1, i32* %20)
  br label %22

22:                                               ; preds = %17, %14
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = call i32 @SH2GetRegisters(%struct.TYPE_11__* %23, i32* %7)
  %25 = bitcast i32* %7 to i8*
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %25, i32 4, i32 1, i32* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 10
  %30 = bitcast i32* %29 to i8*
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %30, i32 4, i32 1, i32* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 9
  %43 = bitcast %struct.TYPE_10__* %42 to i8*
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %43, i32 4, i32 1, i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 9
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %57, %22
  %54 = load i32, i32* %8, align 4
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %53

63:                                               ; preds = %53
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SH2Core, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_11__*, i64)*, i32 (%struct.TYPE_11__*, i64)** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 %66(%struct.TYPE_11__* %67, i64 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* @MAX_INTERRUPTS, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %77, i32 4, i32 %78, i32* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 7
  %83 = bitcast i32* %82 to i8*
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %83, i32 4, i32 1, i32* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %89, i32 4, i32 256, i32* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %95, i32 4, i32 4096, i32* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 4
  %100 = bitcast i32* %99 to i8*
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %100, i32 4, i32 1, i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = bitcast i32* %104 to i8*
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %105, i32 4, i32 1, i32* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = bitcast i64* %109 to i8*
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %110, i32 4, i32 1, i32* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = bitcast i32* %114 to i8*
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %115, i32 4, i32 1, i32* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = bitcast i32* %119 to i8*
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @ywrite(%struct.TYPE_12__* %6, i8* %120, i32 4, i32 1, i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @StateFinishHeader(i32* %123, i32 %124)
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @StateWriteHeader(i32*, i8*, i32) #2

declare dso_local i32 @ywrite(%struct.TYPE_12__*, i8*, i32, i32, i32*) #2

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @StateFinishHeader(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
