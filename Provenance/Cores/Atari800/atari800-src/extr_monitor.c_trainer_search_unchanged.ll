; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_trainer_search_unchanged.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_trainer_search_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trainer_memory = common dso_local global i64* null, align 8
@trainer_flags = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Use tss first.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @trainer_search_unchanged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trainer_search_unchanged() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %4 = call i32 @get_hex(i64* %1)
  store i32 %4, i32* %2, align 4
  %5 = load i64*, i64** @trainer_memory, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %0
  store i64 65535, i64* %3, align 8
  br label %8

8:                                                ; preds = %40, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @MEMORY_SafeGetByte(i64 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64*, i64** @trainer_flags, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %11
  br label %34

21:                                               ; preds = %8
  %22 = load i64*, i64** @trainer_memory, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @MEMORY_SafeGetByte(i64 %26)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i64*, i64** @trainer_flags, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %21
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i64, i64* %3, align 8
  %36 = call i64 @MEMORY_SafeGetByte(i64 %35)
  %37 = load i64*, i64** @trainer_memory, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %3, align 8
  %43 = icmp sgt i64 %42, -1
  br i1 %43, label %8, label %44

44:                                               ; preds = %40
  br label %47

45:                                               ; preds = %0
  %46 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @get_hex(i64*) #1

declare dso_local i64 @MEMORY_SafeGetByte(i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
