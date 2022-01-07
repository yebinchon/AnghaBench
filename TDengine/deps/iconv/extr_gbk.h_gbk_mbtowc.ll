; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbk.h_gbk_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gbk.h_gbk_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @gbk_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbk_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 129
  br i1 %19, label %20, label %150

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %22, 255
  br i1 %23, label %24, label %150

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @RET_TOOFEW(i32 0)
  store i32 %28, i32* %5, align 4
  br label %152

29:                                               ; preds = %24
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 161
  br i1 %32, label %33, label %101

33:                                               ; preds = %29
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sle i32 %35, 247
  br i1 %36, label %37, label %101

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %11, align 1
  %41 = load i8, i8* %10, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 161
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 164
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  store i32 183, i32* %49, align 4
  store i32 2, i32* %5, align 4
  br label %152

50:                                               ; preds = %44
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 170
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  store i32 8212, i32* %55, align 4
  store i32 2, i32* %5, align 4
  br label %152

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 161
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i8, i8* %11, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %63, 255
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = sub nsw i32 %67, 128
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = sub nsw i32 %72, 128
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %74, i8* %75, align 1
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %79 = call i32 @gb2312_mbtowc(i32 %76, i32* %77, i8* %78, i32 2)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @RET_ILSEQ, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %5, align 4
  br label %152

85:                                               ; preds = %65
  %86 = load i8, i8* %10, align 1
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %86, i8* %87, align 1
  %88 = load i8, i8* %11, align 1
  %89 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %88, i8* %89, align 1
  %90 = load i32, i32* %6, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %93 = call i32 @cp936ext_mbtowc(i32 %90, i32* %91, i8* %92, i32 2)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @RET_ILSEQ, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %152

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %61, %57
  br label %101

101:                                              ; preds = %100, %33, %29
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sge i32 %103, 129
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sle i32 %107, 160
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @gbkext1_mbtowc(i32 %110, i32* %111, i8* %112, i32 2)
  store i32 %113, i32* %5, align 4
  br label %152

114:                                              ; preds = %105, %101
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp sge i32 %116, 168
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i8, i8* %10, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sle i32 %120, 254
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @gbkext2_mbtowc(i32 %123, i32* %124, i8* %125, i32 2)
  store i32 %126, i32* %5, align 4
  br label %152

127:                                              ; preds = %118, %114
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 162
  br i1 %130, label %131, label %149

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %14, align 1
  %135 = load i8, i8* %14, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp sge i32 %136, 161
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load i8, i8* %14, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp sle i32 %140, 170
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = load i8, i8* %14, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 161
  %146 = add nsw i32 8560, %145
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  store i32 2, i32* %5, align 4
  br label %152

148:                                              ; preds = %138, %131
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %20, %4
  %151 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %142, %122, %109, %97, %83, %54, %48, %27
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @gb2312_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cp936ext_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gbkext1_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gbkext2_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
