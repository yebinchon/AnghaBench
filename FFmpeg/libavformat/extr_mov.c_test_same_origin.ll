; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_test_same_origin.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_test_same_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @test_same_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_same_origin(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @av_url_split(i8* %14, i32 64, i8* %15, i32 256, i8* %16, i32 256, i32* %12, i32* null, i32 0, i8* %17)
  %19 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @av_url_split(i8* %19, i32 64, i8* %20, i32 256, i8* %21, i32 256, i32* %13, i32* null, i32 0, i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %74

28:                                               ; preds = %2
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 256
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp uge i64 %38, 256
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %44, 256
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = icmp uge i64 %50, 256
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34, %28
  store i32 0, i32* %3, align 4
  br label %74

53:                                               ; preds = %46
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %61 = call i64 @strcmp(i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %66 = call i64 @strcmp(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %63, %58, %53
  store i32 0, i32* %3, align 4
  br label %74

73:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %72, %52, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @av_url_split(i8*, i32, i8*, i32, i8*, i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
