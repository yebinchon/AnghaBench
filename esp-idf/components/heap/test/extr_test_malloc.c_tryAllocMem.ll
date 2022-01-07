; ModuleID = '/home/carl/AnghaBench/esp-idf/components/heap/test/extr_test_malloc.c_tryAllocMem.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/heap/test/extr_test_malloc.c_tryAllocMem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocatedMem = common dso_local global i32** null, align 8
@noAllocated = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tryAllocMem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tryAllocMem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 5120, i32* %4, align 4
  %5 = call i8* @malloc(i32 40960)
  %6 = bitcast i8* %5 to i32**
  store i32** %6, i32*** @allocatedMem, align 8
  %7 = load i32**, i32*** @allocatedMem, align 8
  %8 = icmp ne i32** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %51

10:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 5120
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = call i8* @malloc(i32 1024)
  %16 = bitcast i8* %15 to i32*
  %17 = load i32**, i32*** @allocatedMem, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  store i32* %16, i32** %20, align 8
  %21 = load i32**, i32*** @allocatedMem, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %48

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 256
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32**, i32*** @allocatedMem, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 -559038737, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %11

48:                                               ; preds = %27, %11
  %49 = load i32, i32* %2, align 4
  store i32 %49, i32* @noAllocated, align 4
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %48, %9
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
