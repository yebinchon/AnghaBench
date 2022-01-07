; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_render_font.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_render_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vc_render_font.olddepth = internal global i16 0, align 2
@vm_initialized = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@vc_rendered_font = common dso_local global i8* null, align 8
@vc_rendered_font_size = common dso_local global i32 0, align 4
@vc_rendered_char_size = common dso_local global i32 0, align 4
@ISO_CHAR_HEIGHT = common dso_local global i16 0, align 2
@ISO_CHAR_WIDTH = common dso_local global i16 0, align 2
@ISO_CHAR_MAX = common dso_local global i32 0, align 4
@ISO_CHAR_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16)* @vc_render_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_render_font(i16 signext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %8 = load i64, i64* @vm_initialized, align 8
  %9 = load i64, i64* @FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %93

12:                                               ; preds = %1
  %13 = load i16, i16* @vc_render_font.olddepth, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* %2, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** @vc_rendered_font, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %93

22:                                               ; preds = %18, %12
  %23 = call i32 (...) @splhigh()
  store i32 %23, i32* %7, align 4
  %24 = call i32 (...) @VCPUTC_LOCK_LOCK()
  %25 = load i8*, i8** @vc_rendered_font, align 8
  store i8* %25, i8** %4, align 8
  %26 = load i32, i32* @vc_rendered_font_size, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @vc_rendered_char_size, align 4
  store i32 %27, i32* %6, align 4
  store i8* null, i8** @vc_rendered_font, align 8
  store i32 0, i32* @vc_rendered_font_size, align 4
  store i32 0, i32* @vc_rendered_char_size, align 4
  %28 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @splx(i32 %29)
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @kfree(i8* %34, i32 %35)
  store i8* null, i8** %4, align 8
  br label %37

37:                                               ; preds = %33, %22
  %38 = load i16, i16* %2, align 2
  %39 = icmp ne i16 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i16, i16* @ISO_CHAR_HEIGHT, align 2
  %42 = sext i16 %41 to i32
  %43 = load i16, i16* %2, align 2
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %44, 7
  %46 = sdiv i32 %45, 8
  %47 = load i16, i16* @ISO_CHAR_WIDTH, align 2
  %48 = sext i16 %47 to i32
  %49 = mul nsw i32 %46, %48
  %50 = mul nsw i32 %42, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @ISO_CHAR_MAX, align 4
  %52 = load i32, i32* @ISO_CHAR_MIN, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @kalloc(i32 %57)
  %59 = inttoptr i64 %58 to i8*
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %40, %37
  %61 = load i8*, i8** %4, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %93

64:                                               ; preds = %60
  %65 = load i32, i32* @ISO_CHAR_MIN, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %80, %64
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @ISO_CHAR_MAX, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  %78 = load i16, i16* %2, align 2
  %79 = call i32 @vc_render_char(i32 %71, i8* %77, i16 signext %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load i16, i16* %2, align 2
  store i16 %84, i16* @vc_render_font.olddepth, align 2
  %85 = call i32 (...) @splhigh()
  store i32 %85, i32* %7, align 4
  %86 = call i32 (...) @VCPUTC_LOCK_LOCK()
  %87 = load i8*, i8** %4, align 8
  store i8* %87, i8** @vc_rendered_font, align 8
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* @vc_rendered_font_size, align 4
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* @vc_rendered_char_size, align 4
  %90 = call i32 (...) @VCPUTC_LOCK_UNLOCK()
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @splx(i32 %91)
  br label %93

93:                                               ; preds = %83, %63, %21, %11
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @VCPUTC_LOCK_LOCK(...) #1

declare dso_local i32 @VCPUTC_LOCK_UNLOCK(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @kfree(i8*, i32) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @vc_render_char(i32, i8*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
