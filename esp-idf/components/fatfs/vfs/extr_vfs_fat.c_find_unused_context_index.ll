; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_find_unused_context_index.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/vfs/extr_vfs_fat.c_find_unused_context_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FF_VOLUMES = common dso_local global i64 0, align 8
@s_fat_ctxs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @find_unused_context_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_unused_context_index() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @FF_VOLUMES, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = load i32*, i32** @s_fat_ctxs, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  store i64 %14, i64* %1, align 8
  br label %21

15:                                               ; preds = %7
  br label %16

16:                                               ; preds = %15
  %17 = load i64, i64* %2, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %3

19:                                               ; preds = %3
  %20 = load i64, i64* @FF_VOLUMES, align 8
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
