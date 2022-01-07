; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_smil_get_attr_ptr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_smil_get_attr_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ff_smil_get_attr_ptr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  br label %10

10:                                               ; preds = %75, %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @av_isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %38

28:                                               ; preds = %22, %19
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 34
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  br label %15

38:                                               ; preds = %27, %15
  br label %39

39:                                               ; preds = %44, %38
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @av_isspace(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %39

47:                                               ; preds = %39
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @av_strncasecmp(i8* %48, i8* %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 61
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i8*, i8** %4, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 34
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %64, i64 %73
  store i8* %74, i8** %3, align 8
  br label %77

75:                                               ; preds = %53, %47
  br label %10

76:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @av_isspace(i8 signext) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
