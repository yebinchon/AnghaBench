; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"video_sunxi: internal resolution changed by core: %ux%u -> %ux%u\0A\00", align 1
@FBIO_WAITFORVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @sunxi_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.sunxi_video*
  store %struct.sunxi_video* %20, %struct.sunxi_video** %18, align 8
  %21 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %22 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %8
  %27 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %28 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26, %8
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  store i32 1, i32* %9, align 4
  br label %71

39:                                               ; preds = %35
  %40 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %41 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %44 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @sunxi_setup_scale(%struct.sunxi_video* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %39, %26
  %55 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %56 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %61 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FBIO_WAITFORVSYNC, align 4
  %66 = call i32 @ioctl(i32 %64, i32 %65, i32 0)
  store i32 1, i32* %9, align 4
  br label %71

67:                                               ; preds = %54
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct.sunxi_video*, %struct.sunxi_video** %18, align 8
  %70 = call i32 @sunxi_update_main(i8* %68, %struct.sunxi_video* %69)
  store i32 1, i32* %9, align 4
  br label %71

71:                                               ; preds = %67, %59, %38
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sunxi_setup_scale(%struct.sunxi_video*, i32, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @sunxi_update_main(i8*, %struct.sunxi_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
