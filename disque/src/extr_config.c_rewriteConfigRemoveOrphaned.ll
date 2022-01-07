; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigRemoveOrphaned.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfigRemoveOrphaned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rewriteConfigState = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Not rewritten option: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rewriteConfigRemoveOrphaned(%struct.rewriteConfigState* %0) #0 {
  %2 = alloca %struct.rewriteConfigState*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.rewriteConfigState* %0, %struct.rewriteConfigState** %2, align 8
  %9 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %10 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @dictGetIterator(i32 %11)
  store i32* %12, i32** %3, align 8
  br label %13

13:                                               ; preds = %62, %28, %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @dictNext(i32* %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @dictGetVal(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @dictGetKey(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %23 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32* @dictFind(i32 %24, i32 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @LL_DEBUG, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @serverLog(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %13

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @listLength(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_4__* @listFirst(i32* %38)
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %7, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %45 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sdsfree(i32 %50)
  %52 = call i32 (...) @sdsempty()
  %53 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %2, align 8
  %54 = getelementptr inbounds %struct.rewriteConfigState, %struct.rewriteConfigState* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = call i32 @listDelNode(i32* %59, %struct.TYPE_4__* %60)
  br label %33

62:                                               ; preds = %33
  br label %13

63:                                               ; preds = %13
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @dictReleaseIterator(i32* %64)
  ret void
}

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32* @dictGetVal(i32*) #1

declare dso_local i32 @dictGetKey(i32*) #1

declare dso_local i32* @dictFind(i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i64 @listLength(i32*) #1

declare dso_local %struct.TYPE_4__* @listFirst(i32*) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @listDelNode(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
