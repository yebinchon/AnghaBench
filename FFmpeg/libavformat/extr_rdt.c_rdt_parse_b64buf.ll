; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_parse_b64buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_parse_b64buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @rdt_parse_b64buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rdt_parse_b64buf(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 34
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 3
  %22 = sdiv i32 %21, 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i8* @av_mallocz(i64 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i8* null, i8** %3, align 8
  br label %40

33:                                               ; preds = %19
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @av_base64_decode(i8* %34, i8* %35, i32 %37)
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @av_mallocz(i64) #1

declare dso_local i32 @av_base64_decode(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
