; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_fault_helper.c_test_fault_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/perf_index/extr_test_fault_helper.c_test_fault_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMSIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@memblock = common dso_local global i8* null, align 8
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"mmap failed\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mprotect failed\00", align 1
@PERFINDEX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_fault_setup() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @getpagesize()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @MEMSIZE, align 4
  %6 = load i32, i32* @PROT_READ, align 4
  %7 = load i32, i32* @PROT_WRITE, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @MAP_ANON, align 4
  %10 = load i32, i32* @MAP_PRIVATE, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @mmap(i32* null, i32 %5, i32 %8, i32 %11, i32 -1, i32 0)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** @memblock, align 8
  %14 = load i8*, i8** @memblock, align 8
  %15 = load i8*, i8** @MAP_FAILED, align 8
  %16 = icmp ne i8* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @VERIFY(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** @memblock, align 8
  store i8* %19, i8** %1, align 8
  br label %20

20:                                               ; preds = %29, %0
  %21 = load i8*, i8** %1, align 8
  %22 = load i8*, i8** @memblock, align 8
  %23 = load i32, i32* @MEMSIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = icmp ult i8* %21, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i8*, i8** %1, align 8
  store i8 1, i8* %28, align 1
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %2, align 4
  %31 = load i8*, i8** %1, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %1, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load i8*, i8** @memblock, align 8
  %36 = load i32, i32* @MEMSIZE, align 4
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = call i32 @mprotect(i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @VERIFY(i32 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** @memblock, align 8
  %44 = load i32, i32* @MEMSIZE, align 4
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @PROT_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @mprotect(i8* %43, i32 %44, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @PERFINDEX_SUCCESS, align 4
  ret i32 %53
}

declare dso_local i32 @getpagesize(...) #1

declare dso_local i64 @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32, i8*) #1

declare dso_local i32 @mprotect(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
