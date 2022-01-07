; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_alloc_axlon_memory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_alloc_axlon_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_axlon_num_banks = common dso_local global i32 0, align 4
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@axlon_ram = common dso_local global i32* null, align 8
@axlon_current_bankmask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alloc_axlon_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_axlon_memory() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i64, i64* @Atari800_machine_type, align 8
  %6 = load i64, i64* @Atari800_MACHINE_800, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %10 = mul nsw i32 %9, 16384
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @axlon_ram, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @axlon_current_bankmask, align 4
  %15 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13, %8
  %19 = load i32, i32* @MEMORY_axlon_num_banks, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* @axlon_current_bankmask, align 4
  %21 = load i32*, i32** @axlon_ram, align 8
  %22 = load i32, i32* %1, align 4
  %23 = call i64 @Util_realloc(i32* %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** @axlon_ram, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32*, i32** @axlon_ram, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @memset(i32* %26, i32 0, i32 %27)
  br label %36

29:                                               ; preds = %4, %0
  %30 = load i32*, i32** @axlon_ram, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** @axlon_ram, align 8
  %34 = call i32 @free(i32* %33)
  store i32* null, i32** @axlon_ram, align 8
  store i32 0, i32* @axlon_current_bankmask, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %25
  ret void
}

declare dso_local i64 @Util_realloc(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
