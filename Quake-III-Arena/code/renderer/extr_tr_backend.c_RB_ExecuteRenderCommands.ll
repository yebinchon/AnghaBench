; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RB_ExecuteRenderCommands.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_RB_ExecuteRenderCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (...)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ri = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_smp = common dso_local global %struct.TYPE_10__* null, align 8
@backEndData = common dso_local global %struct.TYPE_11__** null, align 8
@backEnd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_ExecuteRenderCommands(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %6 = call i32 (...) %5()
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_smp, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @backEndData, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %13, i64 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %12, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11, %1
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 0), align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %52
  %24 = load i8*, i8** %2, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %46 [
    i32 130, label %27
    i32 129, label %30
    i32 133, label %33
    i32 134, label %36
    i32 128, label %39
    i32 131, label %42
    i32 132, label %45
  ]

27:                                               ; preds = %23
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @RB_SetColor(i8* %28)
  store i8* %29, i8** %2, align 8
  br label %52

30:                                               ; preds = %23
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @RB_StretchPic(i8* %31)
  store i8* %32, i8** %2, align 8
  br label %52

33:                                               ; preds = %23
  %34 = load i8*, i8** %2, align 8
  %35 = call i8* @RB_DrawSurfs(i8* %34)
  store i8* %35, i8** %2, align 8
  br label %52

36:                                               ; preds = %23
  %37 = load i8*, i8** %2, align 8
  %38 = call i8* @RB_DrawBuffer(i8* %37)
  store i8* %38, i8** %2, align 8
  br label %52

39:                                               ; preds = %23
  %40 = load i8*, i8** %2, align 8
  %41 = call i8* @RB_SwapBuffers(i8* %40)
  store i8* %41, i8** %2, align 8
  br label %52

42:                                               ; preds = %23
  %43 = load i8*, i8** %2, align 8
  %44 = call i8* @RB_TakeScreenshotCmd(i8* %43)
  store i8* %44, i8** %2, align 8
  br label %52

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %23, %45
  %47 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ri, i32 0, i32 0), align 8
  %48 = call i32 (...) %47()
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @backEnd, i32 0, i32 1, i32 0), align 4
  ret void

52:                                               ; preds = %42, %39, %36, %33, %30, %27
  br label %23
}

declare dso_local i8* @RB_SetColor(i8*) #1

declare dso_local i8* @RB_StretchPic(i8*) #1

declare dso_local i8* @RB_DrawSurfs(i8*) #1

declare dso_local i8* @RB_DrawBuffer(i8*) #1

declare dso_local i8* @RB_SwapBuffers(i8*) #1

declare dso_local i8* @RB_TakeScreenshotCmd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
