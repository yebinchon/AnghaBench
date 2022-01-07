; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tmodule.c_taosInitModule.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tmodule.c_taosInitModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 (...)*, i32, i64, i64, i64, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"ERROR: init %s queueMutex failed, reason:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ERROR: init %s stmMutex failed, reason:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"ERROR: init %s empty semaphore failed, reason:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"ERROR: init %s full semaphore failed, reason:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR: %s no enough memory, reason:%s\0A\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@taosProcessQueue = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"ERROR: %s failed to create thread, reason:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosInitModule(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 10
  %7 = call i64 @pthread_mutex_init(i32* %6, i32* null)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i8* @strerror(i32 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %16)
  store i32 -1, i32* %2, align 4
  br label %126

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = call i64 @pthread_mutex_init(i32* %20, i32* null)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %30)
  store i32 -1, i32* %2, align 4
  br label %126

32:                                               ; preds = %18
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @tsem_init(i32* %34, i32 0, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %48)
  store i32 -1, i32* %2, align 4
  br label %126

50:                                               ; preds = %32
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 7
  %53 = call i64 @tsem_init(i32* %52, i32 0, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* @errno, align 4
  %60 = call i8* @strerror(i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %62)
  store i32 -1, i32* %2, align 4
  br label %126

64:                                               ; preds = %50
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %67, 4
  %69 = call i64 @malloc(i64 %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  store i32* %70, i32** %72, align 8
  %73 = icmp eq i32* %70, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @errno, align 4
  %79 = call i8* @strerror(i32 %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %81)
  store i32 -1, i32* %2, align 4
  br label %126

83:                                               ; preds = %64
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = mul i64 %89, 4
  %91 = call i32 @memset(i32* %86, i32 0, i64 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = call i32 @pthread_attr_init(i32* %4)
  %97 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %98 = call i32 @pthread_attr_setdetachstate(i32* %4, i32 %97)
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* @taosProcessQueue, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = bitcast %struct.TYPE_4__* %102 to i8*
  %104 = call i64 @pthread_create(i32* %100, i32* %4, i32 %101, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %83
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @errno, align 4
  %111 = call i8* @strerror(i32 %110)
  %112 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %109, i8* %111)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %114 = call i32 @taosCleanUpModule(%struct.TYPE_4__* %113)
  store i32 -1, i32* %2, align 4
  br label %126

115:                                              ; preds = %83
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32 (...)*, i32 (...)** %117, align 8
  %119 = icmp ne i32 (...)* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32 (...)*, i32 (...)** %122, align 8
  %124 = call i32 (...) %123()
  store i32 %124, i32* %2, align 4
  br label %126

125:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %120, %106, %74, %55, %41, %23, %9
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @taosCleanUpModule(%struct.TYPE_4__*) #1

declare dso_local i64 @tsem_init(i32*, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
