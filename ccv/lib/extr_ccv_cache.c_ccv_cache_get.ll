; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_ccv_cache_get.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_cache.c_ccv_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ccv_cache_get(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %63

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %6, align 8
  %19 = call %struct.TYPE_8__* @_ccv_cache_seek(i32* %17, i64 %18, i32 0)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i8* null, i8** %4, align 8
  br label %63

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  br label %63

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @CCV_GET_CACHE_TYPE(i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 3
  %60 = sub nsw i32 %54, %59
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %50, %39, %31, %22, %14
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local %struct.TYPE_8__* @_ccv_cache_seek(i32*, i64, i32) #1

declare dso_local i32 @CCV_GET_CACHE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
