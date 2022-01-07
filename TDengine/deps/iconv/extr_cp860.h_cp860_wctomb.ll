; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp860.h_cp860_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp860.h_cp860_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp860_page00 = common dso_local global i8* null, align 8
@cp860_page03 = common dso_local global i8* null, align 8
@cp860_page22 = common dso_local global i8* null, align 8
@cp860_page25 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp860_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp860_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %103

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp860_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %93

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 912
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 968
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @cp860_page03, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 912
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %92

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 8319
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8 -4, i8* %10, align 1
  br label %91

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 8359
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 -98, i8* %10, align 1
  br label %90

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 8728
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 8808
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @cp860_page22, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 8728
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %10, align 1
  br label %89

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 8992
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 8994
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 8748
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %10, align 1
  br label %88

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 9472
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 9640
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i8*, i8** @cp860_page25, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 9472
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %10, align 1
  br label %87

87:                                               ; preds = %80, %77, %74
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %57
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91, %36
  br label %93

93:                                               ; preds = %92, %23
  br label %94

94:                                               ; preds = %93
  %95 = load i8, i8* %10, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8, i8* %10, align 1
  %100 = load i8*, i8** %7, align 8
  store i8 %99, i8* %100, align 1
  store i32 1, i32* %5, align 4
  br label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @RET_ILUNI, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %98, %13
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
