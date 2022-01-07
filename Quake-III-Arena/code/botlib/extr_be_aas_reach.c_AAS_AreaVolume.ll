; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_AreaVolume.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_reach.c_AAS_AreaVolume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_10__ = type { i64, i32 }

@aasworld = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AAS_AreaVolume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %2, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 6), align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %17
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %14, align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 3), align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @abs(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %13, align 8
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 1), align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 5), align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @abs(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %12, align 8
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 4), align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @VectorCopy(i32 %46, i32 %47)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %102, %1
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %105

55:                                               ; preds = %49
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @abs(i32 %64)
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 3), align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %13, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %6, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @aasworld, i32 0, i32 2), align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = xor i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %83
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %11, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DotProduct(i32 %85, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %96 = call i32 @AAS_FaceArea(%struct.TYPE_8__* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %55
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %49

105:                                              ; preds = %49
  %106 = load i32, i32* %9, align 4
  %107 = sdiv i32 %106, 3
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sitofp i32 %108 to float
  ret float %109
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @DotProduct(i32, i32) #1

declare dso_local i32 @AAS_FaceArea(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
