; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp949.h_cp949_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp949.h_cp949_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cp949_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp949_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %10, align 1
  %16 = load i8, i8* %10, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ascii_mbtowc(i32 %20, i32* %21, i8* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %122

25:                                               ; preds = %4
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sge i32 %27, 129
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 160
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @uhc_1_mbtowc(i32 %34, i32* %35, i8* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %122

39:                                               ; preds = %29, %25
  %40 = load i8, i8* %10, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 161
  br i1 %42, label %43, label %120

43:                                               ; preds = %39
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 255
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @RET_TOOFEW(i32 0)
  store i32 %51, i32* %5, align 4
  br label %122

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %11, align 1
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp slt i32 %57, 161
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @uhc_2_mbtowc(i32 %60, i32* %61, i8* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %122

65:                                               ; preds = %52
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %67, 255
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 162
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 232
  br i1 %76, label %118, label %77

77:                                               ; preds = %73, %69
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 %79, 128
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %81, i8* %82, align 1
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %84, 128
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %86, i8* %87, align 1
  %88 = load i32, i32* %6, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %91 = call i32 @ksc5601_mbtowc(i32 %88, i32* %89, i8* %90, i32 2)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @RET_ILSEQ, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %77
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %122

97:                                               ; preds = %77
  %98 = load i8, i8* %10, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 201
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %103, 161
  %105 = add nsw i32 57344, %104
  %106 = load i32*, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  store i32 2, i32* %5, align 4
  br label %122

107:                                              ; preds = %97
  %108 = load i8, i8* %10, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 254
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i8, i8* %11, align 1
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %113, 161
  %115 = add nsw i32 57438, %114
  %116 = load i32*, i32** %7, align 8
  store i32 %115, i32* %116, align 4
  store i32 2, i32* %5, align 4
  br label %122

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %73, %65
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %43, %39
  %121 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %111, %101, %95, %59, %50, %33, %19
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @uhc_1_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @uhc_2_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @ksc5601_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
