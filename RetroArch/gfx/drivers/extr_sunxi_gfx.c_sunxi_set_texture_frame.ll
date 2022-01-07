; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_set_texture_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sunxi_gfx.c_sunxi_set_texture_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_video = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32, i32, float)* @sunxi_set_texture_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_set_texture_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, float %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.sunxi_video*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float %5, float* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.sunxi_video*
  store %struct.sunxi_video* %27, %struct.sunxi_video** %13, align 8
  %28 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %29 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %138

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = mul i32 %33, 2
  store i32 %34, i32* %16, align 4
  %35 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %36 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %42 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %19, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %20, align 8
  %50 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %51 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %21, align 8
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %111, %32
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %114

61:                                               ; preds = %57
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %98, %61
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = udiv i32 %64, 2
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %62
  %68 = load i8*, i8** %8, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i32, i32* %16, align 4
  %71 = udiv i32 %70, 2
  %72 = load i32, i32* %14, align 4
  %73 = mul i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %22, align 4
  %80 = load i32, i32* %22, align 4
  %81 = shl i32 %80, 8
  %82 = and i32 %81, 16711680
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %22, align 4
  %84 = shl i32 %83, 4
  %85 = and i32 %84, 65280
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %22, align 4
  %87 = shl i32 %86, 0
  %88 = and i32 %87, 255
  store i32 %88, i32* %25, align 4
  %89 = load i32, i32* %23, align 4
  %90 = or i32 0, %89
  %91 = load i32, i32* %24, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %25, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %49, i64 %96
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %67
  %99 = load i32, i32* %15, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %62

101:                                              ; preds = %62
  %102 = load i8*, i8** %21, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %14, align 4
  %105 = mul i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = bitcast i32* %49 to i8*
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @memcpy(i8* %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %57

114:                                              ; preds = %57
  %115 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %116 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %119 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %124 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %123, i32 0, i32 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.sunxi_video*, %struct.sunxi_video** %13, align 8
  %132 = getelementptr inbounds %struct.sunxi_video, %struct.sunxi_video* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sunxi_layer_set_rgb_input_buffer(%struct.TYPE_4__* %117, i32 %122, i32 %128, i32 %129, i32 %130, i32 %135)
  %137 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %137)
  br label %138

138:                                              ; preds = %114, %6
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @sunxi_layer_set_rgb_input_buffer(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
