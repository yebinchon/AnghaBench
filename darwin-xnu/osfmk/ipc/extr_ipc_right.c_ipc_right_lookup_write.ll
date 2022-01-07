; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_lookup_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_lookup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i32 0, align 4
@IE_NULL = common dso_local global i32 0, align 4
@KERN_INVALID_NAME = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_lookup_write(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @IS_NULL, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @is_write_lock(i64 %14)
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @is_active(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @is_write_unlock(i64 %20)
  %22 = load i32, i32* @KERN_INVALID_TASK, align 4
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ipc_entry_lookup(i64 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @IE_NULL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @is_write_unlock(i64 %30)
  %32 = load i32, i32* @KERN_INVALID_NAME, align 4
  store i32 %32, i32* %4, align 4
  br label %37

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %29, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_write_lock(i64) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i32 @is_write_unlock(i64) #1

declare dso_local i32 @ipc_entry_lookup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
