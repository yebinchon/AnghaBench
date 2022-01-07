; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_colormap_insert.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_paletteuse.c_colormap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_node = type { i32, i32, i32*, i32, i32 }
%struct.color_rect = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.color_node*, i32*, i32*, i32*, i32, %struct.color_rect*)* @colormap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @colormap_insert(%struct.color_node* %0, i32* %1, i32* %2, i32* %3, i32 %4, %struct.color_rect* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.color_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.color_rect*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.color_node*, align 8
  %20 = alloca %struct.color_rect, align 8
  %21 = alloca %struct.color_rect, align 8
  %22 = alloca i32, align 4
  store %struct.color_node* %0, %struct.color_node** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.color_rect* %5, %struct.color_rect** %13, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.color_rect*, %struct.color_rect** %13, align 8
  %27 = call i32 @get_next_color(i32* %23, i32* %24, i32 %25, i32* %15, %struct.color_rect* %26)
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %22, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %149

31:                                               ; preds = %6
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %22, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.color_node*, %struct.color_node** %8, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.color_node, %struct.color_node* %40, i64 %42
  store %struct.color_node* %43, %struct.color_node** %19, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.color_node*, %struct.color_node** %19, align 8
  %46 = getelementptr inbounds %struct.color_node, %struct.color_node* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %22, align 4
  %48 = load %struct.color_node*, %struct.color_node** %19, align 8
  %49 = getelementptr inbounds %struct.color_node, %struct.color_node* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = load %struct.color_node*, %struct.color_node** %19, align 8
  %54 = getelementptr inbounds %struct.color_node, %struct.color_node* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 255
  %60 = load %struct.color_node*, %struct.color_node** %19, align 8
  %61 = getelementptr inbounds %struct.color_node, %struct.color_node* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %14, align 4
  %65 = ashr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load %struct.color_node*, %struct.color_node** %19, align 8
  %68 = getelementptr inbounds %struct.color_node, %struct.color_node* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, 255
  %73 = load %struct.color_node*, %struct.color_node** %19, align 8
  %74 = getelementptr inbounds %struct.color_node, %struct.color_node* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  store i32 %72, i32* %76, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %22, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 1, i32* %80, align 4
  %81 = load %struct.color_rect*, %struct.color_rect** %13, align 8
  %82 = bitcast %struct.color_rect* %21 to i8*
  %83 = bitcast %struct.color_rect* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = bitcast %struct.color_rect* %20 to i8*
  %85 = bitcast %struct.color_rect* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load %struct.color_node*, %struct.color_node** %19, align 8
  %87 = getelementptr inbounds %struct.color_node, %struct.color_node* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.color_rect, %struct.color_rect* %20, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.color_node*, %struct.color_node** %19, align 8
  %100 = getelementptr inbounds %struct.color_node, %struct.color_node* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  %107 = getelementptr inbounds %struct.color_rect, %struct.color_rect* %21, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.color_node*, %struct.color_node** %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @colormap_insert(%struct.color_node* %113, i32* %114, i32* %115, i32* %116, i32 %117, %struct.color_rect* %20)
  store i32 %118, i32* %17, align 4
  %119 = getelementptr inbounds %struct.color_rect, %struct.color_rect* %21, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.color_rect, %struct.color_rect* %21, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp sle i32 %125, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %31
  %135 = load %struct.color_node*, %struct.color_node** %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @colormap_insert(%struct.color_node* %135, i32* %136, i32* %137, i32* %138, i32 %139, %struct.color_rect* %21)
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %134, %31
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.color_node*, %struct.color_node** %19, align 8
  %144 = getelementptr inbounds %struct.color_node, %struct.color_node* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load %struct.color_node*, %struct.color_node** %19, align 8
  %147 = getelementptr inbounds %struct.color_node, %struct.color_node* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %141, %30
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @get_next_color(i32*, i32*, i32, i32*, %struct.color_rect*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
