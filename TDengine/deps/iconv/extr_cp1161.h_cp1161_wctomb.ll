; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1161.h_cp1161_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1161.h_cp1161_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1161_page00 = common dso_local global i8* null, align 8
@cp874_page0e = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1161_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1161_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %70

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 176
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp1161_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %60

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 3656
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 3660
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 3424
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %10, align 1
  br label %59

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 3584
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 3680
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i8*, i8** @cp874_page0e, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 3584
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %10, align 1
  br label %58

53:                                               ; preds = %43, %40
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 8364
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i8 -34, i8* %10, align 1
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57, %46
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %23
  br label %61

61:                                               ; preds = %60
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8, i8* %10, align 1
  %67 = load i8*, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  store i32 1, i32* %5, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @RET_ILUNI, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %65, %13
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
