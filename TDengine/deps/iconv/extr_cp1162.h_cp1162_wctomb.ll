; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1162.h_cp1162_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1162.h_cp1162_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp874_2uni = common dso_local global i32* null, align 8
@cp874_page0e = common dso_local global i8* null, align 8
@cp874_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1162_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1162_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %82

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 128
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 160
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32*, i32** @cp874_2uni, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 128
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 65533
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %10, align 1
  br label %72

34:                                               ; preds = %23, %20, %17
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 160
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8 -96, i8* %10, align 1
  br label %71

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 3584
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 3680
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** @cp874_page0e, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 3584
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  br label %70

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 8208
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 8232
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @cp874_page20, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 8208
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %10, align 1
  br label %69

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 8364
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i8 -128, i8* %10, align 1
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %37
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72
  %74 = load i8, i8* %10, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8, i8* %10, align 1
  %79 = load i8*, i8** %7, align 8
  store i8 %78, i8* %79, align 1
  store i32 1, i32* %5, align 4
  br label %82

80:                                               ; preds = %73
  %81 = load i32, i32* @RET_ILUNI, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %77, %13
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
