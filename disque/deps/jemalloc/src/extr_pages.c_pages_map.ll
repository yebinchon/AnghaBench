; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_pages.c_pages_map.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_pages.c_pages_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MEM_COMMIT = common dso_local global i32 0, align 4
@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pages_map(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = load i32, i32* @MAP_ANON, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @mmap(i8* %10, i64 %11, i32 %14, i32 %17, i32 -1, i32 0)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** @MAP_FAILED, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  br label %39

27:                                               ; preds = %2
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @pages_unmap(i8* %35, i64 %36)
  store i8* null, i8** %5, align 8
  br label %38

38:                                               ; preds = %34, %30, %27
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %3, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = icmp ne i8* %46, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %45, %42
  %50 = load i8*, i8** %3, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = icmp eq i8* %53, %54
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br label %58

58:                                               ; preds = %56, %45, %39
  %59 = phi i1 [ true, %45 ], [ true, %39 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** %5, align 8
  ret i8* %62
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @pages_unmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
