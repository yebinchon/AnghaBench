; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_MakeEdge.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_MakeEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i64, i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_8__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, %struct.TYPE_8__*)* @MakeEdge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @MakeEdge(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @bucketAlloc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = icmp eq %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %89

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = icmp ult %struct.TYPE_8__* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %5, align 8
  br label %32

32:                                               ; preds = %28, %18
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 7
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 7
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %56, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 5
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %79, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %3, align 8
  br label %89

89:                                               ; preds = %32, %17
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %90
}

declare dso_local i64 @bucketAlloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
