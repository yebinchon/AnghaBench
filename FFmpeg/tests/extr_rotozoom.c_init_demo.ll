; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_init_demo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_rotozoom.c_init_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@H = common dso_local global i32 0, align 4
@tab_r = common dso_local global i8* null, align 8
@tab_g = common dso_local global i8* null, align 8
@tab_b = common dso_local global i8* null, align 8
@MY_PI = common dso_local global i32 0, align 4
@FIXP = common dso_local global i32 0, align 4
@h_cos = common dso_local global i32* null, align 8
@h_sin = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @init_demo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_demo(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @W, align 4
  %13 = mul nsw i32 3, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @perror(i8* %22)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %143

24:                                               ; preds = %1
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @fread(i8* %16, i32 1, i32 15, i32* %25)
  %27 = icmp ne i32 %26, 15
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %143

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %94, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @H, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %97

34:                                               ; preds = %30
  %35 = load i32, i32* @W, align 4
  %36 = mul nsw i32 3, %35
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fread(i8* %16, i32 1, i32 %36, i32* %37)
  %39 = load i32, i32* @W, align 4
  %40 = mul nsw i32 3, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %143

43:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %90, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @W, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 3, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %16, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** @tab_r, align 8
  %55 = load i32, i32* @W, align 4
  %56 = load i32, i32* %4, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  store i8 %53, i8* %61, align 1
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 3, %62
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %16, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** @tab_g, align 8
  %69 = load i32, i32* @W, align 4
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %68, i64 %74
  store i8 %67, i8* %75, align 1
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 3, %76
  %78 = add nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %16, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** @tab_b, align 8
  %83 = load i32, i32* @W, align 4
  %84 = load i32, i32* %4, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %82, i64 %88
  store i8 %81, i8* %89, align 1
  br label %90

90:                                               ; preds = %48
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %44

93:                                               ; preds = %44
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %30

97:                                               ; preds = %30
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @fclose(i32* %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %139, %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 360
  br i1 %102, label %103, label %142

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i32, i32* @MY_PI, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %107, 360
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @FIXP, align 4
  %110 = mul nsw i32 2, %109
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @int_sin(i32 %111)
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @MY_PI, align 4
  %117 = sdiv i32 %116, 2
  %118 = add nsw i32 %115, %117
  %119 = call i32 @int_sin(i32 %118)
  %120 = mul nsw i32 %114, %119
  %121 = sdiv i32 %120, 2
  %122 = load i32, i32* @FIXP, align 4
  %123 = sdiv i32 %121, %122
  %124 = load i32*, i32** @h_cos, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @int_sin(i32 %129)
  %131 = mul nsw i32 %128, %130
  %132 = sdiv i32 %131, 2
  %133 = load i32, i32* @FIXP, align 4
  %134 = sdiv i32 %132, %133
  %135 = load i32*, i32** @h_sin, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %103
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %100

142:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %143

143:                                              ; preds = %142, %42, %28, %21
  %144 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @int_sin(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
