; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_init_yuv_tables.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_xvideo.c_xv_init_yuv_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @xv_init_yuv_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xv_init_yuv_tables(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = call i64 @malloc(i32 65536)
  %8 = inttoptr i64 %7 to i32*
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = call i64 @malloc(i32 65536)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = call i64 @malloc(i32 65536)
  %16 = inttoptr i64 %15 to i32*
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp ult i32 %20, 65536
  br i1 %21, label %22, label %72

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = lshr i32 %23, 11
  %25 = and i32 %24, 31
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = lshr i32 %26, 5
  %28 = and i32 %27, 63
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 31
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 3
  %34 = load i32, i32* %4, align 4
  %35 = lshr i32 %34, 2
  %36 = or i32 %33, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 2
  %39 = load i32, i32* %5, align 4
  %40 = lshr i32 %39, 4
  %41 = or i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 3
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 2
  %46 = or i32 %43, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @xv_calculate_yuv(i32* %52, i32* %58, i32* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %22
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %19

72:                                               ; preds = %19
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @xv_calculate_yuv(i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
