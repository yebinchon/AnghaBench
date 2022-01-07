; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_addReplyCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_addReplyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serverCommand = type { i32, i32, i32, i32, i32 }

@shared = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CMD_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@CMD_READONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@CMD_DENYOOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"denyoom\00", align 1
@CMD_ADMIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@CMD_RANDOM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@CMD_LOADING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"loading\00", align 1
@CMD_SKIP_MONITOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"skip_monitor\00", align 1
@CMD_FAST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"fast\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addReplyCommand(i32* %0, %struct.serverCommand* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.serverCommand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.serverCommand* %1, %struct.serverCommand** %4, align 8
  %7 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %8 = icmp ne %struct.serverCommand* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shared, i32 0, i32 0), align 4
  %12 = call i32 @addReply(i32* %10, i32 %11)
  br label %111

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @addReplyMultiBulkLen(i32* %14, i32 6)
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %18 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @addReplyBulkCString(i32* %16, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %23 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @addReplyLongLong(i32* %21, i32 %24)
  store i32 0, i32* %5, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @addDeferredMultiBulkLength(i32* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %30 = load i32, i32* @CMD_WRITE, align 4
  %31 = call i64 @addReplyCommandFlag(i32* %28, %struct.serverCommand* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %38 = load i32, i32* @CMD_READONLY, align 4
  %39 = call i64 @addReplyCommandFlag(i32* %36, %struct.serverCommand* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %46 = load i32, i32* @CMD_DENYOOM, align 4
  %47 = call i64 @addReplyCommandFlag(i32* %44, %struct.serverCommand* %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %54 = load i32, i32* @CMD_ADMIN, align 4
  %55 = call i64 @addReplyCommandFlag(i32* %52, %struct.serverCommand* %53, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %62 = load i32, i32* @CMD_RANDOM, align 4
  %63 = call i64 @addReplyCommandFlag(i32* %60, %struct.serverCommand* %61, i32 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %70 = load i32, i32* @CMD_LOADING, align 4
  %71 = call i64 @addReplyCommandFlag(i32* %68, %struct.serverCommand* %69, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32*, i32** %3, align 8
  %77 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %78 = load i32, i32* @CMD_SKIP_MONITOR, align 4
  %79 = call i64 @addReplyCommandFlag(i32* %76, %struct.serverCommand* %77, i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %86 = load i32, i32* @CMD_FAST, align 4
  %87 = call i64 @addReplyCommandFlag(i32* %84, %struct.serverCommand* %85, i32 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @setDeferredMultiBulkLength(i32* %92, i8* %93, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %98 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @addReplyLongLong(i32* %96, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %103 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @addReplyLongLong(i32* %101, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.serverCommand*, %struct.serverCommand** %4, align 8
  %108 = getelementptr inbounds %struct.serverCommand, %struct.serverCommand* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @addReplyLongLong(i32* %106, i32 %109)
  br label %111

111:                                              ; preds = %13, %9
  ret void
}

declare dso_local i32 @addReply(i32*, i32) #1

declare dso_local i32 @addReplyMultiBulkLen(i32*, i32) #1

declare dso_local i32 @addReplyBulkCString(i32*, i32) #1

declare dso_local i32 @addReplyLongLong(i32*, i32) #1

declare dso_local i8* @addDeferredMultiBulkLength(i32*) #1

declare dso_local i64 @addReplyCommandFlag(i32*, %struct.serverCommand*, i32, i8*) #1

declare dso_local i32 @setDeferredMultiBulkLength(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
