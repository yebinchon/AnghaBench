; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosDeleteStrHashNode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_shash.c_taosDeleteStrHashNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_7__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64, i64 (%struct.TYPE_8__*, i8*)*, i32, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [25 x i8] c"hash:%d:%s:%p is removed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosDeleteStrHashNode(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %3
  br label %118

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  br label %118

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64 (%struct.TYPE_8__*, i8*)*, i64 (%struct.TYPE_8__*, i8*)** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 %34(%struct.TYPE_8__* %35, i8* %36)
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = call i32 @pthread_mutex_lock(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  br label %47

47:                                               ; preds = %65, %57, %31
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i64 @strcmp(i32 %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %47

58:                                               ; preds = %50
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  br label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %8, align 8
  br label %47

69:                                               ; preds = %64, %47
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %69
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = icmp ne %struct.TYPE_7__* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %84, align 8
  br label %94

85:                                               ; preds = %72
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %91, i64 %92
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %93, align 8
  br label %94

94:                                               ; preds = %85, %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = icmp ne %struct.TYPE_9__* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %106, align 8
  br label %107

107:                                              ; preds = %99, %94
  %108 = load i64, i64* %7, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = call i32 @pTrace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %108, i8* %109, %struct.TYPE_9__* %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %113 = call i32 @free(%struct.TYPE_9__* %112)
  br label %114

114:                                              ; preds = %107, %69
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = call i32 @pthread_mutex_unlock(i32* %116)
  br label %118

118:                                              ; preds = %114, %30, %20
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @pTrace(i8*, i64, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
