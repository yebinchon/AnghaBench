; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidlistuptrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_pidlistuptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_ADDR_NULL = common dso_local global i32 0, align 4
@MAX_UPTRS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_pidlistuptrs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @USER_ADDR_NULL, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MAX_UPTRS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @MAX_UPTRS, align 4
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @kalloc(i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bzero(i8* %37, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  br label %45

44:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %30
  br label %47

46:                                               ; preds = %4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @kevent_proc_copy_uptrs(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @os_mul_overflow(i32 %55, i32 4, i64* %13)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @ERANGE, align 4
  store i32 %59, i32* %10, align 4
  br label %74

60:                                               ; preds = %54
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %11, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @copyout(i8* %69, i32 %70, i64 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %68, %47
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %12, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @kfree(i8* %80, i32 %81)
  store i8* null, i8** %11, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i8* @kalloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kevent_proc_copy_uptrs(i32, i8*, i32) #1

declare dso_local i64 @os_mul_overflow(i32, i32, i64*) #1

declare dso_local i32 @copyout(i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
