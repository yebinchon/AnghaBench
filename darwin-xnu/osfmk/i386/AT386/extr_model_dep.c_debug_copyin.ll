; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_debug_copyin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/AT386/extr_model_dep.c_debug_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i64)* @debug_copyin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_copyin(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %66, %4
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @pmap_find_phys(i32 %23, i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @ptoa_64(i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @PAGE_MASK, align 8
  %30 = and i64 %28, %29
  %31 = or i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = call i64 @kvtophys(i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = sub i64 %35, %38
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* @PAGE_SIZE, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @PAGE_MASK, align 8
  %43 = and i64 %41, %42
  %44 = sub i64 %40, %43
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* %15, align 8
  %47 = call i64 @MIN(i64 %45, i64 %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @MIN(i64 %48, i64 %49)
  store i64 %50, i64* %16, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %22
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @pmap_valid_page(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @bcopy_phys(i64 %61, i64 %62, i64 %63)
  br label %66

65:                                               ; preds = %57, %53, %22
  br label %76

66:                                               ; preds = %60
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %10, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %19

76:                                               ; preds = %65, %19
  %77 = load i64, i64* %9, align 8
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  ret i32 %79
}

declare dso_local i64 @pmap_find_phys(i32, i64) #1

declare dso_local i64 @ptoa_64(i64) #1

declare dso_local i64 @kvtophys(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @pmap_valid_page(i64) #1

declare dso_local i32 @bcopy_phys(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
