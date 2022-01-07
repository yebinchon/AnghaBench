; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_serverLogObjectDebugInfo.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_serverLogObjectDebugInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Object type: %u\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Object encoding: %u\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Object refcount: %d\00", align 1
@OBJ_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Object raw string len: %zu\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Object raw string content: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serverLogObjectDebugInfo(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @LL_WARNING, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @serverLog(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @LL_WARNING, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @serverLog(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @LL_WARNING, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @serverLog(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @OBJ_STRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i64 @sdsEncodedObject(%struct.TYPE_4__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sdslen(i32 %33)
  %35 = call i32 @serverLog(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @sdslen(i32 %38)
  %40 = icmp slt i32 %39, 4096
  br i1 %40, label %41, label %56

41:                                               ; preds = %29
  %42 = call i32 (...) @sdsempty()
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sdslen(i32 %48)
  %50 = call i32 @sdscatrepr(i32 %42, i32 %45, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* @LL_WARNING, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @serverLog(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @sdsfree(i32 %54)
  br label %56

56:                                               ; preds = %41, %29
  br label %57

57:                                               ; preds = %56, %25, %1
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, i32) #1

declare dso_local i64 @sdsEncodedObject(%struct.TYPE_4__*) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdscatrepr(i32, i32, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdsfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
