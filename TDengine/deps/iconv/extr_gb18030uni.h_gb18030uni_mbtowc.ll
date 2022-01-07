; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030uni.h_gb18030uni_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030uni.h_gb18030uni_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb18030uni_charset2uni_ranges = common dso_local global i32* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@gb18030uni_ranges = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @gb18030uni_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030uni_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sge i32 %23, 129
  br i1 %24, label %25, label %157

25:                                               ; preds = %4
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sle i32 %27, 132
  br i1 %28, label %29, label %157

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %155

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %11, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 48
  br i1 %38, label %39, label %153

39:                                               ; preds = %32
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sle i32 %41, 57
  br i1 %42, label %43, label %153

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %151

46:                                               ; preds = %43
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %12, align 1
  %50 = load i8, i8* %12, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp sge i32 %51, 129
  br i1 %52, label %53, label %149

53:                                               ; preds = %46
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sle i32 %55, 254
  br i1 %56, label %57, label %149

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 4
  br i1 %59, label %60, label %147

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 3
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %13, align 1
  %64 = load i8, i8* %13, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %145

67:                                               ; preds = %60
  %68 = load i8, i8* %13, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sle i32 %69, 57
  br i1 %70, label %71, label %145

71:                                               ; preds = %67
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %73, 129
  %75 = mul nsw i32 %74, 10
  %76 = load i8, i8* %11, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 48
  %79 = add nsw i32 %75, %78
  %80 = mul nsw i32 %79, 126
  %81 = load i8, i8* %12, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 %82, 129
  %84 = add nsw i32 %80, %83
  %85 = mul nsw i32 %84, 10
  %86 = load i8, i8* %13, align 1
  %87 = zext i8 %86 to i32
  %88 = sub nsw i32 %87, 48
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp uge i32 %90, 0
  br i1 %91, label %92, label %144

92:                                               ; preds = %71
  %93 = load i32, i32* %14, align 4
  %94 = icmp ule i32 %93, 39419
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  store i32 0, i32* %15, align 4
  store i32 205, i32* %16, align 4
  br label %96

96:                                               ; preds = %132, %95
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = add i32 %101, %102
  %104 = udiv i32 %103, 2
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** @gb18030uni_charset2uni_ranges, align 8
  %107 = load i32, i32* %17, align 4
  %108 = mul i32 2, %107
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ule i32 %105, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %16, align 4
  br label %132

116:                                              ; preds = %100
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** @gb18030uni_charset2uni_ranges, align 8
  %119 = load i32, i32* %17, align 4
  %120 = mul i32 2, %119
  %121 = add i32 %120, 2
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %118, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp uge i32 %117, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load i32, i32* %17, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %131

129:                                              ; preds = %116
  %130 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %130, i32* %5, align 4
  br label %159

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %114
  br label %96

133:                                              ; preds = %96
  %134 = load i32*, i32** @gb18030uni_ranges, align 8
  %135 = load i32, i32* %15, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %18, align 4
  %141 = add i32 %139, %140
  %142 = zext i32 %141 to i64
  %143 = load i64*, i64** %7, align 8
  store i64 %142, i64* %143, align 8
  store i32 4, i32* %5, align 4
  br label %159

144:                                              ; preds = %92, %71
  br label %145

145:                                              ; preds = %144, %67, %60
  %146 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %146, i32* %5, align 4
  br label %159

147:                                              ; preds = %57
  %148 = call i32 @RET_TOOFEW(i32 0)
  store i32 %148, i32* %5, align 4
  br label %159

149:                                              ; preds = %53, %46
  %150 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %150, i32* %5, align 4
  br label %159

151:                                              ; preds = %43
  %152 = call i32 @RET_TOOFEW(i32 0)
  store i32 %152, i32* %5, align 4
  br label %159

153:                                              ; preds = %39, %32
  %154 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %154, i32* %5, align 4
  br label %159

155:                                              ; preds = %29
  %156 = call i32 @RET_TOOFEW(i32 0)
  store i32 %156, i32* %5, align 4
  br label %159

157:                                              ; preds = %25, %4
  %158 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %155, %153, %151, %149, %147, %145, %133, %129
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
