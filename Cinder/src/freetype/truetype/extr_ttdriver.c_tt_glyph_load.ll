; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttdriver.c_tt_glyph_load.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/truetype/extr_ttdriver.c_tt_glyph_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@Invalid_Slot_Handle = common dso_local global i32 0, align 4
@Invalid_Size_Handle = common dso_local global i32 0, align 4
@Invalid_Face_Handle = common dso_local global i32 0, align 4
@Invalid_Argument = common dso_local global i32 0, align 4
@FT_LOAD_NO_HINTING = common dso_local global i32 0, align 4
@FT_LOAD_NO_AUTOHINT = common dso_local global i32 0, align 4
@FT_LOAD_NO_RECURSE = common dso_local global i32 0, align 4
@FT_LOAD_NO_SCALE = common dso_local global i32 0, align 4
@FT_LOAD_NO_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i64, i32)* @tt_glyph_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tt_glyph_load(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = ptrtoint %struct.TYPE_13__* %14 to i32
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = bitcast %struct.TYPE_12__* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @Invalid_Slot_Handle, align 4
  %25 = call i32 @FT_THROW(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %113

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @Invalid_Size_Handle, align 4
  %31 = call i32 @FT_THROW(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %113

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @Invalid_Face_Handle, align 4
  %37 = call i32 @FT_THROW(i32 %36)
  store i32 %37, i32* %5, align 4
  br label %113

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @Invalid_Argument, align 4
  %46 = call i32 @FT_THROW(i32 %45)
  store i32 %46, i32* %5, align 4
  br label %113

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = call i64 @FT_IS_TRICKY(%struct.TYPE_14__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @FT_LOAD_NO_AUTOHINT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @FT_LOAD_NO_RECURSE, align 4
  %74 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %71
  %79 = load i32, i32* @FT_LOAD_NO_BITMAP, align 4
  %80 = load i32, i32* @FT_LOAD_NO_SCALE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %9, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %9, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %85 = call i64 @FT_IS_TRICKY(%struct.TYPE_14__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @FT_LOAD_NO_HINTING, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  br label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32* [ %99, %97 ], [ %102, %100 ]
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @TT_Load_Glyph(%struct.TYPE_11__* %107, i32 %108, i64 %109, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %103, %44, %35, %29, %23
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @FT_THROW(i32) #1

declare dso_local i64 @FT_IS_TRICKY(%struct.TYPE_14__*) #1

declare dso_local i32 @TT_Load_Glyph(%struct.TYPE_11__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
