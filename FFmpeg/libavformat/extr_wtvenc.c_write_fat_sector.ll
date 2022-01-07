; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_fat_sector.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_fat_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@WTV_SECTOR_BITS = common dso_local global i32 0, align 4
@WTV_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32)* @write_fat_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fat_sector(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @avio_tell(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @write_fat(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %59

37:                                               ; preds = %5
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* @WTV_SECTOR_SIZE, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @WTV_SECTOR_SIZE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @avio_tell(i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @write_fat(i32 %54, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* %17, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %5
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %37
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @write_fat(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
