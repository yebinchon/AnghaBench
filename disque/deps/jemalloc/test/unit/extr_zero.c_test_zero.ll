; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_zero.c_test_zero.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_zero.c_test_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unexpected mallocx() failure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Previously allocated byte %zu/%zu is corrupted\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Newly allocated byte %zu/%zu isn't zero-filled\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected rallocx() failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zero(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @mallocx(i64 %9, i32 0)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @assert_ptr_not_null(i8* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @sallocx(i8* %14, i32 0)
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %75, %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @ZU(i32 0)
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @assert_c_eq(i8 signext %26, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @assert_c_eq(i8 signext %34, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %23, %20
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %56, %39
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @assert_c_eq(i8 signext %49, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %50, i64 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 97, i8* %55, align 1
  br label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %41

59:                                               ; preds = %41
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  %63 = call i64 @xallocx(i8* %60, i64 %62, i32 0, i32 0)
  %64 = load i64, i64* %7, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  %70 = call i64 @rallocx(i8* %67, i64 %69, i32 0)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %5, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @assert_ptr_not_null(i8* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %66, %59
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %6, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @sallocx(i8* %77, i32 0)
  store i64 %78, i64* %7, align 8
  br label %16

79:                                               ; preds = %16
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @dallocx(i8* %80, i32 0)
  ret void
}

declare dso_local i64 @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i64 @sallocx(i8*, i32) #1

declare dso_local i32 @assert_c_eq(i8 signext, i32, i8*, i64, i64) #1

declare dso_local i64 @ZU(i32) #1

declare dso_local i64 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i64 @rallocx(i8*, i64, i32) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
