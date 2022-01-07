; ModuleID = '/home/carl/AnghaBench/RetroArch/memory/wii/extr_mem2_manager.c__mem2_realloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/memory/wii/extr_mem2_manager.c__mem2_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gx_mem2_heap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_mem2_realloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i8* @_mem2_malloc(i64 %11)
  store i8* %12, i8** %3, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @_mem2_free(i8* %17)
  store i8* null, i8** %3, align 8
  br label %41

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @__lwp_heap_block_size(i32* @gx_mem2_heap, i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i64, i64* %5, align 8
  %29 = call i8* @_mem2_malloc(i64 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %41

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @memcpy(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @_mem2_free(i8* %38)
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %33, %32, %16, %10
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i8* @_mem2_malloc(i64) #1

declare dso_local i32 @_mem2_free(i8*) #1

declare dso_local i64 @__lwp_heap_block_size(i32*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
