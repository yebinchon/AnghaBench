; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_set_jump_target.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_set_jump_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_jump_target(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 128
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 143
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = bitcast i32* %29 to i64*
  store i64* %30, i64** %6, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = ptrtoint i64* %32 to i64
  %34 = sub nsw i64 %31, %33
  %35 = sub nsw i64 %34, 4
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  br label %67

37:                                               ; preds = %2
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 232
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 233
  br i1 %44, label %45, label %55

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = bitcast i32* %47 to i64*
  store i64* %48, i64** %7, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = ptrtoint i64* %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = sub nsw i64 %52, 4
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %66

55:                                               ; preds = %41
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 199
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = bitcast i32* %62 to i64*
  store i64* %63, i64** %8, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %45
  br label %67

67:                                               ; preds = %66, %24
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
