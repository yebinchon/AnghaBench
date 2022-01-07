; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pic_load.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__pic_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"bad file\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"file too short (pic header)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"PIC image too large to decode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32, i32*)* @stbi__pic_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__pic_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i32 @STBI_NOTUSED(i32* %19)
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32* %18, i32** %11, align 8
  br label %24

24:                                               ; preds = %23, %6
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %31, %24
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 92
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @stbi__get8(i32* %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %15, align 4
  br label %25

34:                                               ; preds = %25
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @stbi__get16be(i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @stbi__get16be(i32* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @stbi__at_eof(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %7, align 8
  br label %95

44:                                               ; preds = %34
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @stbi__mad3sizes_valid(i32 %45, i32 %46, i32 4, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i8* %50, i8** %7, align 8
  br label %95

51:                                               ; preds = %44
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @stbi__get32be(i32* %52)
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @stbi__get16be(i32* %54)
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @stbi__get16be(i32* %56)
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = call i64 @stbi__malloc_mad3(i32 %58, i32 %59, i32 4, i32 0)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %14, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = mul nsw i32 %63, %64
  %66 = mul nsw i32 %65, 4
  %67 = call i32 @memset(i8* %62, i32 255, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @stbi__pic_load_core(i32* %68, i32 %69, i32 %70, i32* %71, i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %51
  %76 = load i8*, i8** %14, align 8
  %77 = call i32 @STBI_FREE(i8* %76)
  store i8* null, i8** %14, align 8
  br label %78

78:                                               ; preds = %75, %51
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load i32*, i32** %10, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i8*, i8** %14, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i8* @stbi__convert_format(i8* %89, i32 4, i32 %90, i32 %91, i32 %92)
  store i8* %93, i8** %14, align 8
  %94 = load i8*, i8** %14, align 8
  store i8* %94, i8** %7, align 8
  br label %95

95:                                               ; preds = %88, %49, %42
  %96 = load i8*, i8** %7, align 8
  ret i8* %96
}

declare dso_local i32 @STBI_NOTUSED(i32*) #1

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__mad3sizes_valid(i32, i32, i32, i32) #1

declare dso_local i32 @stbi__get32be(i32*) #1

declare dso_local i64 @stbi__malloc_mad3(i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @stbi__pic_load_core(i32*, i32, i32, i32*, i8*) #1

declare dso_local i32 @STBI_FREE(i8*) #1

declare dso_local i8* @stbi__convert_format(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
