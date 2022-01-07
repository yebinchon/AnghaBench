; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSession.c_httpCreateSession.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_httpSession.c_httpCreateSession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [70 x i8] c"context:%p, fd:%d, ip:%s, user:%s, set exist session:%p:%s:%p expired\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"context:%p, fd:%d, ip:%s, user:%s, error:%s\00", align 1
@httpMsg = common dso_local global i32* null, align 8
@HTTP_SESSION_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"context:%p, fd:%d, ip:%s, user:%s, create a new session:%p:%s:%p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpCreateSession(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp eq %struct.TYPE_10__* %22, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %19
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @httpTrace(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %30, i32 %33, i32 %36, i32 %39, %struct.TYPE_10__* %42, i32 %47, i8* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %29, %19, %2
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i8* %65, i8** %66, align 8
  %67 = call i64 (...) @taosGetTimestampSec()
  %68 = trunc i64 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 4
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strcpy(i32 %77, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = bitcast %struct.TYPE_10__* %6 to i8*
  %88 = call i64 @taosAddStrHash(i32 %84, i32 %86, i8* %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_10__*
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = icmp eq %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %117

96:                                               ; preds = %64
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** @httpMsg, align 8
  %108 = load i64, i64* @HTTP_SESSION_FULL, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @httpError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %97, i32 %100, i32 %103, i32 %106, i32 %110)
  %112 = load i8*, i8** %4, align 8
  %113 = call i32 @taos_close(i8* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = call i32 @pthread_mutex_unlock(i32* %115)
  br label %152

117:                                              ; preds = %64
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %124, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @httpTrace(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %125, i32 %128, i32 %131, i32 %134, %struct.TYPE_10__* %137, i32 %142, i8* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = call i32 @pthread_mutex_unlock(i32* %150)
  br label %152

152:                                              ; preds = %117, %96
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @httpTrace(i8*, %struct.TYPE_12__*, i32, i32, i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i64 @taosGetTimestampSec(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @taosAddStrHash(i32, i32, i8*) #1

declare dso_local i32 @httpError(i8*, %struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @taos_close(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
