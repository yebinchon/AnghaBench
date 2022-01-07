; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_plat_mmap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_plat_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"mmap(%08lx, %zd) failed: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"warning: wanted to map @%08lx, got %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @plat_mmap(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MAP_PRIVATE, align 4
  %14 = load i32, i32* @MAP_ANONYMOUS, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @PROT_READ, align 4
  %21 = load i32, i32* @PROT_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i8* @mmap(i8* %18, i64 %19, i32 %22, i32 %23, i32 -1, i32 0)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** @MAP_FAILED, align 8
  %27 = icmp eq i8* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i8*, i64, i8*, ...) @lprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %29, i8* %31, i32 %32)
  store i8* null, i8** %5, align 8
  br label %55

34:                                               ; preds = %4
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = icmp ne i8* %38, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 (i8*, i64, i8*, ...) @lprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %43, i8* %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @munmap(i8* %49, i64 %50)
  store i8* null, i8** %5, align 8
  br label %55

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %37, %34
  %54 = load i8*, i8** %12, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %48, %28
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @lprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
