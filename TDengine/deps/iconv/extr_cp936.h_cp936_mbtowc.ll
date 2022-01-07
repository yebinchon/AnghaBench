; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936.h_cp936_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936.h_cp936_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cp936_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp936_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @ces_gbk_mbtowc(i32 %14, i32* %15, i8* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @RET_ILSEQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %133

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  store i32 8364, i32* %31, align 4
  store i32 1, i32* %5, align 4
  br label %133

32:                                               ; preds = %24
  %33 = load i8, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp sge i32 %34, 161
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load i8, i8* %11, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sle i32 %38, 162
  br i1 %39, label %40, label %81

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @RET_TOOFEW(i32 0)
  store i32 %44, i32* %5, align 4
  br label %133

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %12, align 1
  %49 = load i8, i8* %12, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 64
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8, i8* %12, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp slt i32 %54, 127
  br i1 %55, label %64, label %56

56:                                               ; preds = %52, %45
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 128
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 161
  br i1 %63, label %64, label %80

64:                                               ; preds = %60, %52
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %66, 161
  %68 = mul nsw i32 96, %67
  %69 = add nsw i32 58566, %68
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sge i32 %73, 128
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 65, i32 64
  %77 = sub nsw i32 %71, %76
  %78 = add nsw i32 %69, %77
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 2, i32* %5, align 4
  br label %133

80:                                               ; preds = %60, %56
  br label %131

81:                                               ; preds = %36, %32
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp sge i32 %83, 170
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i8, i8* %11, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp slt i32 %87, 176
  br i1 %88, label %97, label %89

89:                                               ; preds = %85, %81
  %90 = load i8, i8* %11, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp sge i32 %91, 248
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp slt i32 %95, 255
  br i1 %96, label %97, label %130

97:                                               ; preds = %93, %85
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 @RET_TOOFEW(i32 0)
  store i32 %101, i32* %5, align 4
  br label %133

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %13, align 1
  %106 = load i8, i8* %13, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sge i32 %107, 161
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load i8, i8* %13, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp slt i32 %111, 255
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load i8, i8* %11, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* %11, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp sge i32 %117, 248
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 242, i32 170
  %121 = sub nsw i32 %115, %120
  %122 = mul nsw i32 94, %121
  %123 = add nsw i32 57344, %122
  %124 = load i8, i8* %13, align 1
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 %125, 161
  %127 = add nsw i32 %123, %126
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  store i32 2, i32* %5, align 4
  br label %133

129:                                              ; preds = %109, %102
  br label %130

130:                                              ; preds = %129, %93, %89
  br label %131

131:                                              ; preds = %130, %80
  %132 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %113, %100, %64, %43, %30, %22
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @ces_gbk_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
