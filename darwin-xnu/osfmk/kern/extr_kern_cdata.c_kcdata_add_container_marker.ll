; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_container_marker.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_add_container_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KCDATA_TYPE_CONTAINER_END = common dso_local global i64 0, align 8
@KCDATA_TYPE_CONTAINER_BEGIN = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kcdata_add_container_marker(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @KCDATA_TYPE_CONTAINER_END, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @KCDATA_TYPE_CONTAINER_BEGIN, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ true, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @KCDATA_TYPE_CONTAINER_BEGIN, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i64 8, i64 0
  store i64 %28, i64* %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @kcdata_get_memory_addr_with_flavor(i32 %29, i64 %30, i64 %31, i32 %32, i32* %10)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @KERN_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %49

39:                                               ; preds = %20
  %40 = load i64, i64* %12, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @kcdata_memcpy(i32 %43, i32 %44, i64* %8, i64 %45)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @kcdata_get_memory_addr_with_flavor(i32, i64, i64, i32, i32*) #1

declare dso_local i64 @kcdata_memcpy(i32, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
