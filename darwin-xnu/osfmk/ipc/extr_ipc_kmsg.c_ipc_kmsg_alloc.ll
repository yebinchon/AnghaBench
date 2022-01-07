; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRAILER_SIZE = common dso_local global i32 0, align 4
@ipc_kmsg_max_body_space = common dso_local global i32 0, align 4
@IKM_NULL = common dso_local global i64 0, align 8
@DESC_SIZE_ADJUSTMENT = common dso_local global i32 0, align 4
@MACH_MSG_SIZE_MAX = common dso_local global i32 0, align 4
@IKM_SAVED_MSG_SIZE = common dso_local global i32 0, align 4
@ipc_kmsg_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_kmsg_alloc(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_TRAILER_SIZE, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ipc_kmsg_max_body_space, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @IKM_NULL, align 8
  store i64 %15, i64* %2, align 8
  br label %72

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 4
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 4
  %24 = udiv i64 %23, 4
  %25 = load i32, i32* @DESC_SIZE_ADJUSTMENT, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MACH_MSG_SIZE_MAX, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i64, i64* @IKM_NULL, align 8
  store i64 %35, i64* %2, align 8
  br label %72

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %16
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IKM_SAVED_MSG_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @IKM_SAVED_MSG_SIZE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IKM_SAVED_MSG_SIZE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ipc_kmsg_zone, align 4
  %54 = call i64 @zalloc(i32 %53)
  store i64 %54, i64* %5, align 8
  br label %59

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ikm_plus_overhead(i32 %56)
  %58 = call i64 @kalloc(i32 %57)
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @IKM_NULL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ikm_init(i64 %64, i32 %65)
  %67 = load i64, i64* %5, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ikm_set_header(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i64, i64* %5, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %70, %34, %14
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @ikm_plus_overhead(i32) #1

declare dso_local i32 @ikm_init(i64, i32) #1

declare dso_local i32 @ikm_set_header(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
