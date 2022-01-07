; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_dirlist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_menu.c_draw_dirlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_dirent = type { i64, i8* }

@rom_loaded = common dso_local global i32 0, align 4
@menu_screen = common dso_local global i8* null, align 8
@DT_DIR = common dso_local global i64 0, align 8
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
  %14 = sub nsw i32 12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %7, align 4
  %17 = call i32 @menu_draw_begin(i32 1)
  %18 = load i32, i32* @rom_loaded, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** @menu_screen, align 8
  %22 = load i8*, i8** @menu_screen, align 8
  %23 = call i32 @menu_darken_bg(i8* %21, i8* %22, i32 77040, i32 0)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i8*, i8** @menu_screen, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 77040
  %27 = load i8*, i8** @menu_screen, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 77040
  %29 = call i32 @menu_darken_bg(i8* %26, i8* %28, i32 2568, i32 0)
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 2
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %34, 2
  %36 = mul nsw i32 %35, 10
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @smalltext_out16_lim(i32 14, i32 %36, i8* %37, i16 zeroext -1, i32 51)
  br label %39

39:                                               ; preds = %33, %24
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %104, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %104

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 23
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %107

55:                                               ; preds = %51
  %56 = load %struct.my_dirent**, %struct.my_dirent*** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.my_dirent*, %struct.my_dirent** %56, i64 %59
  %61 = load %struct.my_dirent*, %struct.my_dirent** %60, align 8
  %62 = getelementptr inbounds %struct.my_dirent, %struct.my_dirent* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DT_DIR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %67, 10
  %69 = call i32 @smalltext_out16_lim(i32 14, i32 %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i16 zeroext -10, i32 1)
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
  %80 = call i32 @smalltext_out16_lim(i32 20, i32 %71, i8* %79, i16 zeroext -10, i32 50)
  br label %103

81:                                               ; preds = %55
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
  %102 = call i32 @smalltext_out16_lim(i32 14, i32 %92, i8* %100, i16 zeroext %101, i32 51)
  br label %103

103:                                              ; preds = %81, %66
  br label %104

104:                                              ; preds = %103, %50
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %40

107:                                              ; preds = %54, %40
  %108 = call i32 @text_out16(i32 5, i32 120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @menu_draw_begin(i32) #1

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
