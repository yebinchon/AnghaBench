; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_post_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_post_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOTE_WRITE = common dso_local global i32 0, align 4
@NOTE_LINK = common dso_local global i32 0, align 4
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @post_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_rename(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @vnode_setneedinactive(i64 %17)
  br label %19

19:                                               ; preds = %16, %12, %4
  %20 = load i32, i32* @NOTE_WRITE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @vnode_isdir(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %24
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %28
  %39 = load i32, i32* @NOTE_LINK, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %38, %35, %31
  br label %43

43:                                               ; preds = %42, %19
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @lock_vnode_and_post(i64 %44, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @lock_vnode_and_post(i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @NOTE_DELETE, align 4
  %60 = call i32 @lock_vnode_and_post(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @NOTE_RENAME, align 4
  %64 = call i32 @lock_vnode_and_post(i64 %62, i32 %63)
  ret i32 0
}

declare dso_local i32 @vnode_setneedinactive(i64) #1

declare dso_local i64 @vnode_isdir(i64) #1

declare dso_local i32 @lock_vnode_and_post(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
