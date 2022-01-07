; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_grab_memory_for_meta_buf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_grab_memory_for_meta_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@zalloc_nopagewait_failed = common dso_local global i32 0, align 4
@recycle_buf_failed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @grab_memory_for_meta_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grab_memory_for_meta_buf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @getbufzone(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @FALSE, align 8
  %9 = call i64 @set_vm_privilege(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @zalloc_nopagewait(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @TRUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @TRUE, align 8
  %17 = call i64 @set_vm_privilege(i64 %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* @zalloc_nopagewait_failed, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @zalloc_nopagewait_failed, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i8* @recycle_buf_from_pool(i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load i32, i32* @recycle_buf_failed, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @recycle_buf_failed, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @FALSE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* @TRUE, align 8
  %36 = call i64 @set_vm_privilege(i64 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %3, align 4
  %39 = call i8* @zalloc(i32 %38)
  store i8* %39, i8** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @FALSE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @FALSE, align 8
  %45 = call i64 @set_vm_privilege(i64 %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %21
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32 @getbufzone(i32) #1

declare dso_local i64 @set_vm_privilege(i64) #1

declare dso_local i8* @zalloc_nopagewait(i32) #1

declare dso_local i8* @recycle_buf_from_pool(i32) #1

declare dso_local i8* @zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
