; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_centraleurope.h_mac_centraleurope_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_mac_centraleurope.h_mac_centraleurope_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mac_centraleurope_page00 = common dso_local global i8* null, align 8
@mac_centraleurope_page20 = common dso_local global i8* null, align 8
@mac_centraleurope_page22 = common dso_local global i8* null, align 8
@mac_centraleurope_page22_1 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @mac_centraleurope_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_centraleurope_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %22 = icmp slt i32 %21, 384
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @mac_centraleurope_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %87

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 711
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 -1, i8* %10, align 1
  br label %86

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 8208
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 8256
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @mac_centraleurope_page20, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 8208
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  br label %85

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 8482
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 -86, i8* %10, align 1
  br label %84

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 8704
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 8736
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i8*, i8** @mac_centraleurope_page22, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 8704
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %10, align 1
  br label %83

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 8800
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 8808
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i8*, i8** @mac_centraleurope_page22_1, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 8800
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  store i8 %76, i8* %10, align 1
  br label %82

77:                                               ; preds = %67, %64
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 9674
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 -41, i8* %10, align 1
  br label %81

81:                                               ; preds = %80, %77
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %57
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %40
  br label %86

86:                                               ; preds = %85, %33
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
