; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_des.c_run_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_des.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@large_buffer = common dso_local global i32** null, align 8
@tmp = common dso_local global i32* null, align 8
@cbc_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ false, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 2, i32 1
  store i32 %18, i32* %7, align 4
  %19 = load i32**, i32*** @large_buffer, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @AV_WB64(i32* %21, i32 1769152628)
  %23 = load i32**, i32*** @large_buffer, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @AV_WB64(i32* %25, i32 -1867788817)
  %27 = load i32*, i32** @tmp, align 8
  %28 = call i32 @AV_WB64(i32* %27, i32 -1867788817)
  %29 = load i32, i32* @cbc_key, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @av_des_init(i32* %6, i32 %29, i32 192, i32 %30)
  %32 = load i32**, i32*** @large_buffer, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32**, i32*** @large_buffer, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %15
  %43 = load i32*, i32** @tmp, align 8
  br label %45

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32* [ %43, %42 ], [ null, %44 ]
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @av_des_crypt(i32* %6, i32* %36, i32* %39, i32 10000, i32* %46, i32 %47)
  %49 = load i32**, i32*** @large_buffer, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 9999, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %49, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @AV_RB64(i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %45
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, -4193186174951730868
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %84

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %68, -3811980949979298759
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %84

71:                                               ; preds = %45
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp eq i64 %76, -8996721500492326390
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %71
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, -2515285986867949006
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %79, %74, %66, %61
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @AV_WB64(i32*, i32) #1

declare dso_local i32 @av_des_init(i32*, i32, i32, i32) #1

declare dso_local i32 @av_des_crypt(i32*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @AV_RB64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
