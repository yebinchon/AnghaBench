; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_hb_plist_parse_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_plist.c_hb_plist_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_plist_parse_file(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %40

13:                                               ; preds = %1
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @SEEK_END, align 4
  %16 = call i32 @fseek(i32* %14, i32 0, i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @ftell(i32* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i32 @fseek(i32* %19, i32 0, i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %4, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @fread(i8* %25, i32 1, i64 %26, i32* %27)
  store i64 %28, i64* %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32* @hb_plist_parse(i8* %32, i64 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %2, align 8
  br label %40

40:                                               ; preds = %13, %12
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32* @hb_plist_parse(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
