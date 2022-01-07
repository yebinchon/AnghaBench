; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_pool_memalign.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d.c_vita2d_pool_memalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pool_index = common dso_local global i32 0, align 4
@pool_size = common dso_local global i32 0, align 4
@pool_addr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vita2d_pool_memalign(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @pool_index, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %8, %9
  %11 = sub i32 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = sub i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = and i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add i32 %16, %17
  %19 = load i32, i32* @pool_size, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i64, i64* @pool_addr, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %28, %29
  store i32 %30, i32* @pool_index, align 4
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
