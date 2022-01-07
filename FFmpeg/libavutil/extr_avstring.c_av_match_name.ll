; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_match_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_match_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_match_name(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %83

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %73, %16
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 45, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 44)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8* %38, i8** %6, align 8
  br label %39

39:                                               ; preds = %33, %23
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @FFMAX(i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @av_strncasecmp(i8* %52, i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %39
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @FFMAX(i32 3, i32 %64)
  %66 = call i32 @strncmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %57, %39
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %83

73:                                               ; preds = %57
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 44
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %74, i64 %80
  store i8* %81, i8** %5, align 8
  br label %19

82:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %68, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
