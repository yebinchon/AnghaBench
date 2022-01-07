; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab.h_johab_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_johab.h_johab_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @johab_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @johab_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca [2 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64*, i64** %7, align 8
  store i64 8361, i64* %26, align 8
  br label %31

27:                                               ; preds = %21
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i64
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %25
  store i32 1, i32* %5, align 4
  br label %160

32:                                               ; preds = %4
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 216
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i64*, i64** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @johab_hangul_mbtowc(i32 %37, i64* %38, i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %160

42:                                               ; preds = %32
  %43 = load i8, i8* %10, align 1
  store i8 %43, i8* %11, align 1
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 217
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sle i32 %49, 222
  br i1 %50, label %59, label %51

51:                                               ; preds = %47, %42
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp sge i32 %53, 224
  br i1 %54, label %55, label %158

55:                                               ; preds = %51
  %56 = load i8, i8* %11, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 249
  br i1 %58, label %59, label %158

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @RET_TOOFEW(i32 0)
  store i32 %63, i32* %5, align 4
  br label %160

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %12, align 1
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp sge i32 %69, 49
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 126
  br i1 %74, label %83, label %75

75:                                               ; preds = %71, %64
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp sge i32 %77, 145
  br i1 %78, label %79, label %157

79:                                               ; preds = %75
  %80 = load i8, i8* %12, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp sle i32 %81, 254
  br i1 %82, label %83, label %157

83:                                               ; preds = %79, %71
  %84 = load i8, i8* %11, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 218
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i8, i8* %12, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sge i32 %89, 161
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sle i32 %93, 211
  br i1 %94, label %156, label %95

95:                                               ; preds = %91, %87, %83
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp slt i32 %97, 224
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8, i8* %11, align 1
  %101 = zext i8 %100 to i32
  %102 = sub nsw i32 %101, 217
  %103 = mul nsw i32 2, %102
  br label %109

104:                                              ; preds = %95
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = mul nsw i32 2, %106
  %108 = sub nsw i32 %107, 407
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i32 [ %103, %99 ], [ %108, %104 ]
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %13, align 1
  %112 = load i8, i8* %12, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp slt i32 %113, 145
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i8, i8* %12, align 1
  %117 = zext i8 %116 to i32
  %118 = sub nsw i32 %117, 49
  br label %123

119:                                              ; preds = %109
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %121, 67
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i32 [ %118, %115 ], [ %122, %119 ]
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = load i8, i8* %13, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8, i8* %14, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp slt i32 %129, 94
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 0, i32 1
  %133 = add nsw i32 %127, %132
  %134 = add nsw i32 %133, 33
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %135, i8* %136, align 1
  %137 = load i8, i8* %14, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp slt i32 %138, 94
  br i1 %139, label %140, label %143

140:                                              ; preds = %123
  %141 = load i8, i8* %14, align 1
  %142 = zext i8 %141 to i32
  br label %147

143:                                              ; preds = %123
  %144 = load i8, i8* %14, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 %145, 94
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i32 [ %142, %140 ], [ %146, %143 ]
  %149 = add nsw i32 %148, 33
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 %150, i8* %151, align 1
  %152 = load i32, i32* %6, align 4
  %153 = load i64*, i64** %7, align 8
  %154 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %155 = call i32 @ksc5601_mbtowc(i32 %152, i64* %153, i8* %154, i32 2)
  store i32 %155, i32* %5, align 4
  br label %160

156:                                              ; preds = %91
  br label %157

157:                                              ; preds = %156, %79, %75
  br label %158

158:                                              ; preds = %157, %55, %51
  %159 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %147, %62, %36, %31
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @johab_hangul_mbtowc(i32, i64*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @ksc5601_mbtowc(i32, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
