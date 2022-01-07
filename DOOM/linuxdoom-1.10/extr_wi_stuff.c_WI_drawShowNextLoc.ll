; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawShowNextLoc.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_drawShowNextLoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@wbs = common dso_local global %struct.TYPE_2__* null, align 8
@splat = common dso_local global i32 0, align 4
@snl_pointeron = common dso_local global i64 0, align 8
@yah = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_drawShowNextLoc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @WI_slamBackground()
  %4 = call i32 (...) @WI_drawAnimatedBack()
  %5 = load i64, i64* @gamemode, align 8
  %6 = load i64, i64* @commercial, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @WI_drawEL()
  br label %69

15:                                               ; preds = %8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  store i32 %30, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %38, %29
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @WI_drawOnLnode(i32 %36, i32* @splat)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @WI_drawOnLnode(i32 8, i32* @splat)
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i64, i64* @snl_pointeron, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** @yah, align 8
  %56 = call i32 @WI_drawOnLnode(i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %0
  %59 = load i64, i64* @gamemode, align 8
  %60 = load i64, i64* @commercial, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wbs, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 30
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %58
  %68 = call i32 (...) @WI_drawEL()
  br label %69

69:                                               ; preds = %13, %67, %62
  ret void
}

declare dso_local i32 @WI_slamBackground(...) #1

declare dso_local i32 @WI_drawAnimatedBack(...) #1

declare dso_local i32 @WI_drawEL(...) #1

declare dso_local i32 @WI_drawOnLnode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
