; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_1.h_cns11643_1_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_1.h_cns11643_1_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cns11643_1_2uni_page21 = common dso_local global i16* null, align 8
@cns11643_1_2uni_page42 = common dso_local global i16* null, align 8
@cns11643_1_2uni_page44 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @cns11643_1_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns11643_1_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 33
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 39
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %4
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 66
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 68
  br i1 %31, label %32, label %125

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 125
  br i1 %35, label %36, label %125

36:                                               ; preds = %32, %24, %20
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %123

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %11, align 1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 33
  br i1 %45, label %46, label %121

46:                                               ; preds = %39
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 127
  br i1 %49, label %50, label %121

50:                                               ; preds = %46
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %52, 33
  %54 = mul nsw i32 94, %53
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 33
  %58 = add nsw i32 %54, %57
  store i32 %58, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %59 = load i32, i32* %12, align 4
  %60 = icmp ult i32 %59, 3102
  br i1 %60, label %61, label %86

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = icmp ult i32 %62, 500
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i16*, i16** @cns11643_1_2uni_page21, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  %69 = load i16, i16* %68, align 2
  store i16 %69, i16* %13, align 2
  br label %85

70:                                               ; preds = %61
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 571
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i16 20128, i16* %13, align 2
  br label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 578
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i16 20907, i16* %13, align 2
  br label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 583
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i16 21241, i16* %13, align 2
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %77
  br label %84

84:                                               ; preds = %83, %73
  br label %85

85:                                               ; preds = %84, %64
  br label %112

86:                                               ; preds = %50
  %87 = load i32, i32* %12, align 4
  %88 = icmp ult i32 %87, 3290
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = icmp ult i32 %90, 3136
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i16*, i16** @cns11643_1_2uni_page42, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sub i32 %94, 3102
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %93, i64 %96
  %98 = load i16, i16* %97, align 2
  store i16 %98, i16* %13, align 2
  br label %99

99:                                               ; preds = %92, %89
  br label %111

100:                                              ; preds = %86
  %101 = load i32, i32* %12, align 4
  %102 = icmp ult i32 %101, 8691
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i16*, i16** @cns11643_1_2uni_page44, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sub i32 %105, 3290
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %104, i64 %107
  %109 = load i16, i16* %108, align 2
  store i16 %109, i16* %13, align 2
  br label %110

110:                                              ; preds = %103, %100
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %85
  %113 = load i16, i16* %13, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp ne i32 %114, 65533
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i16, i16* %13, align 2
  %118 = zext i16 %117 to i64
  %119 = load i64*, i64** %7, align 8
  store i64 %118, i64* %119, align 8
  store i32 2, i32* %5, align 4
  br label %127

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %46, %39
  %122 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %122, i32* %5, align 4
  br label %127

123:                                              ; preds = %36
  %124 = call i32 @RET_TOOFEW(i32 0)
  store i32 %124, i32* %5, align 4
  br label %127

125:                                              ; preds = %32, %28
  %126 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %123, %121, %116
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
