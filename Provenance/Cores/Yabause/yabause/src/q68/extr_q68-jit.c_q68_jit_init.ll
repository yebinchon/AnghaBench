; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_q68_jit_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_q68_jit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32 (%struct.TYPE_9__*)*, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_9__* (i32)* }
%struct.TYPE_9__ = type { i64 }

@Q68_JIT_TABLE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No memory for JIT table\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No memory for JIT hash chain table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q68_jit_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 5
  %7 = load %struct.TYPE_9__* (i32)*, %struct.TYPE_9__* (i32)** %6, align 8
  %8 = load i32, i32* @Q68_JIT_TABLE_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 8, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.TYPE_9__* %7(i32 %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @DMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_9__* (i32)*, %struct.TYPE_9__* (i32)** %23, align 8
  %25 = load i32, i32* @Q68_JIT_TABLE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.TYPE_9__* %24(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %21
  %37 = call i32 @DMSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %61

38:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @Q68_JIT_TABLE_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memset(i32 %57, i32 0, i32 4)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  store i32 1, i32* %2, align 4
  br label %72

61:                                               ; preds = %36
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 %64(%struct.TYPE_9__* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %70, align 8
  br label %71

71:                                               ; preds = %61, %19
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @DMSG(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
