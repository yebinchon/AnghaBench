; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_hex_to_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_ff_hex_to_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACE_CHARS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hex_to_data(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %65, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @SPACE_CHARS, align 4
  %11 = call i32 @strspn(i8* %9, i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %8
  br label %66

20:                                               ; preds = %8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  %24 = call i32 @av_toupper(i8 zeroext %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 48
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp sle i32 %28, 57
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 48
  store i32 %32, i32* %5, align 4
  br label %45

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 65
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 70
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 65
  %42 = add nsw i32 %41, 10
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %36, %33
  br label %66

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 256
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load i32*, i32** %3, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %45
  br label %8

66:                                               ; preds = %43, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @av_toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
