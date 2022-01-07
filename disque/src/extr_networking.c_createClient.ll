; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_createClient.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_createClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_9__, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i32*, i32, i32*, i64, i64, i64, i32, i64, i32*, i64 }
%struct.TYPE_9__ = type { i32, i32*, i64, i64 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@readQueryFromClient = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@freeClientReplyValue = common dso_local global i32 0, align 4
@dupClientReplyValue = common dso_local global i32 0, align 4
@BLOCKED_NONE = common dso_local global i32 0, align 4
@setDictType = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @createClient(i32 %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.TYPE_10__* @zmalloc(i32 192)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @anetNonBlock(i32* null, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @anetEnableTcpNoDelay(i32* null, i32 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 4), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 4), align 8
  %18 = call i32 @anetKeepAlive(i32* null, i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 3), align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AE_READABLE, align 4
  %23 = load i32, i32* @readQueryFromClient, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = call i64 @aeCreateFileEvent(i32 %20, i32 %21, i32 %22, i32 %23, %struct.TYPE_10__* %24)
  %26 = load i64, i64* @AE_ERR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 @zfree(%struct.TYPE_10__* %31)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %120

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 2), align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 2), align 8
  %37 = sext i32 %35 to i64
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 23
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 22
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 21
  store i64 0, i64* %46, align 8
  %47 = call i32 (...) @sdsempty()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 20
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 19
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 18
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 17
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 16
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 14
  store i32* null, i32** %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 15
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 13
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 -1, i32* %65, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 12
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 11
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 1), align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 10
  store i32 %70, i32* %74, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 8
  store i64 0, i64* %76, align 8
  %77 = call i32 (...) @listCreate()
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @freeClientReplyValue, align 4
  %88 = call i32 @listSetFreeMethod(i32 %86, i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @dupClientReplyValue, align 4
  %93 = call i32 @listSetDupMethod(i32 %91, i32 %92)
  %94 = load i32, i32* @BLOCKED_NONE, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = call i32 @dictCreate(i32* @setDictType, i32* null)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %34
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = call i32 @listAddNodeTail(i32 %115, %struct.TYPE_10__* %116)
  br label %118

118:                                              ; preds = %114, %34
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %2, align 8
  br label %120

120:                                              ; preds = %118, %28
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %121
}

declare dso_local %struct.TYPE_10__* @zmalloc(i32) #1

declare dso_local i32 @anetNonBlock(i32*, i32) #1

declare dso_local i32 @anetEnableTcpNoDelay(i32*, i32) #1

declare dso_local i32 @anetKeepAlive(i32*, i32, i64) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @zfree(%struct.TYPE_10__*) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @listCreate(...) #1

declare dso_local i32 @listSetFreeMethod(i32, i32) #1

declare dso_local i32 @listSetDupMethod(i32, i32) #1

declare dso_local i32 @dictCreate(i32*, i32*) #1

declare dso_local i32 @listAddNodeTail(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
