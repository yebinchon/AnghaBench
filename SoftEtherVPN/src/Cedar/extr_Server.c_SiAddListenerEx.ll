; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAddListenerEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAddListenerEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@LISTENER_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiAddListenerEx(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %87

18:                                               ; preds = %14
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i64, i64* %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @LIST_NUM(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %11, align 8
  %31 = call %struct.TYPE_8__* @LIST_DATA(i32 %29, i64 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %10, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %87

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %11, align 8
  br label %19

42:                                               ; preds = %19
  %43 = call %struct.TYPE_8__* @ZeroMalloc(i32 24)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %42
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @LISTENER_TCP, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_10__* @NewListener(i32 %60, i32 %61, i64 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %57
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %57
  br label %81

81:                                               ; preds = %80, %42
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = call i32 @Insert(i32 %84, %struct.TYPE_8__* %85)
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %81, %37, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32, i64) #1

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_10__* @NewListener(i32, i32, i64) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
