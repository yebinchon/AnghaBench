; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/integration/extr_xallocx.c_test_zero.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/integration/extr_xallocx.c_test_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MALLOCX_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected mallocx() error\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory not filled: sz=%zu\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unexpected xallocx() error\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected xallocx() failure\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Memory not filled: sz=%zu, nsz-sz=%zu\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Memory not filled: nsz=%zu\00", align 1
@FILL_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zero(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @MALLOCX_ZERO, align 4
  %11 = call i8* @mallocx(i64 %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @assert_ptr_not_null(i8* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @validate_fill(i8* %14, i32 0, i64 0, i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @memset(i8* %19, i32 122, i64 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @validate_fill(i8* %22, i32 122, i64 0, i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @MALLOCX_ZERO, align 4
  %31 = call i32 @xallocx(i8* %28, i64 %29, i32 0, i32 %30)
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @assert_zu_eq(i32 %31, i64 %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @validate_fill(i8* %34, i32 122, i64 0, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %86, %2
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  %47 = load i32, i32* @MALLOCX_ZERO, align 4
  %48 = call i64 @nallocx(i64 %46, i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  %52 = load i32, i32* @MALLOCX_ZERO, align 4
  %53 = call i32 @xallocx(i8* %49, i64 %51, i32 0, i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @assert_zu_eq(i32 %53, i64 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @validate_fill(i8* %56, i32 122, i64 0, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @validate_fill(i8* %61, i32 0, i64 %62, i64 %65)
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %68, %69
  %71 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %67, i64 %70)
  %72 = load i8*, i8** %7, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @memset(i8* %76, i32 122, i64 %79)
  %81 = load i8*, i8** %7, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @validate_fill(i8* %81, i32 122, i64 0, i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %44
  %87 = load i64, i64* %6, align 8
  store i64 %87, i64* %5, align 8
  br label %40

88:                                               ; preds = %40
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @dallocx(i8* %89, i32 0)
  ret void
}

declare dso_local i8* @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @assert_false(i32, i8*, i64, ...) #1

declare dso_local i32 @validate_fill(i8*, i32, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @assert_zu_eq(i32, i64, i8*) #1

declare dso_local i32 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i64 @nallocx(i64, i32) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
