; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp874.h_cp874_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp874.h_cp874_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp874_page0e = common dso_local global i8* null, align 8
@cp874_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp874_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp874_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %64

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 160
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8 -96, i8* %10, align 1
  br label %54

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 3584
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 3680
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** @cp874_page0e, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 3584
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %10, align 1
  br label %53

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 8208
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 8232
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @cp874_page20, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 8208
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  br label %52

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 8364
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 -128, i8* %10, align 1
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %27
  br label %54

54:                                               ; preds = %53, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i8, i8* %10, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8, i8* %10, align 1
  %61 = load i8*, i8** %7, align 8
  store i8 %60, i8* %61, align 1
  store i32 1, i32* %5, align 4
  br label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @RET_ILUNI, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %59, %13
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
