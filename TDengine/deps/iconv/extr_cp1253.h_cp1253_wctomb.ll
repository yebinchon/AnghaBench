; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1253.h_cp1253_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1253.h_cp1253_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1253_page00 = common dso_local global i8* null, align 8
@cp1253_page03 = common dso_local global i8* null, align 8
@cp1253_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1253_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1253_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %83

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 192
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp1253_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %73

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 402
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 -125, i8* %10, align 1
  br label %72

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 896
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 976
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @cp1253_page03, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 896
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  br label %71

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 8208
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 8256
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** @cp1253_page20, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 8208
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %10, align 1
  br label %70

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %61, 8364
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i8 -128, i8* %10, align 1
  br label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 8482
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i8 -103, i8* %10, align 1
  br label %68

68:                                               ; preds = %67, %64
  br label %69

69:                                               ; preds = %68, %63
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %33
  br label %73

73:                                               ; preds = %72, %23
  br label %74

74:                                               ; preds = %73
  %75 = load i8, i8* %10, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8, i8* %10, align 1
  %80 = load i8*, i8** %7, align 8
  store i8 %79, i8* %80, align 1
  store i32 1, i32* %5, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @RET_ILUNI, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %78, %13
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
