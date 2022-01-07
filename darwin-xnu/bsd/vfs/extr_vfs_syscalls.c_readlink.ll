; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_readlink.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readlink_args = type { i32, i32, i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readlink(i32 %0, %struct.readlink_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.readlink_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.readlink_args* %1, %struct.readlink_args** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @IS_64BIT_PROCESS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @vfs_context_current()
  %18 = load i32, i32* @AT_FDCWD, align 4
  %19 = load %struct.readlink_args*, %struct.readlink_args** %5, align 8
  %20 = getelementptr inbounds %struct.readlink_args, %struct.readlink_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CAST_USER_ADDR_T(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.readlink_args*, %struct.readlink_args** %5, align 8
  %25 = getelementptr inbounds %struct.readlink_args, %struct.readlink_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CAST_USER_ADDR_T(i32 %26)
  %28 = load %struct.readlink_args*, %struct.readlink_args** %5, align 8
  %29 = getelementptr inbounds %struct.readlink_args, %struct.readlink_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @readlinkat_internal(i32 %17, i32 %18, i32 %22, i32 %23, i32 %27, i32 %30, i32 %31, i32* %32)
  ret i32 %33
}

declare dso_local i64 @IS_64BIT_PROCESS(i32) #1

declare dso_local i32 @readlinkat_internal(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
