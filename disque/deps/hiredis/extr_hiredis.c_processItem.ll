; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processItem.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_hiredis.c_processItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@REDIS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @processItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processItem(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i64 %11
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %4, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i8* @readBytes(%struct.TYPE_9__* %18, i32 1)
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  switch i32 %25, label %41 [
    i32 45, label %26
    i32 43, label %29
    i32 58, label %32
    i32 36, label %35
    i32 42, label %38
  ]

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 131, i32* %28, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 129, i32* %31, align 4
  br label %47

32:                                               ; preds = %21
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 130, i32* %34, align 4
  br label %47

35:                                               ; preds = %21
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  br label %47

38:                                               ; preds = %21
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 132, i32* %40, align 4
  br label %47

41:                                               ; preds = %21
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @__redisReaderSetErrorProtocolByte(%struct.TYPE_9__* %42, i8 signext %44)
  %46 = load i32, i32* @REDIS_ERR, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %38, %35, %32, %29, %26
  br label %50

48:                                               ; preds = %17
  %49 = load i32, i32* @REDIS_ERR, align 4
  store i32 %49, i32* %2, align 4
  br label %67

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %64 [
    i32 131, label %55
    i32 129, label %55
    i32 130, label %55
    i32 128, label %58
    i32 132, label %61
  ]

55:                                               ; preds = %51, %51, %51
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = call i32 @processLineItem(%struct.TYPE_9__* %56)
  store i32 %57, i32* %2, align 4
  br label %67

58:                                               ; preds = %51
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = call i32 @processBulkItem(%struct.TYPE_9__* %59)
  store i32 %60, i32* %2, align 4
  br label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @processMultiBulkItem(%struct.TYPE_9__* %62)
  store i32 %63, i32* %2, align 4
  br label %67

64:                                               ; preds = %51
  %65 = call i32 @assert(i32* null)
  %66 = load i32, i32* @REDIS_ERR, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %64, %61, %58, %55, %48, %41
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @readBytes(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @__redisReaderSetErrorProtocolByte(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @processLineItem(%struct.TYPE_9__*) #1

declare dso_local i32 @processBulkItem(%struct.TYPE_9__*) #1

declare dso_local i32 @processMultiBulkItem(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
