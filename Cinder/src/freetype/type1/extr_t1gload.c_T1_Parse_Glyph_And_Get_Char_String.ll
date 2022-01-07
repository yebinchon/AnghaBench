; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/type1/extr_t1gload.c_T1_Parse_Glyph_And_Get_Char_String.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/type1/extr_t1gload.c_T1_Parse_Glyph_And_Get_Char_String.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_43__, i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__, %struct.TYPE_41__, i64, i64, i32 }
%struct.TYPE_42__ = type { i8*, i8* }
%struct.TYPE_41__ = type { i8* }
%struct.TYPE_37__ = type { i64, i64 }
%struct.TYPE_46__ = type { %struct.TYPE_45__, %struct.TYPE_39__, i32 }
%struct.TYPE_45__ = type { i32, i64*, i64*, i32, i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64 (i32, i64, i32, %struct.TYPE_35__*)*, i64 (i32, i64, %struct.TYPE_37__*)* }
%struct.TYPE_35__ = type { i8*, i8*, i8*, i64 }
%struct.TYPE_34__ = type { i32 (i32, i32*, i32*)*, i32 (%struct.TYPE_33__*, %struct.TYPE_31__*, i32)*, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_30__ = type { i64 (%struct.TYPE_33__*, i32*, i32)*, i64 (%struct.TYPE_31__*, i32*, i64)*, i64 (%struct.TYPE_31__*, i32*, i64)* }
%struct.TYPE_44__ = type { i32 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Glyph_Too_Big = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FT_HINTING_FREETYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_31__*, i64, %struct.TYPE_37__*, i32*)* @T1_Parse_Glyph_And_Get_Char_String to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @T1_Parse_Glyph_And_Get_Char_String(%struct.TYPE_31__* %0, i64 %1, %struct.TYPE_37__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_37__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca %struct.TYPE_45__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_33__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %21, %struct.TYPE_46__** %9, align 8
  %22 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %22, i32 0, i32 0
  store %struct.TYPE_45__* %23, %struct.TYPE_45__** %10, align 8
  %24 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %29, %struct.TYPE_34__** %12, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  store %struct.TYPE_30__* %32, %struct.TYPE_30__** %13, align 8
  %33 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_45__*, %struct.TYPE_45__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %137, label %61

61:                                               ; preds = %4
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = load i64 (%struct.TYPE_31__*, i32*, i64)*, i64 (%struct.TYPE_31__*, i32*, i64)** %69, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 %70(%struct.TYPE_31__* %71, i32* %75, i64 %78)
  store i64 %79, i64* %11, align 8
  br label %136

80:                                               ; preds = %61
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_33__*, %struct.TYPE_31__*, i32)*, i32 (%struct.TYPE_33__*, %struct.TYPE_31__*, i32)** %82, align 8
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 %83(%struct.TYPE_33__* %14, %struct.TYPE_31__* %84, i32 %85)
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 0
  %89 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %88, align 8
  %90 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %91 = call i32 @FT_FACE(%struct.TYPE_46__* %90)
  %92 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %93, i32 0, i32 0
  %95 = call i32 %89(i32 %91, i32* %94, i32* %15)
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 0
  store i32* %15, i32** %96, align 8
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_33__*, i32*, i32)*, i64 (%struct.TYPE_33__*, i32*, i32)** %98, align 8
  %100 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i64 %99(%struct.TYPE_33__* %14, i32* %103, i32 %107)
  store i64 %108, i64* %11, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i32, i32* @Glyph_Too_Big, align 4
  %111 = call i64 @FT_ERR_EQ(i64 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %80
  %114 = load i32, i32* @FALSE, align 4
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to %struct.TYPE_44__*
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* @TRUE, align 4
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i64 (%struct.TYPE_33__*, i32*, i32)*, i64 (%struct.TYPE_33__*, i32*, i32)** %124, align 8
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i64 %125(%struct.TYPE_33__* %14, i32* %129, i32 %133)
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %113, %80
  br label %136

136:                                              ; preds = %135, %67
  br label %137

137:                                              ; preds = %136, %4
  %138 = load i64, i64* %11, align 8
  ret i64 %138
}

declare dso_local i32 @FT_FACE(%struct.TYPE_46__*) #1

declare dso_local i64 @FT_ERR_EQ(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
