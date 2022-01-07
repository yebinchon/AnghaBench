; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp437.h_cp437_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp437.h_cp437_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp437_page00 = common dso_local global i8* null, align 8
@cp437_page03 = common dso_local global i8* null, align 8
@cp437_page22 = common dso_local global i8* null, align 8
@cp437_page23 = common dso_local global i8* null, align 8
@cp437_page25 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp437_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp437_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  br label %111

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp437_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %101

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 402
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i8 -97, i8* %10, align 1
  br label %100

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = icmp sge i32 %35, 912
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 968
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** @cp437_page03, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 912
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  br label %99

47:                                               ; preds = %37, %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 8319
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8 -4, i8* %10, align 1
  br label %98

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %52, 8359
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8 -98, i8* %10, align 1
  br label %97

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 8728
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 8808
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8*, i8** @cp437_page22, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 8728
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %10, align 1
  br label %96

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 8976
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 9000
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i8*, i8** @cp437_page23, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 8976
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  store i8 %80, i8* %10, align 1
  br label %95

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %82, 9472
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 9640
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i8*, i8** @cp437_page25, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 9472
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %10, align 1
  br label %94

94:                                               ; preds = %87, %84, %81
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %61
  br label %97

97:                                               ; preds = %96, %54
  br label %98

98:                                               ; preds = %97, %50
  br label %99

99:                                               ; preds = %98, %40
  br label %100

100:                                              ; preds = %99, %33
  br label %101

101:                                              ; preds = %100, %23
  br label %102

102:                                              ; preds = %101
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i8, i8* %10, align 1
  %108 = load i8*, i8** %7, align 8
  store i8 %107, i8* %108, align 1
  store i32 1, i32* %5, align 4
  br label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @RET_ILUNI, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %106, %13
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
