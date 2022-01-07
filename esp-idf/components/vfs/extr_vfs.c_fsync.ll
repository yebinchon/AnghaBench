; ModuleID = '/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_fsync.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/vfs/extr_vfs.c_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._reent = type { i32 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsync(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._reent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @get_vfs_for_fd(i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @get_local_fd(i32* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = call %struct._reent* (...) @__getreent()
  store %struct._reent* %14, %struct._reent** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %1
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %7, align 4
  store i32 -1, i32* %2, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load %struct._reent*, %struct._reent** %6, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @CHECK_AND_CALL(i32 %23, %struct._reent* %24, i32* %25, i32 (i32)* @fsync, i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32* @get_vfs_for_fd(i32) #1

declare dso_local i32 @get_local_fd(i32*, i32) #1

declare dso_local %struct._reent* @__getreent(...) #1

declare dso_local i32 @CHECK_AND_CALL(i32, %struct._reent*, i32*, i32 (i32)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
