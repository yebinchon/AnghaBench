; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeShell.c_vnodeCloseShellVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeShell.c_vnodeCloseShellVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@shellList = common dso_local global %struct.TYPE_6__** null, align 8
@vnodeList = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"vid:%d, free resources in 500ms\00", align 1
@vnodeDelayedFreeResource = common dso_local global i32 0, align 4
@vnodeTmrCtrl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeCloseShellVnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @shellList, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %5, i64 %7
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %12
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vnodeList, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %14, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %13
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @shellList, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vnodeFreeQInfo(i32 %33, i32 1)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %13

38:                                               ; preds = %13
  %39 = call i32* @malloc(i32 4)
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @dTrace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @vnodeDelayedFreeResource, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @vnodeTmrCtrl, align 4
  %47 = call i32 @taosTmrStart(i32 %44, i32 500, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @vnodeFreeQInfo(i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @dTrace(i8*, i32) #1

declare dso_local i32 @taosTmrStart(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
