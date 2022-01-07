; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_setup_scale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_setup_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32* }

@NUMPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @sunxi_setup_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_setup_scale(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sunxi_video*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sunxi_video*
  store %struct.sunxi_video* %14, %struct.sunxi_video** %12, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %17 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %20 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %23 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %25 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %28 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = udiv i32 %26, %29
  %31 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %32 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %94, %4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NUMPAGES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  %38 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %39 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %38, i32 0, i32 7
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %45 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %43, %46
  %48 = add i32 %42, %47
  %49 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %50 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %49, i32 0, i32 7
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %48, %53
  %55 = mul i32 %54, 4
  %56 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %57 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %56, i32 0, i32 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %55, i32* %62, align 8
  %63 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %64 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %63, i32 0, i32 7
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %70 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %69, i32 0, i32 7
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %76 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul i32 %74, %77
  %79 = add i32 %73, %78
  %80 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %81 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = mul i32 %79, %82
  %84 = udiv i32 %83, 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %68, i64 %85
  %87 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %88 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %87, i32 0, i32 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32* %86, i32** %93, align 8
  br label %94

94:                                               ; preds = %37
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %33

97:                                               ; preds = %33
  %98 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %99 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %98, i32 0, i32 7
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %104 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = mul i32 %102, %105
  store i32 %106, i32* %11, align 4
  %107 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %108 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %107, i32 0, i32 7
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub i32 %111, %112
  %114 = udiv i32 %113, 2
  store i32 %114, i32* %10, align 4
  %115 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %116 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %115, i32 0, i32 7
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %121 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %120, i32 0, i32 7
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @sunxi_layer_set_output_window(%struct.TYPE_5__* %117, i32 %118, i32 0, i32 %119, i32 %124)
  %126 = load %struct.sunxi_video*, %struct.sunxi_video** %12, align 8
  %127 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %126, i32 0, i32 7
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = call i32 @sunxi_layer_show(%struct.TYPE_5__* %128)
  ret void
}

declare dso_local i32 @sunxi_layer_set_output_window(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @sunxi_layer_show(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
