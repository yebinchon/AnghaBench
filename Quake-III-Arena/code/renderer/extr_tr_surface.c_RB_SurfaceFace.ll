; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_RB_SurfaceFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, float***, i32*, i32*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, float**, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { float* }

@backEnd = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VERTEXSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_SurfaceFace(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RB_CHECKOVERFLOW(i32 %14, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @backEnd, i32 0, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %27 = or i32 %26, %25
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 0), align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = bitcast %struct.TYPE_9__* %28 to i8*
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %4, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 2), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %5, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %60, %1
  %46 = load i32, i32* %3, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %53, %54
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %3, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 3), align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 4
  %71 = load float**, float*** %70, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 0
  %73 = load float*, float** %72, align 8
  store float* %73, float** %6, align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 9), align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %63
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load float*, float** %85, align 8
  store float* %86, float** %7, align 8
  store i32 0, i32* %3, align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %100, %82
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load float*, float** %7, align 8
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 8), align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @VectorCopy(float* %93, i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105, %63
  store i32 0, i32* %3, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load float**, float*** %108, align 8
  %110 = getelementptr inbounds float*, float** %109, i64 0
  %111 = load float*, float** %110, align 8
  store float* %111, float** %6, align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %182, %106
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %191

117:                                              ; preds = %113
  %118 = load float*, float** %6, align 8
  %119 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 7), align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @VectorCopy(float* %118, i32 %123)
  %125 = load float*, float** %6, align 8
  %126 = getelementptr inbounds float, float* %125, i64 3
  %127 = load float, float* %126, align 4
  %128 = load float***, float**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float**, float*** %128, i64 %130
  %132 = load float**, float*** %131, align 8
  %133 = getelementptr inbounds float*, float** %132, i64 0
  %134 = load float*, float** %133, align 8
  %135 = getelementptr inbounds float, float* %134, i64 0
  store float %127, float* %135, align 4
  %136 = load float*, float** %6, align 8
  %137 = getelementptr inbounds float, float* %136, i64 4
  %138 = load float, float* %137, align 4
  %139 = load float***, float**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float**, float*** %139, i64 %141
  %143 = load float**, float*** %142, align 8
  %144 = getelementptr inbounds float*, float** %143, i64 0
  %145 = load float*, float** %144, align 8
  %146 = getelementptr inbounds float, float* %145, i64 1
  store float %138, float* %146, align 4
  %147 = load float*, float** %6, align 8
  %148 = getelementptr inbounds float, float* %147, i64 5
  %149 = load float, float* %148, align 4
  %150 = load float***, float**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float**, float*** %150, i64 %152
  %154 = load float**, float*** %153, align 8
  %155 = getelementptr inbounds float*, float** %154, i64 1
  %156 = load float*, float** %155, align 8
  %157 = getelementptr inbounds float, float* %156, i64 0
  store float %149, float* %157, align 4
  %158 = load float*, float** %6, align 8
  %159 = getelementptr inbounds float, float* %158, i64 6
  %160 = load float, float* %159, align 4
  %161 = load float***, float**** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 4), align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float**, float*** %161, i64 %163
  %165 = load float**, float*** %164, align 8
  %166 = getelementptr inbounds float*, float** %165, i64 1
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds float, float* %167, i64 1
  store float %160, float* %168, align 4
  %169 = load float*, float** %6, align 8
  %170 = getelementptr inbounds float, float* %169, i64 7
  %171 = bitcast float* %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 6), align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 5), align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %177, i32* %181, align 4
  br label %182

182:                                              ; preds = %117
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  %185 = load i32, i32* @VERTEXSIZE, align 4
  %186 = load float*, float** %6, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds float, float* %186, i64 %187
  store float* %188, float** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %8, align 4
  br label %113

191:                                              ; preds = %113
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @tess, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
