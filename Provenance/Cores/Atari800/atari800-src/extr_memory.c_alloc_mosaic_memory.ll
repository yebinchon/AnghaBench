; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_alloc_mosaic_memory.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_alloc_mosaic_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_mosaic_num_banks = common dso_local global i32 0, align 4
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@mosaic_ram = common dso_local global i32* null, align 8
@mosaic_current_num_banks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @alloc_mosaic_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_mosaic_memory() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @MEMORY_mosaic_num_banks, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %0
  %5 = load i64, i64* @Atari800_machine_type, align 8
  %6 = load i64, i64* @Atari800_MACHINE_800, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load i32, i32* @MEMORY_mosaic_num_banks, align 4
  %10 = mul nsw i32 %9, 4096
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @mosaic_ram, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @mosaic_current_num_banks, align 4
  %15 = load i32, i32* @MEMORY_mosaic_num_banks, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13, %8
  %18 = load i32, i32* @MEMORY_mosaic_num_banks, align 4
  store i32 %18, i32* @mosaic_current_num_banks, align 4
  %19 = load i32*, i32** @mosaic_ram, align 8
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @Util_realloc(i32* %19, i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** @mosaic_ram, align 8
  br label %23

23:                                               ; preds = %17, %13
  %24 = load i32*, i32** @mosaic_ram, align 8
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @memset(i32* %24, i32 0, i32 %25)
  br label %34

27:                                               ; preds = %4, %0
  %28 = load i32*, i32** @mosaic_ram, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** @mosaic_ram, align 8
  %32 = call i32 @free(i32* %31)
  store i32* null, i32** @mosaic_ram, align 8
  store i32 0, i32* @mosaic_current_num_banks, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %23
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
