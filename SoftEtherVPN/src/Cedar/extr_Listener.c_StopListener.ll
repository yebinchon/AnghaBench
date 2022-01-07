; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_StopListener.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_StopListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_8__*, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@LISTENER_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"LS_LISTENER_STOP_1\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"LS_LISTENER_STOP_2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StopListener(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = icmp eq %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %116

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @Lock(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @Unlock(i32 %20)
  br label %116

22:                                               ; preds = %8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 9
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 9
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @AddRef(i32 %35)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @Unlock(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %3, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LISTENER_TCP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @SLog(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %55, %49, %37
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = icmp ne %struct.TYPE_7__* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = call i32 @Disconnect(%struct.TYPE_7__* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = call i32 @ReleaseSock(%struct.TYPE_7__* %67)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %69

69:                                               ; preds = %64, %61
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @Set(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @INFINITE, align 4
  %78 = call i32 @WaitThread(i32 %76, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %69
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  call void @StopListener(%struct.TYPE_8__* %91)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = call i32 @ReleaseListener(%struct.TYPE_8__* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %97, align 8
  br label %98

98:                                               ; preds = %88, %83
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LISTENER_TCP, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @SLog(i32 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %7, %17, %110, %104, %99
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i32 @SLog(i32, i8*, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_7__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_7__*) #1

declare dso_local i32 @Set(i32) #1

declare dso_local i32 @WaitThread(i32, i32) #1

declare dso_local i32 @ReleaseListener(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
