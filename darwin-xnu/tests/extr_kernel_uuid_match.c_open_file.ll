; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_open_file.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kernel_uuid_match.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @open_file(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SEEK_END, align 4
  %16 = call i64 @lseek(i32 %14, i32 0, i32 %15)
  %17 = load i64*, i64** %5, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @PROT_READ, align 4
  %21 = load i32, i32* @MAP_PRIVATE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @mmap(i32* null, i64 %19, i32 %20, i32 %21, i32 %22, i32 0)
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** @MAP_FAILED, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %32

30:                                               ; preds = %13
  %31 = load i8*, i8** %7, align 8
  store i8* %31, i8** %3, align 8
  br label %32

32:                                               ; preds = %30, %29, %12
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
