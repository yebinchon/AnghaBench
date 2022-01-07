; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_DrawDiskLED.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_screen.c_Screen_DrawDiskLED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIO_last_op_time = common dso_local global i64 0, align 8
@SIO_last_drive = common dso_local global i32 0, align 4
@Screen_atari = common dso_local global i64 0, align 8
@Screen_visible_x2 = common dso_local global i32 0, align 4
@SMALLFONT_WIDTH = common dso_local global i32* null, align 8
@Screen_visible_y2 = common dso_local global i32 0, align 4
@SMALLFONT_HEIGHT = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@CASSETTE_status = common dso_local global i64 0, align 8
@CASSETTE_STATUS_NONE = common dso_local global i64 0, align 8
@Screen_show_disk_led = common dso_local global i64 0, align 8
@SMALLFONT_C = common dso_local global i32 0, align 4
@CASSETTE_record = common dso_local global i64 0, align 8
@Screen_show_sector_counter = common dso_local global i64 0, align 8
@SMALLFONT_SLASH = common dso_local global i32 0, align 4
@SIO_last_op = common dso_local global i64 0, align 8
@SIO_LAST_READ = common dso_local global i64 0, align 8
@SMALLFONT_D = common dso_local global i32 0, align 4
@SIO_last_sector = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Screen_DrawDiskLED() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @SIO_last_op_time, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %121

4:                                                ; preds = %0
  %5 = load i32, i32* @SIO_last_drive, align 4
  %6 = icmp ne i32 %5, 96
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i64, i64* @SIO_last_op_time, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* @SIO_last_op_time, align 8
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i64, i64* @Screen_atari, align 8
  %12 = inttoptr i64 %11 to i32*
  %13 = load i32, i32* @Screen_visible_x2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32*, i32** @SMALLFONT_WIDTH, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = load i32, i32* @Screen_visible_y2, align 4
  %22 = load i32, i32* @SMALLFONT_HEIGHT, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @Screen_WIDTH, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %1, align 8
  %29 = load i32, i32* @SIO_last_drive, align 4
  %30 = icmp eq i32 %29, 96
  br i1 %30, label %34, label %31

31:                                               ; preds = %10
  %32 = load i32, i32* @SIO_last_drive, align 4
  %33 = icmp eq i32 %32, 97
  br i1 %33, label %34, label %80

34:                                               ; preds = %31, %10
  %35 = load i64, i64* @CASSETTE_status, align 8
  %36 = load i64, i64* @CASSETTE_STATUS_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %34
  %39 = load i64, i64* @Screen_show_disk_led, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32*, i32** %1, align 8
  %43 = load i32, i32* @SMALLFONT_C, align 4
  %44 = load i64, i64* @CASSETTE_record, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 43, i32 172
  %48 = call i32 @SmallFont_DrawChar(i32* %42, i32 %43, i32 0, i32 %47)
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i64, i64* @Screen_show_sector_counter, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i64, i64* @CASSETTE_record, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = load i32*, i32** %1, align 8
  %57 = load i32*, i32** @SMALLFONT_WIDTH, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 (...) @CASSETTE_GetSize()
  %64 = call i32* @SmallFont_DrawInt(i32 %62, i32 %63, i32 0, i32 136)
  store i32* %64, i32** %1, align 8
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* @SMALLFONT_SLASH, align 4
  %67 = call i32 @SmallFont_DrawChar(i32* %65, i32 %66, i32 0, i32 136)
  br label %68

68:                                               ; preds = %55, %52
  %69 = load i32*, i32** %1, align 8
  %70 = load i32*, i32** @SMALLFONT_WIDTH, align 8
  %71 = ptrtoint i32* %69 to i64
  %72 = ptrtoint i32* %70 to i64
  %73 = sub i64 %71, %72
  %74 = sdiv exact i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 (...) @CASSETTE_GetPosition()
  %77 = call i32* @SmallFont_DrawInt(i32 %75, i32 %76, i32 0, i32 136)
  br label %78

78:                                               ; preds = %68, %49
  br label %79

79:                                               ; preds = %78, %34
  br label %120

80:                                               ; preds = %31
  %81 = load i64, i64* @Screen_show_disk_led, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %80
  %84 = load i32*, i32** %1, align 8
  %85 = load i32, i32* @SIO_last_drive, align 4
  %86 = load i64, i64* @SIO_last_op, align 8
  %87 = load i64, i64* @SIO_LAST_READ, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 172, i32 43
  %91 = call i32 @SmallFont_DrawChar(i32* %84, i32 %85, i32 0, i32 %90)
  %92 = load i32*, i32** @SMALLFONT_WIDTH, align 8
  %93 = load i32*, i32** %1, align 8
  %94 = ptrtoint i32* %93 to i64
  %95 = ptrtoint i32* %92 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %1, align 8
  %99 = load i32, i32* @SMALLFONT_D, align 4
  %100 = load i64, i64* @SIO_last_op, align 8
  %101 = load i64, i64* @SIO_LAST_READ, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 172, i32 43
  %105 = call i32 @SmallFont_DrawChar(i32* %98, i32 %99, i32 0, i32 %104)
  br label %106

106:                                              ; preds = %83, %80
  %107 = load i64, i64* @Screen_show_sector_counter, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32*, i32** %1, align 8
  %111 = load i32*, i32** @SMALLFONT_WIDTH, align 8
  %112 = ptrtoint i32* %110 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load i32, i32* @SIO_last_sector, align 4
  %118 = call i32* @SmallFont_DrawInt(i32 %116, i32 %117, i32 0, i32 136)
  br label %119

119:                                              ; preds = %109, %106
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %0
  ret void
}

declare dso_local i32 @SmallFont_DrawChar(i32*, i32, i32, i32) #1

declare dso_local i32* @SmallFont_DrawInt(i32, i32, i32, i32) #1

declare dso_local i32 @CASSETTE_GetSize(...) #1

declare dso_local i32 @CASSETTE_GetPosition(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
