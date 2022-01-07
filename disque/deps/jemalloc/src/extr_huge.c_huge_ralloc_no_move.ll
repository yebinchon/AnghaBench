; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunksize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huge_ralloc_no_move(i8* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @s2u(i64 %12)
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @chunksize, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @chunksize, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %5
  store i32 1, i32* %6, align 4
  br label %90

26:                                               ; preds = %21
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @CHUNK_CEILING(i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @CHUNK_CEILING(i64 %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @huge_ralloc_no_move_expand(i8* %33, i64 %34, i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @CHUNK_CEILING(i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @CHUNK_CEILING(i64 %47)
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @huge_ralloc_no_move_expand(i8* %51, i64 %52, i64 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %90

58:                                               ; preds = %50, %44, %40
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @CHUNK_CEILING(i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @CHUNK_CEILING(i64 %62)
  %64 = icmp sge i64 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @CHUNK_CEILING(i64 %66)
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @CHUNK_CEILING(i64 %68)
  %70 = icmp sle i64 %67, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @huge_ralloc_no_move_similar(i8* %72, i64 %73, i64 %74, i64 %75, i32 %76)
  store i32 0, i32* %6, align 4
  br label %90

78:                                               ; preds = %65, %59
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @CHUNK_CEILING(i64 %79)
  %81 = load i64, i64* %10, align 8
  %82 = call i64 @CHUNK_CEILING(i64 %81)
  %83 = icmp sgt i64 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @huge_ralloc_no_move_shrink(i8* %85, i64 %86, i64 %87)
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %84, %71, %57, %39, %25
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @s2u(i64) #1

declare dso_local i64 @CHUNK_CEILING(i64) #1

declare dso_local i64 @huge_ralloc_no_move_expand(i8*, i64, i64, i32) #1

declare dso_local i32 @huge_ralloc_no_move_similar(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @huge_ralloc_no_move_shrink(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
