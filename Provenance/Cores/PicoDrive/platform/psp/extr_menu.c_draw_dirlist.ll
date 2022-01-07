; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_dirlist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_menu.c_draw_dirlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_dirent = type { i32, i8* }

@rom_loaded = common dso_local global i32 0, align 4
@menu_screen = common dso_local global i64 0, align 8
@FIO_S_IFDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.my_dirent**, i32, i32)* @draw_dirlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_dirlist(i8* %0, %struct.my_dirent** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.my_dirent**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store %struct.my_dirent** %1, %struct.my_dirent*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sub nsw i32 13, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = call i32 (...) @menu_draw_begin()
  %18 = load i32, i32* @rom_loaded, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i64, i64* @menu_screen, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds i8, i8* %23, i64 132096
  %25 = load i64, i64* @menu_screen, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = getelementptr inbounds i8, i8* %26, i64 132096
  %28 = call i32 @menu_darken_bg(i8* %24, i8* %27, i32 5120, i32 0)
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 2
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 2
  %35 = mul nsw i32 %34, 10
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @smalltext_out16_lim(i32 14, i32 %35, i8* %36, i16 zeroext -1, i32 51)
  br label %38

38:                                               ; preds = %32, %21
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %104, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %104

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = icmp sgt i32 %51, 26
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %107

54:                                               ; preds = %50
  %55 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.my_dirent*, %struct.my_dirent** %55, i64 %58
  %60 = load %struct.my_dirent*, %struct.my_dirent** %59, align 8
  %61 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FIO_S_IFDIR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %67, 10
  %69 = call i32 @smalltext_out16_lim(i32 14, i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i16 zeroext -10241, i32 1)
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 10
  %72 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.my_dirent*, %struct.my_dirent** %72, i64 %75
  %77 = load %struct.my_dirent*, %struct.my_dirent** %76, align 8
  %78 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @smalltext_out16_lim(i32 20, i32 %71, i8* %79, i16 zeroext -10241, i32 77)
  br label %103

81:                                               ; preds = %54
  %82 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.my_dirent*, %struct.my_dirent** %82, i64 %85
  %87 = load %struct.my_dirent*, %struct.my_dirent** %86, align 8
  %88 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call zeroext i16 @file2color(i8* %89)
  store i16 %90, i16* %12, align 2
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 %91, 10
  %93 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.my_dirent*, %struct.my_dirent** %93, i64 %96
  %98 = load %struct.my_dirent*, %struct.my_dirent** %97, align 8
  %99 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i16, i16* %12, align 2
  %102 = call i32 @smalltext_out16_lim(i32 14, i32 %92, i8* %100, i16 zeroext %101, i32 78)
  br label %103

103:                                              ; preds = %81, %66
  br label %104

104:                                              ; preds = %103, %49
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %39

107:                                              ; preds = %53, %39
  %108 = call i32 @text_out16(i32 5, i32 130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(...) #1

declare dso_local i32 @menu_darken_bg(i8*, i8*, i32, i32) #1

declare dso_local i32 @smalltext_out16_lim(i32, i32, i8*, i16 zeroext, i32) #1

declare dso_local zeroext i16 @file2color(i8*) #1

declare dso_local i32 @text_out16(i32, i32, i8*) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
