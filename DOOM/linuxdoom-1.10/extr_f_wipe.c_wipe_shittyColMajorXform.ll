; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_shittyColMajorXform.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_f_wipe.c_wipe_shittyColMajorXform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PU_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wipe_shittyColMajorXform(i16* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = mul nsw i32 %10, %11
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @PU_STATIC, align 4
  %15 = call i64 @Z_Malloc(i32 %13, i32 %14, i32 0)
  %16 = inttoptr i64 %15 to i16*
  store i16* %16, i16** %9, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %48, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load i16*, i16** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %27, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = load i16*, i16** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %36, i64 %42
  store i16 %35, i16* %43, align 2
  br label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %22

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load i16*, i16** %4, align 8
  %53 = load i16*, i16** %9, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @memcpy(i16* %52, i16* %53, i32 %57)
  %59 = load i16*, i16** %9, align 8
  %60 = call i32 @Z_Free(i16* %59)
  ret void
}

declare dso_local i64 @Z_Malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i16*, i16*, i32) #1

declare dso_local i32 @Z_Free(i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
