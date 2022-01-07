; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Text_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Text_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (i32, i32, i32, i32, i8*, i32, i32, i32)*, i32 (i32*, i8*, i32)* }
%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_11__, i32*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@WINDOW_WRAPPED = common dso_local global i32 0, align 4
@WINDOW_AUTOWRAPPED = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Text_Paint(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WINDOW_WRAPPED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = call i32 @Item_Text_Wrapped_Paint(%struct.TYPE_12__* %16)
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WINDOW_AUTOWRAPPED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = call i32 @Item_Text_AutoWrapped_Paint(%struct.TYPE_12__* %27)
  br label %87

29:                                               ; preds = %18
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %87

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32 (i32*, i8*, i32)*, i32 (i32*, i8*, i32)** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %48 = call i32 %43(i32* %46, i8* %47, i32 1024)
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %29
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @Item_SetTextExtents(%struct.TYPE_12__* %56, i32* %6, i32* %5, i8* %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %87

64:                                               ; preds = %55
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = call i32 @Item_TextColor(%struct.TYPE_12__* %65, i32* %7)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @DC, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32 (i32, i32, i32, i32, i8*, i32, i32, i32)*, i32 (i32, i32, i32, i32, i8*, i32, i32, i32)** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %69(i32 %73, i32 %77, i32 %80, i32 %81, i8* %82, i32 0, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %64, %63, %39, %26, %15
  ret void
}

declare dso_local i32 @Item_Text_Wrapped_Paint(%struct.TYPE_12__*) #1

declare dso_local i32 @Item_Text_AutoWrapped_Paint(%struct.TYPE_12__*) #1

declare dso_local i32 @Item_SetTextExtents(%struct.TYPE_12__*, i32*, i32*, i8*) #1

declare dso_local i32 @Item_TextColor(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
