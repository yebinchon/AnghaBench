; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c__sbrk_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c__sbrk_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

@_sbrk_r.sbrk_top = internal global i32 0, align 4
@__heapBase = common dso_local global i32 0, align 4
@__heap_size = common dso_local global i32 0, align 4
@MEMOP_ALLOC = common dso_local global i32 0, align 4
@MEMPERM_READ = common dso_local global i32 0, align 4
@MEMPERM_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEMOP_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_sbrk_r(%struct._reent* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._reent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._reent* %0, %struct._reent** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @_sbrk_r.sbrk_top, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @__heapBase, align 4
  store i32 %11, i32* @_sbrk_r.sbrk_top, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i32, i32* @_sbrk_r.sbrk_top, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 4095
  %17 = and i32 %16, -4096
  %18 = load i32, i32* @__heapBase, align 4
  %19 = load i32, i32* @__heap_size, align 4
  %20 = add nsw i32 %18, %19
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 12
  %27 = call i32 @ctr_request_free_pages(i32 %26)
  %28 = load i32, i32* @__heapBase, align 4
  %29 = load i32, i32* @__heap_size, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MEMOP_ALLOC, align 4
  %33 = load i32, i32* @MEMPERM_READ, align 4
  %34 = load i32, i32* @MEMPERM_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @svcControlMemory(i32* %6, i32 %30, i32 0, i32 %31, i32 %32, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = load %struct._reent*, %struct._reent** %4, align 8
  %41 = getelementptr inbounds %struct._reent, %struct._reent* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i8* inttoptr (i64 -1 to i8*), i8** %3, align 8
  br label %69

42:                                               ; preds = %24
  br label %43

43:                                               ; preds = %42, %12
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @__heap_size, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* @__heap_size, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32, i32* @__heapBase, align 4
  %51 = load i32, i32* @__heap_size, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 0, %53
  %55 = load i32, i32* @MEMOP_FREE, align 4
  %56 = load i32, i32* @MEMPERM_READ, align 4
  %57 = load i32, i32* @MEMPERM_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i64 @svcControlMemory(i32* %6, i32 %52, i32 0, i32 %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %49, %43
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @_sbrk_r.sbrk_top, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* @_sbrk_r.sbrk_top, align 4
  %64 = load i32, i32* @_sbrk_r.sbrk_top, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %3, align 8
  br label %69

69:                                               ; preds = %60, %38
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i32 @ctr_request_free_pages(i32) #1

declare dso_local i64 @svcControlMemory(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
