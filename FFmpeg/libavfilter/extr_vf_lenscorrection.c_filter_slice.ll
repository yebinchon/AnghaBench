; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lenscorrection.c_filter_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lenscorrection.c_filter_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32)* @filter_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice(i32* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 7
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %11, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = sdiv i32 %54, %55
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %17, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %18, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %19, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %20, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %21, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %20, align 4
  %96 = mul nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32* %98, i32** %22, align 8
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %183, %4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %190

104:                                              ; preds = %100
  %105 = load i32, i32* %23, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %24, align 4
  %108 = load i32*, i32** %22, align 8
  store i32* %108, i32** %25, align 8
  store i32 0, i32* %26, align 4
  br label %109

109:                                              ; preds = %179, %104
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %182

113:                                              ; preds = %109
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %27, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %26, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %12, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %120, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %119, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %28, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %28, align 4
  %130 = load i32, i32* %27, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %131, 8388608
  %133 = ashr i32 %132, 24
  %134 = add nsw i32 %128, %133
  store i32 %134, i32* %29, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %24, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %138, 8388608
  %140 = ashr i32 %139, 24
  %141 = add nsw i32 %135, %140
  store i32 %141, i32* %30, align 4
  %142 = load i32, i32* %29, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %113
  %145 = load i32, i32* %29, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i32, i32* %30, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %30, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %154, 1
  %156 = icmp slt i32 %153, %155
  br label %157

157:                                              ; preds = %152, %149, %144, %113
  %158 = phi i1 [ false, %149 ], [ false, %144 ], [ false, %113 ], [ %156, %152 ]
  %159 = zext i1 %158 to i32
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %31, align 1
  %161 = load i8, i8* %31, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = load i32*, i32** %21, align 8
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %19, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* %29, align 4
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %165, i64 %171
  %173 = load i32, i32* %172, align 4
  br label %175

174:                                              ; preds = %157
  br label %175

175:                                              ; preds = %174, %164
  %176 = phi i32 [ %173, %164 ], [ 0, %174 ]
  %177 = load i32*, i32** %25, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %25, align 8
  store i32 %176, i32* %177, align 4
  br label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %26, align 4
  br label %109

182:                                              ; preds = %109
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %23, align 4
  %186 = load i32, i32* %20, align 4
  %187 = load i32*, i32** %22, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %22, align 8
  br label %100

190:                                              ; preds = %100
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
