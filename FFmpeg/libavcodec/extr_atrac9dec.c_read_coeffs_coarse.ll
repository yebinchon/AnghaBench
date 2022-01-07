; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_read_coeffs_coarse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_read_coeffs_coarse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32, i32*, i32* }

@at9_q_unit_to_coeff_idx = common dso_local global i64* null, align 8
@at9_q_unit_to_coeff_cnt = common dso_local global i32* null, align 8
@at9_q_unit_to_codebookidx = common dso_local global i32* null, align 8
@at9_huffman_coeffs = common dso_local global %struct.TYPE_9__*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32*)* @read_coeffs_coarse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_coeffs_coarse(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32* %3, i32** %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 7
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 7
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @memset(i32* %31, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %177, %4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %180

39:                                               ; preds = %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64*, i64** @at9_q_unit_to_coeff_idx, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** @at9_q_unit_to_coeff_cnt, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %12, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %157

65:                                               ; preds = %39
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32*, i32** @at9_q_unit_to_codebookidx, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__***, %struct.TYPE_8__**** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__**, %struct.TYPE_8__*** %80, i64 %82
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %90
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %16, align 8
  %92 = load %struct.TYPE_9__***, %struct.TYPE_9__**** @at9_huffman_coeffs, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__**, %struct.TYPE_9__*** %92, i64 %94
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %96, i64 %98
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %17, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %104, %107
  store i32 %108, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %153, %65
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %18, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %156

113:                                              ; preds = %109
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @get_vlc2(i32* %114, i32 %117, i32 9, i32 %120)
  store i32 %121, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %122

122:                                              ; preds = %143, %113
  %123 = load i32, i32* %21, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %122
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @sign_extend(i32 %129, i32 %132)
  %134 = load i32*, i32** %11, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %20, align 4
  %142 = ashr i32 %141, %140
  store i32 %142, i32* %20, align 4
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %21, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %21, align 4
  br label %122

146:                                              ; preds = %122
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %11, align 8
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %109

156:                                              ; preds = %109
  br label %176

157:                                              ; preds = %39
  store i32 0, i32* %22, align 4
  br label %158

158:                                              ; preds = %172, %157
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @get_bits(i32* %163, i32 %164)
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @sign_extend(i32 %165, i32 %166)
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %167, i32* %171, align 4
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  br label %158

175:                                              ; preds = %158
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %33

180:                                              ; preds = %33
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
