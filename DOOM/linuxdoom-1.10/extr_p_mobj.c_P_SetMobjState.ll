; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SetMobjState.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_SetMobjState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__* }

@S_NULL = common dso_local global i64 0, align 8
@states = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @P_SetMobjState(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @S_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64, i64* @S_NULL, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @P_RemoveMobj(%struct.TYPE_10__* %16)
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %7
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @states, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %6, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_10__*)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %18
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 %49(%struct.TYPE_10__* %50)
  br label %52

52:                                               ; preds = %45, %18
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %7, label %62

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
