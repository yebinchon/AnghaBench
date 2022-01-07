; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_key.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_opt.c_get_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8**)* @get_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key(i8** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @WHITESPACES, align 4
  %15 = call i32 @strspn(i8* %13, i32 %14)
  %16 = load i8*, i8** %8, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %8, align 8
  store i8* %18, i8** %9, align 8
  br label %19

19:                                               ; preds = %24, %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @is_key_char(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* @WHITESPACES, align 4
  %31 = call i32 @strspn(i8* %29, i32 %30)
  %32 = load i8*, i8** %8, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @strchr(i8* %39, i8 signext %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %27
  %45 = load i32, i32* @EINVAL, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %84

47:                                               ; preds = %38
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i8* @av_malloc(i32 %56)
  %58 = load i8**, i8*** %7, align 8
  store i8* %57, i8** %58, align 8
  %59 = icmp ne i8* %57, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %4, align 4
  br label %84

63:                                               ; preds = %47
  %64 = load i8**, i8*** %7, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @memcpy(i8* %65, i8* %66, i32 %72)
  %74 = load i8**, i8*** %7, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds i8, i8* %75, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %8, align 8
  %83 = load i8**, i8*** %5, align 8
  store i8* %82, i8** %83, align 8
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %63, %60, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @is_key_char(i8 signext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
