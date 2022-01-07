; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_RemoveMobj.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_mobj.c_P_RemoveMobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }

@MF_SPECIAL = common dso_local global i32 0, align 4
@MF_DROPPED = common dso_local global i32 0, align 4
@MT_INV = common dso_local global i64 0, align 8
@MT_INS = common dso_local global i64 0, align 8
@itemrespawnque = common dso_local global i32* null, align 8
@iquehead = common dso_local global i64 0, align 8
@leveltime = common dso_local global i32 0, align 4
@itemrespawntime = common dso_local global i32* null, align 8
@ITEMQUESIZE = common dso_local global i32 0, align 4
@iquetail = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_RemoveMobj(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @MF_SPECIAL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %56

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MF_DROPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MT_INV, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MT_INS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** @itemrespawnque, align 8
  %33 = load i64, i64* @iquehead, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @leveltime, align 4
  %36 = load i32*, i32** @itemrespawntime, align 8
  %37 = load i64, i64* @iquehead, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load i64, i64* @iquehead, align 8
  %40 = add i64 %39, 1
  %41 = load i32, i32* @ITEMQUESIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = and i64 %40, %43
  store i64 %44, i64* @iquehead, align 8
  %45 = load i64, i64* @iquehead, align 8
  %46 = load i64, i64* @iquetail, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %28
  %49 = load i64, i64* @iquetail, align 8
  %50 = add i64 %49, 1
  %51 = load i32, i32* @ITEMQUESIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = and i64 %50, %53
  store i64 %54, i64* @iquetail, align 8
  br label %55

55:                                               ; preds = %48, %28
  br label %56

56:                                               ; preds = %55, %22, %16, %9, %1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = call i32 @P_UnsetThingPosition(%struct.TYPE_5__* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = call i32 @S_StopSound(%struct.TYPE_5__* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = bitcast %struct.TYPE_5__* %61 to i32*
  %63 = call i32 @P_RemoveThinker(i32* %62)
  ret void
}

declare dso_local i32 @P_UnsetThingPosition(%struct.TYPE_5__*) #1

declare dso_local i32 @S_StopSound(%struct.TYPE_5__*) #1

declare dso_local i32 @P_RemoveThinker(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
