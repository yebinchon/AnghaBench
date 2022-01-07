; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_plat.c_plat_mmap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_plat.c_plat_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plat_mmap.hugetlb_warned = internal global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@HUGETLB_THRESHOLD = common dso_local global i64 0, align 8
@MAP_HUGETLB = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"warning: failed to do hugetlb mmap (%p, %zu): %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"warning: mmaped to %p, requested %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @plat_mmap(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @PROT_READ, align 4
  %15 = load i32, i32* @PROT_WRITE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @MAP_PRIVATE, align 4
  %18 = load i32, i32* @MAP_ANONYMOUS, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @PROT_EXEC, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @MAP_FIXED, align 4
  %33 = load i32, i32* %11, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @HUGETLB_THRESHOLD, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @MAP_HUGETLB, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @mmap(i8* %44, i64 %45, i32 %46, i32 %47, i32 -1, i32 0)
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i8*, i8** @MAP_FAILED, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @MAP_HUGETLB, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load i32, i32* @plat_mmap.hugetlb_warned, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %7, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %64, i32 %65)
  store i32 1, i32* @plat_mmap.hugetlb_warned, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = load i32, i32* @MAP_HUGETLB, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @mmap(i8* %72, i64 %73, i32 %74, i32 %75, i32 -1, i32 0)
  store i8* %76, i8** %13, align 8
  br label %77

77:                                               ; preds = %67, %52, %43
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** @MAP_FAILED, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i8* null, i8** %5, align 8
  br label %96

82:                                               ; preds = %77
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = icmp ne i8* %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i32, i32* @stderr, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %91, i8* %92)
  br label %94

94:                                               ; preds = %89, %85, %82
  %95 = load i8*, i8** %13, align 8
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %94, %81
  %97 = load i8*, i8** %5, align 8
  ret i8* %97
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
