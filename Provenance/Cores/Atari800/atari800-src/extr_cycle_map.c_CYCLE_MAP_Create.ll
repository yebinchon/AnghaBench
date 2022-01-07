; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_CYCLE_MAP_Create.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_CYCLE_MAP_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CYCLE_MAP_cpu2antic = common dso_local global i32* null, align 8
@CYCLE_MAP_antic2cpu = common dso_local global i32* null, align 8
@CYCLE_MAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CYCLE_MAP_Create() #0 {
  %1 = alloca [115 x i8], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds [115 x i8], [115 x i8]* %1, i64 0, i64 0
  %4 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  %8 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call i32 @antic_steal_map(i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8* %3, i32* %7, i32* %11)
  %13 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %14 = mul nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  %15 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @try_all_scroll(i32 0, i32 1, i32 1, i32 0, i32* %18, i32* %22)
  %24 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %25 = mul nsw i32 %24, 18
  store i32 %25, i32* %2, align 4
  %26 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @try_all_scroll(i32 0, i32 0, i32 1, i32 0, i32* %29, i32* %33)
  %35 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %36 = mul nsw i32 %35, 35
  store i32 %36, i32* %2, align 4
  %37 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @try_all_scroll(i32 1, i32 1, i32 1, i32 0, i32* %40, i32* %44)
  %46 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %47 = mul nsw i32 %46, 52
  store i32 %47, i32* %2, align 4
  %48 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @try_all_scroll(i32 1, i32 0, i32 1, i32 0, i32* %51, i32* %55)
  %57 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %58 = mul nsw i32 %57, 69
  store i32 %58, i32* %2, align 4
  %59 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @try_all_scroll(i32 0, i32 0, i32 0, i32 1, i32* %62, i32* %66)
  %68 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %69 = mul nsw i32 %68, 86
  store i32 %69, i32* %2, align 4
  %70 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @try_all_scroll(i32 1, i32 0, i32 0, i32 1, i32* %73, i32* %77)
  %79 = load i32, i32* @CYCLE_MAP_SIZE, align 4
  %80 = mul nsw i32 %79, 103
  store i32 %80, i32* %2, align 4
  %81 = load i32*, i32** @CYCLE_MAP_cpu2antic, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32*, i32** @CYCLE_MAP_antic2cpu, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @try_all_scroll(i32 2, i32 0, i32 0, i32 1, i32* %84, i32* %88)
  ret void
}

declare dso_local i32 @antic_steal_map(i32, i32, i32, i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @try_all_scroll(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
