; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_memchunkhax1_write_pair.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_memchunkhax1_write_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMOP_ALLOC_LINEAR = common dso_local global i32 0, align 4
@MEMPERM_READ = common dso_local global i32 0, align 4
@MEMPERM_WRITE = common dso_local global i32 0, align 4
@MEMOP_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @memchunkhax1_write_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memchunkhax1_write_pair(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i32, i32* @MEMOP_ALLOC_LINEAR, align 4
  %13 = load i32, i32* @MEMPERM_READ, align 4
  %14 = load i32, i32* @MEMPERM_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @svcControlMemory(i64* %5, i64 0, i32 0, i32 65536, i32 %12, i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 32768
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %20, 4096
  %22 = load i32, i32* @MEMOP_FREE, align 4
  %23 = call i32 @svcControlMemory(i64* %7, i64 %21, i32 0, i32 4096, i32 %22, i32 0)
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 12288
  %26 = load i32, i32* @MEMOP_FREE, align 4
  %27 = call i32 @svcControlMemory(i64* %7, i64 %25, i32 0, i32 8192, i32 %26, i32 0)
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 24576
  %30 = load i32, i32* @MEMOP_FREE, align 4
  %31 = call i32 @svcControlMemory(i64* %7, i64 %29, i32 0, i32 4096, i32 %30, i32 0)
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 4
  %34 = inttoptr i64 %33 to i64*
  store i64* %34, i64** %10, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add nsw i64 %35, 0
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 4096
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @gspwn(i64 %36, i64 %38, i32 16, i32* %39)
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 8196
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %8, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, 8200
  %46 = inttoptr i64 %45 to i64*
  store i64* %46, i64** %9, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 8192
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 12288
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @gspwn(i64 %48, i64 %50, i32 16, i32* %51)
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 20488
  %55 = inttoptr i64 %54 to i64*
  store i64* %55, i64** %11, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 20480
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, 24576
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @gspwn(i64 %57, i64 %59, i32 16, i32* %60)
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %11, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %3, align 8
  %69 = sub nsw i64 %68, 4
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %4, align 8
  %72 = load i64*, i64** %8, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %73, 12288
  %75 = load i64, i64* %5, align 8
  %76 = add nsw i64 %75, 8192
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @gspwn(i64 %74, i64 %76, i32 16, i32* %77)
  %79 = load i32, i32* @MEMOP_ALLOC_LINEAR, align 4
  %80 = load i32, i32* @MEMPERM_READ, align 4
  %81 = load i32, i32* @MEMPERM_WRITE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @svcControlMemory(i64* %7, i64 0, i32 0, i32 8192, i32 %79, i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, 4096
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, 0
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @gspwn(i64 %85, i64 %87, i32 16, i32* %88)
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 24576
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 20480
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @gspwn(i64 %91, i64 %93, i32 16, i32* %94)
  %96 = load i64, i64* %5, align 8
  %97 = add nsw i64 %96, 0
  %98 = load i32, i32* @MEMOP_FREE, align 4
  %99 = call i32 @svcControlMemory(i64* %7, i64 %97, i32 0, i32 4096, i32 %98, i32 0)
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 8192
  %102 = load i32, i32* @MEMOP_FREE, align 4
  %103 = call i32 @svcControlMemory(i64* %7, i64 %101, i32 0, i32 16384, i32 %102, i32 0)
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %104, 28672
  %106 = load i32, i32* @MEMOP_FREE, align 4
  %107 = call i32 @svcControlMemory(i64* %7, i64 %105, i32 0, i32 36864, i32 %106, i32 0)
  ret void
}

declare dso_local i32 @svcControlMemory(i64*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @gspwn(i64, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
