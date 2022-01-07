; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_get_clean_addr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_get_clean_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_clean_addr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 184
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 21
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 232
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 26
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 233
  br i1 %21, label %22, label %30

22:                                               ; preds = %11
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 27
  %25 = bitcast i32* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, 31
  store i64 %29, i64* %2, align 8
  br label %55

30:                                               ; preds = %11
  %31 = load i64, i64* %3, align 8
  %32 = add nsw i64 %31, 26
  store i64 %32, i64* %2, align 8
  br label %55

33:                                               ; preds = %1
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 26
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 232
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 31
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 233
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 32
  %47 = bitcast i32* %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add nsw i64 %48, %49
  %51 = add nsw i64 %50, 36
  store i64 %51, i64* %2, align 8
  br label %55

52:                                               ; preds = %33
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 31
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %52, %44, %30, %22
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
