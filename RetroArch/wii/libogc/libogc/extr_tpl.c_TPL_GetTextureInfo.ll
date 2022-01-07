; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureInfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_tpl.c_TPL_GetTextureInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TPL_GetTextureInfo(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %13, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %70

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %17
  store i32 -1, i32* %6, align 4
  br label %70

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 -1, i32* %6, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %13, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %70

45:                                               ; preds = %35
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %64, %61
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %44, %34, %26, %16
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
