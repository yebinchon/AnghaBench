; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_junk.c_test_junk.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_junk.c_test_junk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_junk_free = common dso_local global i64 0, align 8
@arena_dalloc_junk_small = common dso_local global i32 0, align 4
@arena_dalloc_junk_small_orig = common dso_local global i32 0, align 4
@arena_dalloc_junk_small_intercept = common dso_local global i32 0, align 4
@arena_dalloc_junk_large = common dso_local global i32 0, align 4
@arena_dalloc_junk_large_orig = common dso_local global i32 0, align 4
@arena_dalloc_junk_large_intercept = common dso_local global i32 0, align 4
@huge_dalloc_junk = common dso_local global i32 0, align 4
@huge_dalloc_junk_orig = common dso_local global i32 0, align 4
@huge_dalloc_junk_intercept = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unexpected mallocx() failure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Previously allocated byte %zu/%zu is corrupted\00", align 1
@opt_junk_alloc = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Newly allocated byte %zu/%zu isn't junk-filled\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected rallocx() failure\00", align 1
@saw_junking = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Expected region of size %zu to be junk-filled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_junk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_junk(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* @opt_junk_free, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @arena_dalloc_junk_small, align 4
  store i32 %12, i32* @arena_dalloc_junk_small_orig, align 4
  %13 = load i32, i32* @arena_dalloc_junk_small_intercept, align 4
  store i32 %13, i32* @arena_dalloc_junk_small, align 4
  %14 = load i32, i32* @arena_dalloc_junk_large, align 4
  store i32 %14, i32* @arena_dalloc_junk_large_orig, align 4
  %15 = load i32, i32* @arena_dalloc_junk_large_intercept, align 4
  store i32 %15, i32* @arena_dalloc_junk_large, align 4
  %16 = load i32, i32* @huge_dalloc_junk, align 4
  store i32 %16, i32* @huge_dalloc_junk_orig, align 4
  %17 = load i32, i32* @huge_dalloc_junk_intercept, align 4
  store i32 %17, i32* @huge_dalloc_junk, align 4
  br label %18

18:                                               ; preds = %11, %2
  store i64 0, i64* %6, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @mallocx(i64 %19, i32 0)
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @assert_ptr_not_null(i8* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @sallocx(i8* %24, i32 0)
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %101, %18
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %105

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @ZU(i32 0)
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @assert_c_eq(i8 signext %36, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %45, 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @assert_c_eq(i8 signext %44, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %33, %30
  %50 = load i64, i64* %6, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %70, %49
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i64, i64* @opt_junk_alloc, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @assert_c_eq(i8 signext %62, i32 165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 97, i8* %69, align 1
  br label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %51

73:                                               ; preds = %51
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  %77 = call i64 @xallocx(i8* %74, i64 %76, i32 0, i32 0)
  %78 = load i64, i64* %7, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @watch_junking(i8* %81)
  %83 = load i8*, i8** %5, align 8
  %84 = load i64, i64* %7, align 8
  %85 = add i64 %84, 1
  %86 = call i64 @rallocx(i8* %83, i64 %85, i32 0)
  %87 = inttoptr i64 %86 to i8*
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @assert_ptr_not_null(i8* %88, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i64, i64* @opt_junk_free, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %80
  %93 = load i64, i64* @saw_junking, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %92, %80
  %96 = phi i1 [ true, %80 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @assert_true(i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %95, %73
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %6, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i64 @sallocx(i8* %103, i32 0)
  store i64 %104, i64* %7, align 8
  br label %26

105:                                              ; preds = %26
  %106 = load i8*, i8** %5, align 8
  %107 = call i32 @watch_junking(i8* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @dallocx(i8* %108, i32 0)
  %110 = load i64, i64* @opt_junk_free, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i64, i64* @saw_junking, align 8
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %112, %105
  %116 = phi i1 [ true, %105 ], [ %114, %112 ]
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @assert_true(i32 %117, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load i64, i64* @opt_junk_free, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @arena_dalloc_junk_small_orig, align 4
  store i32 %123, i32* @arena_dalloc_junk_small, align 4
  %124 = load i32, i32* @arena_dalloc_junk_large_orig, align 4
  store i32 %124, i32* @arena_dalloc_junk_large, align 4
  %125 = load i32, i32* @huge_dalloc_junk_orig, align 4
  store i32 %125, i32* @huge_dalloc_junk, align 4
  br label %126

126:                                              ; preds = %122, %115
  ret void
}

declare dso_local i64 @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i64 @sallocx(i8*, i32) #1

declare dso_local i32 @assert_c_eq(i8 signext, i32, i8*, i64, i64) #1

declare dso_local i64 @ZU(i32) #1

declare dso_local i64 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i32 @watch_junking(i8*) #1

declare dso_local i64 @rallocx(i8*, i64, i32) #1

declare dso_local i32 @assert_true(i32, i8*, i64) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
