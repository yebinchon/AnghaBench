; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_WriteAsync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c_CARD_WriteAsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32* }

@CARD_ERROR_FATAL_ERROR = common dso_local global i32 0, align 4
@__card_defaultapicallback = common dso_local global i32* null, align 8
@__erase_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CARD_WriteAsync(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
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
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @__card_seek(%struct.TYPE_7__* %15, i32 %16, i32 %17, %struct.TYPE_8__** %14)
  store i32 %18, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %85

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %37, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36, %25, %22
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  %47 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %45, i32 %46)
  %48 = load i32, i32* @CARD_ERROR_FATAL_ERROR, align 4
  store i32 %48, i32* %6, align 4
  br label %85

49:                                               ; preds = %36, %33
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @DCStoreRange(i8* %50, i32 %51)
  %53 = load i32*, i32** %11, align 8
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32*, i32** @__card_defaultapicallback, align 8
  store i32* %57, i32** %13, align 8
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32*, i32** %13, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load i32, i32* @__erase_callback, align 4
  %76 = call i32 @__card_sectorerase(i32 %67, i32 %74, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %85

80:                                               ; preds = %58
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @__card_putcntrlblock(%struct.TYPE_8__* %81, i32 %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %80, %78, %44, %20
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @__card_seek(%struct.TYPE_7__*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DCStoreRange(i8*, i32) #1

declare dso_local i32 @__card_sectorerase(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
