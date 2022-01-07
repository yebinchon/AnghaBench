; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_GenerateComposite.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_GenerateComposite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@textures = common dso_local global %struct.TYPE_6__** null, align 8
@texturecompositesize = common dso_local global i32* null, align 8
@PU_STATIC = common dso_local global i32 0, align 4
@texturecomposite = common dso_local global i32* null, align 8
@texturecolumnlump = common dso_local global i16** null, align 8
@texturecolumnofs = common dso_local global i16** null, align 8
@PU_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_GenerateComposite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @textures, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 %16
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  %19 = load i32*, i32** @texturecompositesize, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PU_STATIC, align 4
  %25 = load i32*, i32** @texturecomposite, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32* @Z_Malloc(i32 %23, i32 %24, i32* %28)
  store i32* %29, i32** %3, align 8
  %30 = load i16**, i16*** @texturecolumnlump, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16*, i16** %30, i64 %32
  %34 = load i16*, i16** %33, align 8
  store i16* %34, i16** %12, align 8
  %35 = load i16**, i16*** @texturecolumnofs, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16*, i16** %35, i64 %37
  %39 = load i16*, i16** %38, align 8
  store i16* %39, i16** %13, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %10, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %5, align 8
  br label %46

46:                                               ; preds = %132, %1
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %137

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PU_CACHE, align 4
  %57 = call %struct.TYPE_8__* @W_CacheLumpNum(i32 %55, i32 %56)
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @SHORT(i32 %64)
  %66 = add nsw i32 %61, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %72

70:                                               ; preds = %52
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %78, %72
  br label %83

83:                                               ; preds = %128, %82
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %83
  %88 = load i16*, i16** %12, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %128

96:                                               ; preds = %87
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = bitcast %struct.TYPE_8__* %97 to i32*
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @LONG(i32 %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %98, i64 %109
  store i32* %110, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %3, align 8
  %113 = load i16*, i16** %13, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %113, i64 %115
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %112, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @R_DrawColumnInCache(i32* %111, i32* %120, i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %96, %95
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %83

131:                                              ; preds = %83
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 1
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %5, align 8
  br label %46

137:                                              ; preds = %46
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* @PU_CACHE, align 4
  %140 = call i32 @Z_ChangeTag(i32* %138, i32 %139)
  ret void
}

declare dso_local i32* @Z_Malloc(i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @W_CacheLumpNum(i32, i32) #1

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @LONG(i32) #1

declare dso_local i32 @R_DrawColumnInCache(i32*, i32*, i32, i32) #1

declare dso_local i32 @Z_ChangeTag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
