; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_FloodPortals.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_portals.c_FloodPortals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_7__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FloodPortals(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @P_AddNodeToList(%struct.TYPE_8__* %8)
  %10 = call %struct.TYPE_8__* (...) @P_NextNodeFromList()
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  br label %11

11:                                               ; preds = %86, %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %88

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  br label %18

18:                                               ; preds = %77, %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %85

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = icmp eq %struct.TYPE_8__* %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %21
  br label %77

44:                                               ; preds = %21
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @Portal_EntityFlood(%struct.TYPE_7__* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %77

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %57, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %54, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = call i32 @P_AddNodeToList(%struct.TYPE_8__* %75)
  br label %77

77:                                               ; preds = %50, %49, %43
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %80, i64 %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %4, align 8
  br label %18

85:                                               ; preds = %18
  br label %86

86:                                               ; preds = %85
  %87 = call %struct.TYPE_8__* (...) @P_NextNodeFromList()
  store %struct.TYPE_8__* %87, %struct.TYPE_8__** %3, align 8
  br label %11

88:                                               ; preds = %11
  ret void
}

declare dso_local i32 @P_AddNodeToList(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @P_NextNodeFromList(...) #1

declare dso_local i32 @Portal_EntityFlood(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
