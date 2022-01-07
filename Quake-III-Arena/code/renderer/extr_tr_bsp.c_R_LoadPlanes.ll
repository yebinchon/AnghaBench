; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadPlanes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_R_LoadPlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* (i32, i32)*, i32 (i32, i8*, i32)* }
%struct.TYPE_10__ = type { i64*, i32, i32, i8* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i32* }

@fileBase = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"LoadMap: funny lump size in %s\00", align 1
@s_worldData = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @R_LoadPlanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_LoadPlanes(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load i64, i64* @fileBase, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = urem i64 %19, 16
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 1), align 8
  %24 = load i32, i32* @ERR_DROP, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_worldData, i32 0, i32 2), align 8
  %26 = call i32 %23(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = udiv i64 %31, 16
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_10__* (i32, i32)*, %struct.TYPE_10__* (i32, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 24
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @h_low, align 4
  %41 = call %struct.TYPE_10__* %34(i32 %39, i32 %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %5, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_worldData, i32 0, i32 1), align 8
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_worldData, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %101, %27
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @LittleFloat(i32 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  store i64 %61, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %52
  %77 = load i32, i32* %4, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %76, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %49

85:                                               ; preds = %49
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @LittleFloat(i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @PlaneTypeForNormal(i64* %94)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 1
  store %struct.TYPE_9__* %105, %struct.TYPE_9__** %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 1
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %5, align 8
  br label %44

108:                                              ; preds = %44
  ret void
}

declare dso_local i8* @LittleFloat(i32) #1

declare dso_local i32 @PlaneTypeForNormal(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
