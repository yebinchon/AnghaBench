; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_ukraine.h_mac_ukraine_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_ukraine.h_mac_ukraine_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mac_ukraine_page00 = common dso_local global i8* null, align 8
@mac_ukraine_page04 = common dso_local global i8* null, align 8
@mac_ukraine_page20 = common dso_local global i8* null, align 8
@mac_ukraine_page21 = common dso_local global i8* null, align 8
@mac_ukraine_page22 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @mac_ukraine_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_ukraine_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %106

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 192
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @mac_ukraine_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %96

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 247
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 -42, i8* %10, align 1
  br label %95

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 402
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8 -60, i8* %10, align 1
  br label %94

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 1024
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 1176
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i8*, i8** @mac_ukraine_page04, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1024
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %10, align 1
  br label %93

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 8208
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 8232
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @mac_ukraine_page20, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 8208
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %10, align 1
  br label %92

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 8464
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 8488
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i8*, i8** @mac_ukraine_page21, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 8464
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %10, align 1
  br label %91

77:                                               ; preds = %67, %64
  %78 = load i32, i32* %8, align 4
  %79 = icmp sge i32 %78, 8704
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 8808
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i8*, i8** @mac_ukraine_page22, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 8704
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  store i8 %89, i8* %10, align 1
  br label %90

90:                                               ; preds = %83, %80, %77
  br label %91

91:                                               ; preds = %90, %70
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %44
  br label %94

94:                                               ; preds = %93, %37
  br label %95

95:                                               ; preds = %94, %33
  br label %96

96:                                               ; preds = %95, %23
  br label %97

97:                                               ; preds = %96
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i8, i8* %10, align 1
  %103 = load i8*, i8** %7, align 8
  store i8 %102, i8* %103, align 1
  store i32 1, i32* %5, align 4
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @RET_ILUNI, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %101, %13
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
