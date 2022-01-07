; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_string_data_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_string_data_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"und\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @mov_write_string_data_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_string_data_tag(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 16, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @avio_wb32(i32* %17, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ffio_wfourcc(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @avio_wb32(i32* %22, i32 1)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @avio_wb32(i32* %24, i32 0)
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @avio_write(i32* %26, i8* %27, i32 %29)
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %53

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @ff_mov_iso639_to_lang(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32*, i32** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = call i32 @avio_wb16(i32* %38, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @avio_wb16(i32* %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @avio_write(i32* %45, i8* %46, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %51, 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %37, %13
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @ff_mov_iso639_to_lang(i8*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
