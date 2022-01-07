; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_c.c_sd_update.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/Sudoku/extr_sudoku_c.c_sd_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i32*, i32, i32)* @sd_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_update(%struct.TYPE_3__* %0, i64* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 10, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %41, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, 7
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64**, i64*** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %26, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %25
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %20

44:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %191, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %194

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64**, i64*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %123, %63
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 9
  br i1 %66, label %67, label %126

67:                                               ; preds = %64
  %68 = load i64*, i64** %7, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %68, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = icmp ne i64 %82, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %67
  br label %123

86:                                               ; preds = %67
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %119, %86
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64**, i64*** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %90
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %18, align 4
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %111, %90
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %87

122:                                              ; preds = %87
  br label %123

123:                                              ; preds = %122, %85
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %64

126:                                              ; preds = %64
  br label %190

127:                                              ; preds = %48
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %186, %127
  %129 = load i32, i32* %14, align 4
  %130 = icmp slt i32 %129, 9
  br i1 %130, label %131, label %189

131:                                              ; preds = %128
  %132 = load i64*, i64** %7, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %132, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* %145, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  br label %186

150:                                              ; preds = %131
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64**, i64*** %152, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64*, i64** %153, i64 %155
  %157 = load i64*, i64** %156, align 8
  store i64* %157, i64** %19, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i64*, i64** %19, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load i64*, i64** %19, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %169, align 4
  %172 = load i32*, i32** %8, align 8
  %173 = load i64*, i64** %19, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i64*, i64** %19, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 3
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %150, %149
  %187 = load i32, i32* %14, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %128

189:                                              ; preds = %128
  br label %190

190:                                              ; preds = %189, %126
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %45

194:                                              ; preds = %45
  %195 = load i32, i32* %12, align 4
  %196 = shl i32 %195, 16
  %197 = load i32, i32* %13, align 4
  %198 = or i32 %196, %197
  ret i32 %198
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
