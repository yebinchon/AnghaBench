; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_plane.c_R_FindPlane.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_plane.c_R_FindPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32 }

@skyflatnum = common dso_local global i32 0, align 4
@visplanes = common dso_local global %struct.TYPE_5__* null, align 8
@lastvisplane = common dso_local global %struct.TYPE_5__* null, align 8
@MAXVISPLANES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"R_FindPlane: no more visplanes\00", align 1
@SCREENWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @R_FindPlane(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @skyflatnum, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @visplanes, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  br label %15

15:                                               ; preds = %39, %13
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lastvisplane, align 8
  %18 = icmp ult %struct.TYPE_5__* %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %42

38:                                               ; preds = %31, %25, %19
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 1
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %8, align 8
  br label %15

42:                                               ; preds = %37, %15
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lastvisplane, align 8
  %45 = icmp ult %struct.TYPE_5__* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %4, align 8
  br label %82

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lastvisplane, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @visplanes, align 8
  %51 = ptrtoint %struct.TYPE_5__* %49 to i64
  %52 = ptrtoint %struct.TYPE_5__* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 32
  %55 = load i32, i32* @MAXVISPLANES, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = call i32 @I_Error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lastvisplane, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 1
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** @lastvisplane, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @SCREENWIDTH, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i32 -1, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @memset(i32 %79, i32 255, i32 4)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %4, align 8
  br label %82

82:                                               ; preds = %60, %46
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %83
}

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
