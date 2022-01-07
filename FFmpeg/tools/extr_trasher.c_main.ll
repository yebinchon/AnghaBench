; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_trasher.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_trasher.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"USAGE: trasher <filename> <count> <maxburst> <seed>\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@state = common dso_local global i8* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %112

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @perror(i8* %27)
  store i32 2, i32* %3, align 4
  br label %112

29:                                               ; preds = %17
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @atoi(i8* %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @atoi(i8* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @atoi(i8* %42)
  store i8* %43, i8** @state, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @SEEK_END, align 4
  %46 = call i32 @checked_seek(i32* %44, i32 0, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ftell(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @checked_seek(i32* %49, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %110, %91, %29
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %52
  %57 = call i64 (...) @ran()
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @abs(i32 %58) #3
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = mul i64 %57, %61
  %63 = load i32, i32* @UINT32_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %62, %64
  %66 = add i64 1, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = call i64 (...) @ran()
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %68, %70
  %72 = load i32, i32* @UINT32_MAX, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %71, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @SEEK_SET, align 4
  %79 = call i32 @checked_seek(i32* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %56
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %56
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %52

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %107, %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %10, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  %98 = call i64 (...) @ran()
  %99 = mul i64 %98, 256
  %100 = load i32, i32* @UINT32_MAX, align 4
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %99, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %97
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @fwrite(i32* %12, i32 1, i32 1, i32* %108)
  br label %93

110:                                              ; preds = %93
  br label %52

111:                                              ; preds = %52
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %24, %15
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @checked_seek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i64 @ran(...) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
