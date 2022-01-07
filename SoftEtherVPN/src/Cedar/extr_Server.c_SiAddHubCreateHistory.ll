; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAddHubCreateHistory.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiAddHubCreateHistory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiAddHubCreateHistory(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  br label %69

14:                                               ; preds = %10
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LockList(i32 %17)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %41, %14
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @LIST_NUM(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.TYPE_8__* @LIST_DATA(i32 %29, i64 %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @StrCmpi(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  br label %44

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %19

44:                                               ; preds = %38, %19
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = call %struct.TYPE_8__* @ZeroMalloc(i32 8)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %6, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @StrCpy(i32 %51, i32 4, i8* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @Add(i32 %56, %struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %47, %44
  %60 = call i32 (...) @Tick64()
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @UnlockList(i32 %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @SiDeleteOldHubCreateHistory(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_8__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32 @Add(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @SiDeleteOldHubCreateHistory(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
