; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_rtree.c_rtree_new.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_rtree.c_rtree_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_4__*, i32*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@RTREE_BITS_PER_LEVEL = common dso_local global i32 0, align 4
@RTREE_HEIGHT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtree_new(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ule i64 %16, 64
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %24 = urem i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %31 = urem i32 %29, %30
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %38, %39
  %41 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %42 = udiv i32 %40, %41
  %43 = add i32 1, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub i32 %44, 1
  %46 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %37
  br label %57

56:                                               ; preds = %32
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %10, align 4
  %59 = sub i32 %58, 1
  %60 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %61 = mul i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %57
  %85 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  br label %88

86:                                               ; preds = %57
  %87 = load i32, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %100, i32* %105, align 4
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %145, %88
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub i32 %108, 1
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sub i32 %130, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RTREE_BITS_PER_LEVEL, align 4
  %137 = add i32 %135, %136
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i32 %137, i32* %144, align 4
  br label %145

145:                                              ; preds = %111
  %146 = load i32, i32* %11, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %106

148:                                              ; preds = %106
  %149 = load i32, i32* %10, align 4
  %150 = icmp ugt i32 %149, 1
  br i1 %150, label %151, label %178

151:                                              ; preds = %148
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sub i32 %155, 1
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  store i32* null, i32** %159, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sub i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32 %160, i32* %168, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  store i32 %169, i32* %177, align 4
  br label %178

178:                                              ; preds = %151, %148
  store i32 0, i32* %11, align 4
  br label %179

179:                                              ; preds = %197, %178
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @RTREE_HEIGHT_MAX, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %179
  %184 = load i32, i32* @RTREE_HEIGHT_MAX, align 4
  %185 = sub i32 %184, 1
  %186 = load i32, i32* %11, align 4
  %187 = sub i32 %185, %186
  %188 = load i32, i32* %10, align 4
  %189 = sub i32 %188, 1
  %190 = call i32 @hmin(i32 %187, i32 %189)
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 %190, i32* %196, align 4
  br label %197

197:                                              ; preds = %183
  %198 = load i32, i32* %11, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %179

200:                                              ; preds = %179
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hmin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
