; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_plats.c_P_RemoveActivePlat.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_plats.c_P_RemoveActivePlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@MAXPLATS = common dso_local global i32 0, align 4
@activeplats = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"P_RemoveActivePlat: can't find plat!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_RemoveActivePlat(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %37, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXPLATS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %40

8:                                                ; preds = %4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @activeplats, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %10, i64 %12
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp eq %struct.TYPE_6__* %9, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %8
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @activeplats, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @activeplats, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i32 @P_RemoveThinker(i32* %30)
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @activeplats, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %32, i64 %34
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %35, align 8
  br label %42

36:                                               ; preds = %8
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %4

40:                                               ; preds = %4
  %41 = call i32 @I_Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @P_RemoveThinker(i32*) #1

declare dso_local i32 @I_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
