; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_ReadAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_ReadAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@CARD_ERROR_FATAL_ERROR = common dso_local global i32 0, align 4
@__card_defaultapicallback = common dso_local global i32* null, align 8
@__read_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARD_ReadAsync(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %13, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 511
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 511
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %17, %5
  %29 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  store i32 %29, i32* %6, align 4
  br label %100

30:                                               ; preds = %24, %21
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @__card_seek(%struct.TYPE_7__* %31, i32 %32, i32 %33, %struct.TYPE_8__** %14)
  store i32 %34, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %100

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DCInvalidateRange(i8* %39, i32 %40)
  %42 = load i32*, i32** %11, align 8
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %38
  %46 = load i32*, i32** @__card_defaultapicallback, align 8
  store i32* %46, i32** %13, align 8
  br label %47

47:                                               ; preds = %45, %38
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %57, %61
  %63 = sub nsw i32 %54, %62
  %64 = icmp sge i32 %51, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %47
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %71, %75
  %77 = sub nsw i32 %68, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %65, %47
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* @__read_callback, align 4
  %92 = call i32 @__card_read(i32 %81, i32 %88, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %100

99:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %94, %36, %28
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @__card_seek(%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @DCInvalidateRange(i8*, i32) #1

declare dso_local i32 @__card_read(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
