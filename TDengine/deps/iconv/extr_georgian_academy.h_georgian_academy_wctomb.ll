; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_georgian_academy.h_georgian_academy_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_georgian_academy.h_georgian_academy_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@georgian_academy_page00 = common dso_local global i8* null, align 8
@georgian_academy_page01 = common dso_local global i8* null, align 8
@georgian_academy_page02 = common dso_local global i8* null, align 8
@georgian_academy_page20 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @georgian_academy_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @georgian_academy_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %114

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 128
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 160
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @georgian_academy_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 128
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %104

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 160
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 192
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %37, 231
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 256
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %8, align 4
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %10, align 1
  br label %103

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 336
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 408
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i8*, i8** @georgian_academy_page01, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 336
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %10, align 1
  br label %102

58:                                               ; preds = %48, %45
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 704
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 736
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8*, i8** @georgian_academy_page02, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 704
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %10, align 1
  br label %101

71:                                               ; preds = %61, %58
  %72 = load i32, i32* %8, align 4
  %73 = icmp sge i32 %72, 4304
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 4343
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 4112
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %10, align 1
  br label %100

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 8208
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 8256
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i8*, i8** @georgian_academy_page20, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 8208
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %10, align 1
  br label %99

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 8482
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8 -103, i8* %10, align 1
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %87
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %64
  br label %102

102:                                              ; preds = %101, %51
  br label %103

103:                                              ; preds = %102, %42
  br label %104

104:                                              ; preds = %103, %23
  br label %105

105:                                              ; preds = %104
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i8, i8* %10, align 1
  %111 = load i8*, i8** %7, align 8
  store i8 %110, i8* %111, align 1
  store i32 1, i32* %5, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @RET_ILUNI, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %109, %13
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
