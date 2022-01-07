; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_kill_pointers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_ll_kill_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { %struct.ll_entry*, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"EXP: Lookup pointer to %x at %x (%x)\0A\00", align 1
@MAX_OUTPUT_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"EXP: Kill pointer at %x (%x)\0A\00", align 1
@BASE_ADDR = common dso_local global i64 0, align 8
@needs_clear_cache = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ll_kill_pointers(%struct.ll_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ll_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ll_entry* %0, %struct.ll_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %57, %3
  %10 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %11 = icmp ne %struct.ll_entry* %10, null
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %14 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @get_pointer(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %19 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i32, i32, ...) @inv_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = ashr i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %33, %12
  %44 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %45 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %49 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i8*, i32, i32, ...) @inv_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %53 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @kill_pointer(i64 %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %43, %33
  %58 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %59 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %58, i32 0, i32 0
  %60 = load %struct.ll_entry*, %struct.ll_entry** %59, align 8
  store %struct.ll_entry* %60, %struct.ll_entry** %4, align 8
  br label %9

61:                                               ; preds = %9
  ret void
}

declare dso_local i32 @get_pointer(i64) #1

declare dso_local i32 @inv_debug(i8*, i32, i32, ...) #1

declare dso_local i64 @kill_pointer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
