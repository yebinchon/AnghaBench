; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_AASToTetrahedrons.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_AASToTetrahedrons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [18 x i8] c"couldn't load %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"BAH\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%6d triangles\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TH_AASToTetrahedrons(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @AAS_LoadAASFile(i8* %7, i32 0, i32 0)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @TH_InitMaxTH()
  %15 = call %struct.TYPE_4__* (...) @TH_AASToTriangleMesh()
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %4, align 8
  br label %17

17:                                               ; preds = %32, %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = icmp ne %struct.TYPE_4__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %20
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %5, align 8
  br label %32

32:                                               ; preds = %30
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %4, align 8
  br label %17

36:                                               ; preds = %17
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, ...) @Log_Print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = call i32 @TH_TetrahedralDecomposition(%struct.TYPE_4__* %39)
  %41 = call i32 (...) @TH_FreeMaxTH()
  ret void
}

declare dso_local i32 @AAS_LoadAASFile(i8*, i32, i32) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local i32 @TH_InitMaxTH(...) #1

declare dso_local %struct.TYPE_4__* @TH_AASToTriangleMesh(...) #1

declare dso_local i32 @Log_Print(i8*, ...) #1

declare dso_local i32 @TH_TetrahedralDecomposition(%struct.TYPE_4__*) #1

declare dso_local i32 @TH_FreeMaxTH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
