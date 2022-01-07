; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_simple_lbg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_simple_lbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32**, i32*, i32*, %struct.TYPE_6__*)* @simple_lbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_lbg(%struct.TYPE_5__* %0, i32 %1, i32** %2, i32* %3, i32* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32*], align 16
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %12, align 8
  %20 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 3, %25
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %21, align 8
  %30 = getelementptr inbounds i32*, i32** %21, i64 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 4, %34
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %30, align 8
  %39 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %40 = load i32*, i32** %39, align 16
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 2, %41
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32* %40, i32 0, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %17, align 8
  br label %52

52:                                               ; preds = %120, %6
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %124

55:                                               ; preds = %52
  %56 = load i32**, i32*** %9, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @INT_MAX, align 4
  %69 = call i32 @distance_limited(i32* %58, i32* %66, i32 %67, i32 %68)
  %70 = load i32**, i32*** %9, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @INT_MAX, align 4
  %83 = call i32 @distance_limited(i32* %72, i32* %80, i32 %81, i32 %82)
  %84 = icmp sge i32 %69, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %116, %55
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i32*, i32** %11, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %96, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, %106
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %95
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %91

119:                                              ; preds = %91
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %17, align 8
  br label %52

124:                                              ; preds = %52
  %125 = load i32**, i32*** %9, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 0
  %129 = load i32*, i32** %128, align 16
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @vect_division(i32* %127, i32* %129, i32 %131, i32 %132)
  %134 = load i32**, i32*** %9, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i64 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds [2 x i32*], [2 x i32*]* %16, i64 0, i64 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @vect_division(i32* %136, i32* %138, i32 %140, i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %143, %struct.TYPE_6__** %17, align 8
  br label %144

144:                                              ; preds = %194, %124
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %146 = icmp ne %struct.TYPE_6__* %145, null
  br i1 %146, label %147, label %198

147:                                              ; preds = %144
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %149 = load i32**, i32*** %9, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = mul nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @INT_MAX, align 4
  %162 = call i32 @distance_limited(i32* %151, i32* %159, i32 %160, i32 %161)
  store i32 %162, i32* %148, align 4
  %163 = getelementptr inbounds i32, i32* %148, i64 1
  %164 = load i32**, i32*** %9, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32*, i32** %11, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %167, i64 %173
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @INT_MAX, align 4
  %177 = call i32 @distance_limited(i32* %166, i32* %174, i32 %175, i32 %176)
  store i32 %177, i32* %163, align 4
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %179, %181
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %187
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %147
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  store %struct.TYPE_6__* %197, %struct.TYPE_6__** %17, align 8
  br label %144

198:                                              ; preds = %144
  %199 = load i32*, i32** %10, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %10, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @distance_limited(i32*, i32*, i32, i32) #2

declare dso_local i32 @vect_division(i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
