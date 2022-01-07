; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_ksc5601.h_ksc5601_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_ksc5601.h_ksc5601_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ksc5601_2uni_page21 = common dso_local global i16* null, align 8
@ksc5601_2uni_page30 = common dso_local global i16* null, align 8
@ksc5601_2uni_page4a = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @ksc5601_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksc5601_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %23 = icmp sle i32 %22, 44
  br i1 %23, label %40, label %24

24:                                               ; preds = %20, %4
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 48
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 72
  br i1 %31, label %40, label %32

32:                                               ; preds = %28, %24
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 74
  br i1 %35, label %36, label %114

36:                                               ; preds = %32
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %38, 125
  br i1 %39, label %40, label %114

40:                                               ; preds = %36, %28, %20
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %112

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %11, align 1
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sge i32 %48, 33
  br i1 %49, label %50, label %110

50:                                               ; preds = %43
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %52, 127
  br i1 %53, label %54, label %110

54:                                               ; preds = %50
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %56, 33
  %58 = mul nsw i32 94, %57
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 33
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %63 = load i32, i32* %12, align 4
  %64 = icmp ult i32 %63, 1410
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load i32, i32* %12, align 4
  %67 = icmp ult i32 %66, 1115
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i16*, i16** @ksc5601_2uni_page21, align 8
  %70 = load i32, i32* %12, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  %73 = load i16, i16* %72, align 2
  store i16 %73, i16* %13, align 2
  br label %74

74:                                               ; preds = %68, %65
  br label %101

75:                                               ; preds = %54
  %76 = load i32, i32* %12, align 4
  %77 = icmp ult i32 %76, 3854
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp ult i32 %79, 3760
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i16*, i16** @ksc5601_2uni_page30, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sub i32 %83, 1410
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %82, i64 %85
  %87 = load i16, i16* %86, align 2
  store i16 %87, i16* %13, align 2
  br label %88

88:                                               ; preds = %81, %78
  br label %100

89:                                               ; preds = %75
  %90 = load i32, i32* %12, align 4
  %91 = icmp ult i32 %90, 8742
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i16*, i16** @ksc5601_2uni_page4a, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sub i32 %94, 3854
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %93, i64 %96
  %98 = load i16, i16* %97, align 2
  store i16 %98, i16* %13, align 2
  br label %99

99:                                               ; preds = %92, %89
  br label %100

100:                                              ; preds = %99, %88
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i16, i16* %13, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp ne i32 %103, 65533
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i16, i16* %13, align 2
  %107 = zext i16 %106 to i64
  %108 = load i64*, i64** %7, align 8
  store i64 %107, i64* %108, align 8
  store i32 2, i32* %5, align 4
  br label %116

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %50, %43
  %111 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %111, i32* %5, align 4
  br label %116

112:                                              ; preds = %40
  %113 = call i32 @RET_TOOFEW(i32 0)
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %36, %32
  %115 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %112, %110, %105
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
