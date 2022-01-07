; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_compressor_pager_slots_chunk_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor_pager.c_compressor_pager_slots_chunk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_DONT_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compressor_pager_slots_chunk_free(i64* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %58, %16
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load i64*, i64** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @vm_compressor_free(i64* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %56

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, -2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @C_DONT_BLOCK, align 4
  %46 = and i32 %44, %45
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %51, %48
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %17

61:                                               ; preds = %17
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i32 @vm_compressor_free(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
