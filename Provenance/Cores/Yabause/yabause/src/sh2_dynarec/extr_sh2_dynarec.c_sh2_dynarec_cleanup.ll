; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_sh2_dynarec_cleanup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_sh2_dynarec_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BASE_ADDR = common dso_local global i64 0, align 8
@TARGET_SIZE_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"munmap() failed\0A\00", align 1
@jump_in = common dso_local global i64 0, align 8
@jump_out = common dso_local global i64 0, align 8
@jump_dirty = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh2_dynarec_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @BASE_ADDR, align 8
  %3 = inttoptr i64 %2 to i8*
  %4 = load i32, i32* @TARGET_SIZE_2, align 4
  %5 = shl i32 1, %4
  %6 = call i64 @munmap(i8* %3, i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 2048
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i64, i64* @jump_in, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @ll_clear(i64 %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %11

23:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %33, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 2048
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i64, i64* @jump_out, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i32 @ll_clear(i64 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %24

36:                                               ; preds = %24
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %46, %36
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 2048
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i64, i64* @jump_dirty, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @ll_clear(i64 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %37

49:                                               ; preds = %37
  ret void
}

declare dso_local i64 @munmap(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ll_clear(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
