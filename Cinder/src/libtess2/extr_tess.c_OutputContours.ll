; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_OutputContours.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_OutputContours.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 (i32, i32)* }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OutputContours(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %7, align 8
  br label %22

22:                                               ; preds = %54, %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = icmp ne %struct.TYPE_14__* %23, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %54

33:                                               ; preds = %27
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %9, align 8
  br label %37

37:                                               ; preds = %45, %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %8, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = icmp ne %struct.TYPE_13__* %46, %47
  br i1 %48, label %37, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %32
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %7, align 8
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64 (i32, i32)*, i64 (i32, i32)** %61, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = mul i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = call i64 %62(i32 %66, i32 %73)
  %75 = inttoptr i64 %74 to i32*
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64 (i32, i32)*, i64 (i32, i32)** %80, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = call i64 %81(i32 %85, i32 %94)
  %96 = inttoptr i64 %95 to i32*
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %10, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %7, align 8
  br label %109

109:                                              ; preds = %177, %58
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = icmp ne %struct.TYPE_14__* %110, %112
  br i1 %113, label %114, label %181

114:                                              ; preds = %109
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  br label %177

120:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %123, %struct.TYPE_13__** %9, align 8
  br label %124

124:                                              ; preds = %161, %120
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 2
  br i1 %144, label %145, label %155

145:                                              ; preds = %124
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %10, align 8
  store i32 %152, i32* %153, align 4
  br label %155

155:                                              ; preds = %145, %124
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %8, align 8
  br label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %164 = icmp ne %struct.TYPE_13__* %162, %163
  br i1 %164, label %124, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  store i32 %169, i32* %171, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32* %173, i32** %11, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %165, %119
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  store %struct.TYPE_14__* %180, %struct.TYPE_14__** %7, align 8
  br label %109

181:                                              ; preds = %109
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
