; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_write_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_write_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unable to open %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @write_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fragment(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %11 = call i32 @avio_open2(i32** %6, i8* %9, i32 %10, i32* null, i32* null)
  store i32 %11, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %16 = call i32 @av_strerror(i32 %14, i8* %15, i32 100)
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %20 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @MKBETAG(i8 signext 109, i8 signext 111, i8 signext 111, i8 signext 102)
  %26 = call i32 @copy_tag(i32* %23, i32* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @MKBETAG(i8 signext 109, i8 signext 100, i8 signext 97, i8 signext 116)
  %33 = call i32 @copy_tag(i32* %30, i32* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %22
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @avio_flush(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @avio_close(i32* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %34, %13
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @av_strerror(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @copy_tag(i32*, i32*, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @avio_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
