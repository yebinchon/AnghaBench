; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_jisx0212.h_jisx0212_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_jisx0212.h_jisx0212_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jisx0212_2uni_page22 = common dso_local global i16* null, align 8
@jisx0212_2uni_page26 = common dso_local global i16* null, align 8
@jisx0212_2uni_page29 = common dso_local global i16* null, align 8
@jisx0212_2uni_page30 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @jisx0212_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jisx0212_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %19 = icmp eq i32 %18, 34
  br i1 %19, label %44, label %20

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 38
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 39
  br i1 %27, label %44, label %28

28:                                               ; preds = %24, %20
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sge i32 %30, 41
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sle i32 %34, 43
  br i1 %35, label %44, label %36

36:                                               ; preds = %32, %28
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %134

40:                                               ; preds = %36
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 109
  br i1 %43, label %44, label %134

44:                                               ; preds = %40, %32, %24, %4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sge i32 %45, 2
  br i1 %46, label %47, label %132

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %11, align 1
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sge i32 %52, 33
  br i1 %53, label %54, label %130

54:                                               ; preds = %47
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 127
  br i1 %57, label %58, label %130

58:                                               ; preds = %54
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 33
  %62 = mul nsw i32 94, %61
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 %64, 33
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %67 = load i32, i32* %12, align 4
  %68 = icmp ult i32 %67, 470
  br i1 %68, label %69, label %80

69:                                               ; preds = %58
  %70 = load i32, i32* %12, align 4
  %71 = icmp ult i32 %70, 175
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i16*, i16** @jisx0212_2uni_page22, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sub i32 %74, 94
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %73, i64 %76
  %78 = load i16, i16* %77, align 2
  store i16 %78, i16* %13, align 2
  br label %79

79:                                               ; preds = %72, %69
  br label %121

80:                                               ; preds = %58
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %81, 752
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = icmp ult i32 %84, 658
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i16*, i16** @jisx0212_2uni_page26, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sub i32 %88, 470
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %87, i64 %90
  %92 = load i16, i16* %91, align 2
  store i16 %92, i16* %13, align 2
  br label %93

93:                                               ; preds = %86, %83
  br label %120

94:                                               ; preds = %80
  %95 = load i32, i32* %12, align 4
  %96 = icmp ult i32 %95, 1410
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = icmp ult i32 %98, 1027
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i16*, i16** @jisx0212_2uni_page29, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sub i32 %102, 752
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %101, i64 %104
  %106 = load i16, i16* %105, align 2
  store i16 %106, i16* %13, align 2
  br label %107

107:                                              ; preds = %100, %97
  br label %119

108:                                              ; preds = %94
  %109 = load i32, i32* %12, align 4
  %110 = icmp ult i32 %109, 7211
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load i16*, i16** @jisx0212_2uni_page30, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sub i32 %113, 1410
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %112, i64 %115
  %117 = load i16, i16* %116, align 2
  store i16 %117, i16* %13, align 2
  br label %118

118:                                              ; preds = %111, %108
  br label %119

119:                                              ; preds = %118, %107
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %79
  %122 = load i16, i16* %13, align 2
  %123 = zext i16 %122 to i32
  %124 = icmp ne i32 %123, 65533
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i16, i16* %13, align 2
  %127 = zext i16 %126 to i64
  %128 = load i64*, i64** %7, align 8
  store i64 %127, i64* %128, align 8
  store i32 2, i32* %5, align 4
  br label %136

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %54, %47
  %131 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %131, i32* %5, align 4
  br label %136

132:                                              ; preds = %44
  %133 = call i32 @RET_TOOFEW(i32 0)
  store i32 %133, i32* %5, align 4
  br label %136

134:                                              ; preds = %40, %36
  %135 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %132, %130, %125
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
