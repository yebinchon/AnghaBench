; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawMasked.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawMasked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i64 }

@vissprite_p = common dso_local global i64 0, align 8
@vissprites = common dso_local global i64 0, align 8
@vsprsortedhead = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ds_p = common dso_local global %struct.TYPE_9__* null, align 8
@drawsegs = common dso_local global %struct.TYPE_9__* null, align 8
@viewangleoffset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawMasked() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = call i32 (...) @R_SortVisSprites()
  %4 = load i64, i64* @vissprite_p, align 8
  %5 = load i64, i64* @vissprites, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vsprsortedhead, i32 0, i32 0), align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %1, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, @vsprsortedhead
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %14 = call i32 @R_DrawSprite(%struct.TYPE_8__* %13)
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %1, align 8
  br label %9

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ds_p, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 -1
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %2, align 8
  br label %23

23:                                               ; preds = %42, %20
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @drawsegs, align 8
  %26 = icmp uge %struct.TYPE_9__* %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @R_RenderMaskedSegRange(%struct.TYPE_9__* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %32, %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 -1
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %2, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* @viewangleoffset, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @R_DrawPlayerSprites()
  br label %50

50:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @R_SortVisSprites(...) #1

declare dso_local i32 @R_DrawSprite(%struct.TYPE_8__*) #1

declare dso_local i32 @R_RenderMaskedSegRange(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @R_DrawPlayerSprites(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
