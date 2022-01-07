; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_blit_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vc_clut8 = common dso_local global i32 0, align 4
@vc_clut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32)* @vc_blit_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_blit_rect(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %10
  br label %96

24:                                               ; preds = %10
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %96

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 2), align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %96

38:                                               ; preds = %31
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  switch i32 %39, label %96 [
    i32 8, label %40
    i32 16, label %57
    i32 32, label %70
    i32 30, label %83
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @vc_clut8, align 4
  %42 = load i32, i32* @vc_clut, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i8*, i8** %18, align 8
  %53 = load i8*, i8** %19, align 8
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @vc_blit_rect_8(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i8* %52, i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %44, %40
  br label %96

57:                                               ; preds = %38
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i8*, i8** %18, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = bitcast i8* %66 to i16*
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @vc_blit_rect_16(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i8* %65, i16* %67, i32 %68)
  br label %96

70:                                               ; preds = %38
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @vc_blit_rect_32(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i8* %78, i32* %80, i32 %81)
  br label %96

83:                                               ; preds = %38
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i8*, i8** %18, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @vc_blit_rect_30(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i8* %91, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %23, %30, %37, %38, %83, %70, %57, %56
  ret void
}

declare dso_local i32 @vc_blit_rect_8(i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @vc_blit_rect_16(i32, i32, i32, i32, i32, i32, i32, i8*, i16*, i32) #1

declare dso_local i32 @vc_blit_rect_32(i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @vc_blit_rect_30(i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
