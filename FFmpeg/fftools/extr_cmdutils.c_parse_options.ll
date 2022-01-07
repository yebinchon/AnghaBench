; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_options(i8* %0, i32 %1, i8** %2, i32* %3, void (i8*, i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca void (i8*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store void (i8*, i8*)* %4, void (i8*, i8*)** %10, align 8
  store i32 1, i32* %13, align 4
  %15 = call i32 @prepare_app_arguments(i32* %7, i8*** %8)
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %81, %53, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %12, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %20
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %73

35:                                               ; preds = %29
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %35
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  br label %16

54:                                               ; preds = %47, %41
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @parse_option(i8* %57, i8* %58, i8* %63, i32* %64)
  store i32 %65, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 @exit_program(i32 1)
  br label %69

69:                                               ; preds = %67, %54
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %81

73:                                               ; preds = %35, %29, %20
  %74 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8
  %75 = icmp ne void (i8*, i8*)* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load void (i8*, i8*)*, void (i8*, i8*)** %10, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i8*, i8** %11, align 8
  call void %77(i8* %78, i8* %79)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %69
  br label %16

82:                                               ; preds = %16
  ret void
}

declare dso_local i32 @prepare_app_arguments(i32*, i8***) #1

declare dso_local i32 @parse_option(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @exit_program(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
