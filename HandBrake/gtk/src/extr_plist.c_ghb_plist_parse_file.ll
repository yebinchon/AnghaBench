; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_ghb_plist_parse_file.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_plist.c_ghb_plist_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Plist parse: failed to open %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ghb_plist_parse_file(i64* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = call i32* @g_fopen(i64* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64*, i64** %3, align 8
  %14 = call i32 @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64* %13)
  store i32* null, i32** %2, align 8
  br label %43

15:                                               ; preds = %1
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @SEEK_END, align 4
  %18 = call i32 @fseek(i32* %16, i32 0, i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @ftell(i32* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @SEEK_SET, align 4
  %23 = call i32 @fseek(i32* %21, i32 0, i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  %26 = call i64* @g_malloc(i64 %25)
  store i64* %26, i64** %4, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @fread(i64* %27, i32 1, i64 %28, i32* %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32* @ghb_plist_parse(i64* %34, i32 %36)
  store i32* %37, i32** %6, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = call i32 @g_free(i64* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fclose(i32* %40)
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %2, align 8
  br label %43

43:                                               ; preds = %15, %12
  %44 = load i32*, i32** %2, align 8
  ret i32* %44
}

declare dso_local i32* @g_fopen(i64*, i8*) #1

declare dso_local i32 @g_warning(i8*, i64*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64* @g_malloc(i64) #1

declare dso_local i64 @fread(i64*, i32, i64, i32*) #1

declare dso_local i32* @ghb_plist_parse(i64*, i32) #1

declare dso_local i32 @g_free(i64*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
