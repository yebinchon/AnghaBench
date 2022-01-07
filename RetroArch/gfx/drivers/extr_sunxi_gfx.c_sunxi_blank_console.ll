; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_blank_console.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_blank_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"setterm -cursor off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunxi_video*)* @sunxi_blank_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_blank_console(%struct.sunxi_video* %0) #0 {
  %2 = alloca %struct.sunxi_video*, align 8
  store %struct.sunxi_video* %0, %struct.sunxi_video** %2, align 8
  %3 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %4 = icmp ne %struct.sunxi_video* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %67

6:                                                ; preds = %1
  %7 = call i32 @system(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %9 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %14 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %12, %17
  %19 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %20 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %18, %23
  %25 = sdiv i32 %24, 8
  %26 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %27 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %29 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %37 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %39 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %6
  br label %67

43:                                               ; preds = %6
  %44 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %45 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %48 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %54 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memcpy(i8* %46, i8* %52, i32 %55)
  %57 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %58 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.sunxi_video*, %struct.sunxi_video** %2, align 8
  %64 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @memset(i8* %62, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %43, %42, %5
  ret void
}

declare dso_local i32 @system(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
