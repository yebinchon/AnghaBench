; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2int.c_SH2InterpreterInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2int.c_SH2InterpreterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@opcodes = common dso_local global i32* null, align 8
@FetchBios = common dso_local global i32 0, align 4
@fetchlist = common dso_local global i32* null, align 8
@FetchLWram = common dso_local global i32 0, align 4
@FetchCs0 = common dso_local global i32 0, align 4
@FetchHWram = common dso_local global i32 0, align 4
@FetchInvalid = common dso_local global i32 0, align 4
@MSH2 = common dso_local global %struct.TYPE_7__* null, align 8
@SSH2 = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SH2InterpreterInit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 65536
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @decode(i32 %6)
  %8 = load i32*, i32** @opcodes, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32 %7, i32* %11, align 4
  br label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %52, %15
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i32, i32* %1, align 4
  switch i32 %20, label %45 [
    i32 0, label %21
    i32 2, label %27
    i32 32, label %33
    i32 96, label %39
    i32 97, label %39
    i32 98, label %39
    i32 99, label %39
    i32 100, label %39
    i32 101, label %39
    i32 102, label %39
    i32 103, label %39
    i32 104, label %39
    i32 105, label %39
    i32 106, label %39
    i32 107, label %39
    i32 108, label %39
    i32 109, label %39
    i32 110, label %39
    i32 111, label %39
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @FetchBios, align 4
  %23 = load i32*, i32** @fetchlist, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  br label %51

27:                                               ; preds = %19
  %28 = load i32, i32* @FetchLWram, align 4
  %29 = load i32*, i32** @fetchlist, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %51

33:                                               ; preds = %19
  %34 = load i32, i32* @FetchCs0, align 4
  %35 = load i32*, i32** @fetchlist, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %51

39:                                               ; preds = %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19, %19
  %40 = load i32, i32* @FetchHWram, align 4
  %41 = load i32*, i32** @fetchlist, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %51

45:                                               ; preds = %19
  %46 = load i32, i32* @FetchInvalid, align 4
  %47 = load i32*, i32** @fetchlist, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %39, %33, %27, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSH2, align 8
  %57 = call i32 @SH2ClearCodeBreakpoints(%struct.TYPE_7__* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SSH2, align 8
  %59 = call i32 @SH2ClearCodeBreakpoints(%struct.TYPE_7__* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSH2, align 8
  %61 = call i32 @SH2ClearMemoryBreakpoints(%struct.TYPE_7__* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SSH2, align 8
  %63 = call i32 @SH2ClearMemoryBreakpoints(%struct.TYPE_7__* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSH2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SSH2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSH2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SSH2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MSH2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SSH2, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  ret i32 0
}

declare dso_local i32 @decode(i32) #1

declare dso_local i32 @SH2ClearCodeBreakpoints(%struct.TYPE_7__*) #1

declare dso_local i32 @SH2ClearMemoryBreakpoints(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
