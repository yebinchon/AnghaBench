; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c_ctr_free_pages.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_memory.c_ctr_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__stacksize__ = common dso_local global i32 0, align 4
@__stack_size_extra = common dso_local global i32 0, align 4
@__stack_bottom = common dso_local global i32 0, align 4
@MEMOP_FREE = common dso_local global i32 0, align 4
@MEMPERM_READ = common dso_local global i32 0, align 4
@MEMPERM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctr_free_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %110

11:                                               ; preds = %1
  %12 = call i32 (...) @ctr_get_linear_free()
  %13 = ashr i32 %12, 12
  store i32 %13, i32* %3, align 4
  %14 = call i32 (...) @ctr_get_linear_unused()
  %15 = ashr i32 %14, 12
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 256
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  call void @ctr_linear_free_pages(i32 %20)
  br label %110

21:                                               ; preds = %11
  %22 = call i32 (...) @ctr_get_stack_free()
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @__stacksize__, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @__stacksize__, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %27, %28
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i32 [ %29, %26 ], [ 0, %30 ]
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @__stack_size_extra, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @__stack_size_extra, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = ashr i32 %42, 12
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 12
  %48 = sub nsw i32 %45, %47
  %49 = add nsw i32 %44, %48
  %50 = load i32, i32* %2, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = ashr i32 %53, 12
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %2, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %40
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %2, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* %3, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %69
  br label %110

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  call void @ctr_linear_free_pages(i32 %85)
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load i32, i32* @__stack_bottom, align 4
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 12
  %93 = load i32, i32* @MEMOP_FREE, align 4
  %94 = load i32, i32* @MEMPERM_READ, align 4
  %95 = load i32, i32* @MEMPERM_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @svcControlMemory(i32* %7, i32 %90, i32 0, i32 %92, i32 %93, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, 12
  %100 = load i32, i32* @__stack_bottom, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* @__stack_bottom, align 4
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 12
  %104 = load i32, i32* @__stack_size_extra, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* @__stack_size_extra, align 4
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 12
  %108 = load i32, i32* @__stacksize__, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* @__stacksize__, align 4
  br label %110

110:                                              ; preds = %10, %19, %79, %89, %86
  ret void
}

declare dso_local i32 @ctr_get_linear_free(...) #1

declare dso_local i32 @ctr_get_linear_unused(...) #1

declare dso_local void @ctr_linear_free_pages(i32) #1

declare dso_local i32 @ctr_get_stack_free(...) #1

declare dso_local i32 @svcControlMemory(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
