; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_AddSprites.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_AddSprites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@validcount = common dso_local global i64 0, align 8
@LIGHTSEGSHIFT = common dso_local global i32 0, align 4
@extralight = common dso_local global i32 0, align 4
@scalelight = common dso_local global i32* null, align 8
@spritelights = common dso_local global i32 0, align 4
@LIGHTLEVELS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_AddSprites(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @validcount, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %60

11:                                               ; preds = %1
  %12 = load i64, i64* @validcount, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LIGHTSEGSHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @extralight, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load i32*, i32** @scalelight, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @spritelights, align 4
  br label %46

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @LIGHTLEVELS, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32*, i32** @scalelight, align 8
  %34 = load i32, i32* @LIGHTLEVELS, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* @spritelights, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load i32*, i32** @scalelight, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* @spritelights, align 4
  br label %45

45:                                               ; preds = %39, %32
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %3, align 8
  br label %50

50:                                               ; preds = %56, %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = call i32 @R_ProjectSprite(%struct.TYPE_6__* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %3, align 8
  br label %50

60:                                               ; preds = %10, %50
  ret void
}

declare dso_local i32 @R_ProjectSprite(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
