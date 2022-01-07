; ModuleID = '/home/carl/AnghaBench/disque/src/extr_networking.c_handleClientsWithPendingWrites.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_networking.c_handleClientsWithPendingWrites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CLIENT_PENDING_WRITE = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@AE_WRITABLE = common dso_local global i32 0, align 4
@sendReplyToClient = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handleClientsWithPendingWrites() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %6 = call i32 @listLength(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %8 = call i32 @listRewind(i32 %7, i32* %1)
  br label %9

9:                                                ; preds = %50, %31, %0
  %10 = call i32* @listNext(i32* %1)
  store i32* %10, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = call %struct.TYPE_8__* @listNodeValue(i32* %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %4, align 8
  %15 = load i32, i32* @CLIENT_PENDING_WRITE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @listDelNode(i32 %21, i32* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i64 @writeToClient(i32 %26, %struct.TYPE_8__* %27, i32 0)
  %29 = load i64, i64* @C_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  br label %9

32:                                               ; preds = %12
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = call i64 @clientHasPendingReplies(%struct.TYPE_8__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AE_WRITABLE, align 4
  %42 = load i32, i32* @sendReplyToClient, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = call i64 @aeCreateFileEvent(i32 %37, i32 %40, i32 %41, i32 %42, %struct.TYPE_8__* %43)
  %45 = load i64, i64* @AE_ERR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = call i32 @freeClientAsync(%struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %47, %36, %32
  br label %9

51:                                               ; preds = %9
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @listLength(i32) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i32* @listNext(i32*) #1

declare dso_local %struct.TYPE_8__* @listNodeValue(i32*) #1

declare dso_local i32 @listDelNode(i32, i32*) #1

declare dso_local i64 @writeToClient(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @clientHasPendingReplies(%struct.TYPE_8__*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @freeClientAsync(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
