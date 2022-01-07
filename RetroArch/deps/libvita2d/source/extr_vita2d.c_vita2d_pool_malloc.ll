; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_pool_malloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_pool_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pool_index = common dso_local global i64 0, align 8
@pool_size = common dso_local global i64 0, align 8
@pool_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vita2d_pool_malloc(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @pool_index, align 8
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = add nsw i64 %5, %7
  %9 = load i64, i64* @pool_size, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i64, i64* @pool_addr, align 8
  %13 = trunc i64 %12 to i32
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @pool_index, align 8
  %16 = add nsw i64 %14, %15
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %4, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @pool_index, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* @pool_index, align 8
  %22 = load i8*, i8** %4, align 8
  store i8* %22, i8** %2, align 8
  br label %24

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
