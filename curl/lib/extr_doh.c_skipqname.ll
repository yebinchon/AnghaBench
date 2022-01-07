; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_skipqname.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_skipqname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOH_DNS_OUT_OF_RANGE = common dso_local global i32 0, align 4
@DOH_DNS_BAD_LABEL = common dso_local global i32 0, align 4
@DOH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*)* @skipqname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skipqname(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  br label %9

9:                                                ; preds = %68, %3
  %10 = load i64, i64* %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @DOH_DNS_OUT_OF_RANGE, align 4
  store i32 %17, i32* %4, align 4
  br label %73

18:                                               ; preds = %9
  %19 = load i8*, i8** %5, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %8, align 1
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 192
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %42

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 2
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %30, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @DOH_DNS_OUT_OF_RANGE, align 4
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %40, 2
  store i32 %41, i32* %39, align 4
  br label %71

42:                                               ; preds = %18
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 192
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @DOH_DNS_BAD_LABEL, align 4
  store i32 %48, i32* %4, align 4
  br label %73

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, 1
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = add i32 %53, %55
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %50, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @DOH_DNS_OUT_OF_RANGE, align 4
  store i32 %60, i32* %4, align 4
  br label %73

61:                                               ; preds = %49
  %62 = load i8, i8* %8, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 1, %63
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i8, i8* %8, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %9, label %71

71:                                               ; preds = %68, %38
  %72 = load i32, i32* @DOH_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %59, %47, %36, %16
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
