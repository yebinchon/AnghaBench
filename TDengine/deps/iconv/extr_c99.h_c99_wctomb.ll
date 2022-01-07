; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_c99.h_c99_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_c99.h_c99_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @c99_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c99_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 160
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %7, align 8
  store i8 %18, i8* %19, align 1
  store i32 1, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 65536
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 6, i32* %10, align 4
  store i8 117, i8* %11, align 1
  br label %25

24:                                               ; preds = %20
  store i32 10, i32* %10, align 4
  store i8 85, i8* %11, align 1
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 92, i8* %31, align 1
  %32 = load i8, i8* %11, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 %32, i8* %34, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 3
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %61, %29
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 4, %44
  %46 = ashr i32 %43, %45
  %47 = and i32 %46, 15
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ult i32 %48, 10
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = add i32 48, %51
  br label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %13, align 4
  %55 = add i32 87, %54
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %52, %50 ], [ %55, %53 ]
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %12, align 4
  br label %39

64:                                               ; preds = %39
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %68

66:                                               ; preds = %25
  %67 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %64, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
