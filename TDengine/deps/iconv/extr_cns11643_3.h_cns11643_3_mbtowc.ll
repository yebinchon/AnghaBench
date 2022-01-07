; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_3.h_cns11643_3_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cns11643_3.h_cns11643_3_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cns11643_3_2uni_page21 = common dso_local global i16* null, align 8
@cns11643_3_2uni_upages = common dso_local global i16* null, align 8
@cns11643_3_2uni_page64 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @cns11643_3_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cns11643_3_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp sge i32 %19, 33
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8, i8* %10, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp sle i32 %23, 98
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %4
  %26 = load i8, i8* %10, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sge i32 %27, 100
  br i1 %28, label %29, label %114

29:                                               ; preds = %25
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sle i32 %31, 103
  br i1 %32, label %33, label %114

33:                                               ; preds = %29, %21
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %112

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %11, align 1
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp sge i32 %41, 33
  br i1 %42, label %43, label %110

43:                                               ; preds = %36
  %44 = load i8, i8* %11, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 127
  br i1 %46, label %47, label %110

47:                                               ; preds = %43
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, 33
  %51 = mul nsw i32 94, %50
  %52 = load i8, i8* %11, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 %53, 33
  %55 = add nsw i32 %51, %54
  store i32 %55, i32* %12, align 4
  store i32 65533, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ult i32 %56, 6298
  br i1 %57, label %58, label %80

58:                                               ; preds = %47
  %59 = load i32, i32* %12, align 4
  %60 = icmp ult i32 %59, 6148
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i16*, i16** @cns11643_3_2uni_page21, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i16, i16* %65, align 2
  store i16 %66, i16* %14, align 2
  %67 = load i16*, i16** @cns11643_3_2uni_upages, align 8
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i32
  %70 = ashr i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %67, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = load i16, i16* %14, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 255
  %78 = or i32 %74, %77
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %61, %58
  br label %103

80:                                               ; preds = %47
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %81, 6590
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load i16*, i16** @cns11643_3_2uni_page64, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sub i32 %85, 6298
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %84, i64 %87
  %89 = load i16, i16* %88, align 2
  store i16 %89, i16* %14, align 2
  %90 = load i16*, i16** @cns11643_3_2uni_upages, align 8
  %91 = load i16, i16* %14, align 2
  %92 = zext i16 %91 to i32
  %93 = ashr i32 %92, 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %90, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* %14, align 2
  %99 = zext i16 %98 to i32
  %100 = and i32 %99, 255
  %101 = or i32 %97, %100
  store i32 %101, i32* %13, align 4
  br label %102

102:                                              ; preds = %83, %80
  br label %103

103:                                              ; preds = %102, %79
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 65533
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  store i32 2, i32* %5, align 4
  br label %116

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %43, %36
  %111 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %111, i32* %5, align 4
  br label %116

112:                                              ; preds = %33
  %113 = call i32 @RET_TOOFEW(i32 0)
  store i32 %113, i32* %5, align 4
  br label %116

114:                                              ; preds = %29, %25
  %115 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %114, %112, %110, %106
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
