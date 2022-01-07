; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processLineItem.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processLineItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8*, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i8* (%struct.TYPE_12__*, i8*, i32)*, i8* (%struct.TYPE_12__*, i32)* }
%struct.TYPE_12__ = type { i64 }

@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@REDIS_ERR = common dso_local global i32 0, align 4
@REDIS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @processLineItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processLineItem(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i64 %13
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i8* @readLine(%struct.TYPE_11__* %15, i32* %7)
  store i8* %16, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %98

18:                                               ; preds = %1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i8* (%struct.TYPE_12__*, i32)*, i8* (%struct.TYPE_12__*, i32)** %33, align 8
  %35 = icmp ne i8* (%struct.TYPE_12__*, i32)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i8* (%struct.TYPE_12__*, i32)*, i8* (%struct.TYPE_12__*, i32)** %40, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @readLongLong(i8* %43)
  %45 = call i8* %41(%struct.TYPE_12__* %42, i32 %44)
  store i8* %45, i8** %5, align 8
  br label %49

46:                                               ; preds = %29, %24
  %47 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %5, align 8
  br label %49

49:                                               ; preds = %46, %36
  br label %78

50:                                               ; preds = %18
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = icmp ne %struct.TYPE_10__* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i8* (%struct.TYPE_12__*, i8*, i32)*, i8* (%struct.TYPE_12__*, i8*, i32)** %59, align 8
  %61 = icmp ne i8* (%struct.TYPE_12__*, i8*, i32)* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i8* (%struct.TYPE_12__*, i8*, i32)*, i8* (%struct.TYPE_12__*, i8*, i32)** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i8* %67(%struct.TYPE_12__* %68, i8* %69, i32 %70)
  store i8* %71, i8** %5, align 8
  br label %77

72:                                               ; preds = %55, %50
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %5, align 8
  br label %77

77:                                               ; preds = %72, %62
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i8*, i8** %5, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = call i32 @__redisReaderSetErrorOOM(%struct.TYPE_11__* %82)
  %84 = load i32, i32* @REDIS_ERR, align 4
  store i32 %84, i32* %2, align 4
  br label %100

85:                                               ; preds = %78
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = call i32 @moveToNextTask(%struct.TYPE_11__* %95)
  %97 = load i32, i32* @REDIS_OK, align 4
  store i32 %97, i32* %2, align 4
  br label %100

98:                                               ; preds = %1
  %99 = load i32, i32* @REDIS_ERR, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %94, %81
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @readLine(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @readLongLong(i8*) #1

declare dso_local i32 @__redisReaderSetErrorOOM(%struct.TYPE_11__*) #1

declare dso_local i32 @moveToNextTask(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
