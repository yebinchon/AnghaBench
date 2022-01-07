; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_dict.c_get_locate_index.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_dict.c_get_locate_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i8*)*, %struct.TYPE_9__, i32 (i32, i8*)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32*)* @get_locate_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_locate_index(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %11, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 %14(%struct.TYPE_7__* %15, i8* %16)
  store i32 %17, i32* %10, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.TYPE_8__* @kxld_array_get_item(%struct.TYPE_9__* %19, i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %8, align 8
  br label %22

22:                                               ; preds = %52, %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32 (i32, i8*)*, i32 (i32, i8*)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 %25(i32 %28, i8* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EMPTY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %69

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %42, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %69

52:                                               ; preds = %40
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.TYPE_8__* @kxld_array_get_item(%struct.TYPE_9__* %54, i32 %55)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %8, align 8
  br label %22

57:                                               ; preds = %22
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @check(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %6, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %57, %51, %39
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_8__* @kxld_array_get_item(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @check(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
