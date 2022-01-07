; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterWriteHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterWriteHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"I/O error writing to node link: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@AE_WRITABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterWriteHandler(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = call i32 @UNUSED(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @UNUSED(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @sdslen(i32 %24)
  %26 = call i64 @write(i32 %18, i32 %21, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = load i32, i32* @LL_DEBUG, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @serverLog(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = call i32 @handleLinkIOError(%struct.TYPE_4__* %34)
  br label %54

36:                                               ; preds = %4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @sdsrange(i32 %39, i64 %40, i32 -1)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @sdslen(i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AE_WRITABLE, align 4
  %53 = call i32 @aeDeleteFileEvent(i32 %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %29, %47, %36
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i64 @write(i32, i32, i64) #1

declare dso_local i64 @sdslen(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @handleLinkIOError(%struct.TYPE_4__*) #1

declare dso_local i32 @sdsrange(i32, i64, i32) #1

declare dso_local i32 @aeDeleteFileEvent(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
