; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_trainer_start_search.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_trainer_start_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trainer_memory = common dso_local global i64* null, align 8
@trainer_flags = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"Memory allocation failed!\0ATrainer not available.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trainer_start_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trainer_start_search() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %4 = call i32 @get_hex(i64* %1)
  store i32 %4, i32* %2, align 4
  %5 = load i64*, i64** @trainer_memory, align 8
  %6 = icmp eq i64* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = call i64* @malloc(i32 131072)
  store i64* %8, i64** @trainer_memory, align 8
  %9 = load i64*, i64** @trainer_memory, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64*, i64** @trainer_memory, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 65536
  %14 = bitcast i64* %13 to i32*
  store i32* %14, i32** @trainer_flags, align 8
  br label %17

15:                                               ; preds = %7
  %16 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  br label %18

18:                                               ; preds = %17, %0
  %19 = load i64*, i64** @trainer_memory, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %18
  store i64 65535, i64* %3, align 8
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @MEMORY_SafeGetByte(i64 %23)
  %25 = load i64*, i64** @trainer_memory, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %24, i64* %27, align 8
  %28 = load i32*, i32** @trainer_flags, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 255, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %3, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %3, align 8
  %34 = icmp sgt i64 %33, -1
  br i1 %34, label %22, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  store i64 65535, i64* %3, align 8
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i64, i64* %1, align 8
  %41 = load i64*, i64** @trainer_memory, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** @trainer_flags, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %3, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %3, align 8
  %54 = icmp sgt i64 %53, -1
  br i1 %54, label %39, label %55

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56, %18
  ret void
}

declare dso_local i32 @get_hex(i64*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @MEMORY_SafeGetByte(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
