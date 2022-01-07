; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_vgft_font_convert_glyphs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_vgft.c_vgft_font_convert_glyphs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i32 }

@VCOS_EINVAL = common dso_local global i32 0, align 4
@FT_LOAD_DEFAULT = common dso_local global i32 0, align 4
@VCOS_ENOMEM = common dso_local global i32 0, align 4
@VG_PATH_FORMAT_STANDARD = common dso_local global i32 0, align 4
@VG_PATH_DATATYPE_F = common dso_local global i32 0, align 4
@VG_PATH_CAPABILITY_ALL = common dso_local global i32 0, align 4
@VG_INVALID_HANDLE = common dso_local global i64 0, align 8
@segments_count = common dso_local global i32 0, align 4
@segments = common dso_local global i32 0, align 4
@coords = common dso_local global i32 0, align 4
@VG_FALSE = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgft_font_convert_glyphs(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @FT_Set_Char_Size(%struct.TYPE_15__* %18, i32 0, i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = call i32 @FT_Done_Face(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vgDestroyFont(i32 %31)
  %33 = load i32, i32* @VCOS_EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %149

34:                                               ; preds = %4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = call i64 @FT_Get_First_Char(%struct.TYPE_15__* %37, i32* %10)
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %141, %34
  %40 = load i64, i64* %11, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %147

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @FT_LOAD_DEFAULT, align 4
  %48 = call i64 @FT_Load_Glyph(%struct.TYPE_15__* %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = call i32 @FT_Done_Face(%struct.TYPE_15__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @vgDestroyFont(i32 %57)
  %59 = load i32, i32* @VCOS_ENOMEM, align 4
  store i32 %59, i32* %5, align 4
  br label %149

60:                                               ; preds = %42
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %13, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %60
  %72 = load i32, i32* @VG_PATH_FORMAT_STANDARD, align 4
  %73 = load i32, i32* @VG_PATH_DATATYPE_F, align 4
  %74 = load i32, i32* @VG_PATH_CAPABILITY_ALL, align 4
  %75 = call i64 @vgCreatePath(i32 %72, i32 %73, float 1.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @VG_INVALID_HANDLE, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @convert_outline(i32 %83, i32 %86, i32 %89, i64 %92, i32 %95)
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* @segments_count, align 4
  %99 = load i32, i32* @segments, align 4
  %100 = load i32, i32* @coords, align 4
  %101 = call i32 @vgAppendPathData(i64 %97, i32 %98, i32 %99, i32 %100)
  br label %104

102:                                              ; preds = %60
  %103 = load i64, i64* @VG_INVALID_HANDLE, align 8
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %102, %71
  %105 = bitcast [2 x float]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %105, i8 0, i64 8, i1 false)
  %106 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call float @float_from_26_6(i32 %114)
  store float %115, float* %106, align 4
  %116 = getelementptr inbounds float, float* %106, i64 1
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call float @float_from_26_6(i32 %124)
  store float %125, float* %116, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* @VG_FALSE, align 4
  %132 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 0
  %133 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %134 = call i32 @vgSetGlyphToPath(i32 %128, i32 %129, i64 %130, i32 %131, float* %132, float* %133)
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* @VG_INVALID_HANDLE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %104
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @vgDestroyPath(i64 %139)
  br label %141

141:                                              ; preds = %138, %104
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i64 @FT_Get_Next_Char(%struct.TYPE_15__* %144, i64 %145, i32* %10)
  store i64 %146, i64* %11, align 8
  br label %39

147:                                              ; preds = %39
  %148 = load i32, i32* @VCOS_SUCCESS, align 4
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %50, %24
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i64 @FT_Set_Char_Size(%struct.TYPE_15__*, i32, i32, i32, i32) #1

declare dso_local i32 @FT_Done_Face(%struct.TYPE_15__*) #1

declare dso_local i32 @vgDestroyFont(i32) #1

declare dso_local i64 @FT_Get_First_Char(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @FT_Load_Glyph(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @vgCreatePath(i32, i32, float, float, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @convert_outline(i32, i32, i32, i64, i32) #1

declare dso_local i32 @vgAppendPathData(i64, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local float @float_from_26_6(i32) #1

declare dso_local i32 @vgSetGlyphToPath(i32, i32, i64, i32, float*, float*) #1

declare dso_local i32 @vgDestroyPath(i64) #1

declare dso_local i64 @FT_Get_Next_Char(%struct.TYPE_15__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
