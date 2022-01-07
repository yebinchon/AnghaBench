; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_invalidate_addr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_invalidate_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cached_code_words = common dso_local global i32* null, align 8
@invalidate_count = common dso_local global i32 0, align 4
@restore_candidate = common dso_local global i32* null, align 8
@recent_writes = common dso_local global i32* null, align 8
@recent_write_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invalidate_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, -536870913
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 4194304
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, 4194304
  %11 = and i32 %10, 8388607
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32*, i32** @cached_code_words, align 8
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 5
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 2
  %21 = and i32 %20, 7
  %22 = ashr i32 %18, %21
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @invalidate_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @invalidate_count, align 4
  %28 = icmp slt i32 %26, 500
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load i32*, i32** @restore_candidate, align 8
  %31 = load i32, i32* %3, align 4
  %32 = ashr i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = ashr i32 %36, 12
  %38 = and i32 %37, 7
  %39 = ashr i32 %35, %38
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load i32, i32* %2, align 4
  %44 = load i32*, i32** @recent_writes, align 8
  %45 = load i64, i64* @recent_write_index, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i64, i64* @recent_write_index, align 8
  %48 = add i64 %47, 1
  %49 = and i64 %48, 7
  store i64 %49, i64* @recent_write_index, align 8
  br label %50

50:                                               ; preds = %42, %29
  br label %80

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %12
  %53 = load i32, i32* %2, align 4
  %54 = ashr i32 %53, 12
  %55 = load i32, i32* %2, align 4
  %56 = ashr i32 %55, 12
  %57 = call i32 @invalidate_blocks(i32 %54, i32 %56)
  %58 = load i32*, i32** @cached_code_words, align 8
  %59 = load i32, i32* %3, align 4
  %60 = ashr i32 %59, 5
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = ashr i32 %64, 2
  %66 = and i32 %65, 7
  %67 = ashr i32 %63, %66
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = load i32*, i32** @recent_writes, align 8
  %75 = load i64, i64* @recent_write_index, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i64, i64* @recent_write_index, align 8
  %78 = add i64 %77, 1
  %79 = and i64 %78, 7
  store i64 %79, i64* @recent_write_index, align 8
  br label %80

80:                                               ; preds = %52, %50
  ret void
}

declare dso_local i32 @invalidate_blocks(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
