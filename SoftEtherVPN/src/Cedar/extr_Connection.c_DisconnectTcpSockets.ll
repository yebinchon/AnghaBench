; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_DisconnectTcpSockets.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_DisconnectTcpSockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@CONNECTION_TCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"--- SOCKET STATUS ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" SOCK %2u: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisconnectTcpSockets(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CONNECTION_TCP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %71

18:                                               ; preds = %11
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %5, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @LockList(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_10__** @ToArray(i32 %28)
  store %struct.TYPE_10__** %29, %struct.TYPE_10__*** %6, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @LIST_NUM(i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DeleteAll(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @UnlockList(i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %18
  %45 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %64, %44
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %7, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %63 = call i32 @FreeTcpSock(%struct.TYPE_10__* %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i64, i64* %3, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %3, align 8
  br label %46

67:                                               ; preds = %46
  br label %68

68:                                               ; preds = %67, %18
  %69 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %70 = call i32 @Free(%struct.TYPE_10__** %69)
  br label %71

71:                                               ; preds = %68, %17, %10
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local %struct.TYPE_10__** @ToArray(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @DeleteAll(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local i32 @FreeTcpSock(%struct.TYPE_10__*) #1

declare dso_local i32 @Free(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
