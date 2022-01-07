; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1256.h_cp1256_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1256.h_cp1256_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp1256_page00 = common dso_local global i8* null, align 8
@cp1256_page01 = common dso_local global i8* null, align 8
@cp1256_page06 = common dso_local global i8* null, align 8
@cp1256_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp1256_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1256_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %97

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp1256_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %87

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 336
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 408
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @cp1256_page01, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 336
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %86

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 710
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8 -120, i8* %10, align 1
  br label %85

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 1544
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 1752
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** @cp1256_page06, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1544
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %10, align 1
  br label %84

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 8200
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 8256
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** @cp1256_page20, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 8200
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %10, align 1
  br label %83

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 8364
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8 -128, i8* %10, align 1
  br label %82

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 8482
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 -103, i8* %10, align 1
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82, %66
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %36
  br label %87

87:                                               ; preds = %86, %23
  br label %88

88:                                               ; preds = %87
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i8, i8* %10, align 1
  %94 = load i8*, i8** %7, align 8
  store i8 %93, i8* %94, align 1
  store i32 1, i32* %5, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @RET_ILUNI, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %92, %13
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
