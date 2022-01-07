; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_color.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i32, i32 (i32*, %struct.TYPE_12__*, i32*, i64, i64, i32*)*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04X\0A\00", align 1
@__const.filter_color.format = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32, i32)* @filter_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_color(%struct.TYPE_15__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x i8*], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_12__, align 4
  %28 = alloca [4 x i32], align 16
  %29 = alloca [256 x i8], align 16
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %9, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %35, i64 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %10, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %40, i64 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %11, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %12, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %13, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FFMAX(i32 %59, i32 %62)
  store i32 %63, i32* %17, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %18, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %72, 10
  %74 = sdiv i32 %71, %73
  store i32 %74, i32* %19, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %17, align 4
  %81 = mul nsw i32 %80, 12
  %82 = sdiv i32 %79, %81
  store i32 %82, i32* %20, align 4
  %83 = bitcast [2 x i8*]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %83, i8* align 16 bitcast ([2 x i8*]* @__const.filter_color.format to i8*), i64 16, i1 false)
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  %92 = mul nsw i32 %89, %91
  %93 = load i32, i32* %8, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %23, align 4
  store i32 0, i32* %25, align 4
  br label %95

95:                                               ; preds = %202, %4
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32, i32* %25, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %105, %109
  br label %111

111:                                              ; preds = %99, %95
  %112 = phi i1 [ false, %95 ], [ %110, %99 ]
  br i1 %112, label %113, label %205

113:                                              ; preds = %111
  %114 = load i32, i32* %22, align 4
  store i32 %114, i32* %24, align 4
  br label %115

115:                                              ; preds = %198, %113
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %23, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %125, %129
  br label %131

131:                                              ; preds = %119, %115
  %132 = phi i1 [ false, %115 ], [ %130, %119 ]
  br i1 %132, label %133, label %201

133:                                              ; preds = %131
  %134 = bitcast %struct.TYPE_12__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %134, i8 0, i64 4, i1 false)
  %135 = bitcast [4 x i32]* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %135, i8 0, i64 16, i1 false)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  %138 = load i32 (i32*, %struct.TYPE_12__*, i32*, i64, i64, i32*)*, i32 (i32*, %struct.TYPE_12__*, i32*, i64, i64, i32*)** %137, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load i32, i32* %25, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 0
  %155 = call i32 %138(i32* %140, %struct.TYPE_12__* %27, i32* %141, i64 %147, i64 %153, i32* %154)
  store i32 0, i32* %26, align 4
  br label %156

156:                                              ; preds = %194, %133
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %156
  %161 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 0
  %162 = load i32, i32* %18, align 4
  %163 = ashr i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %26, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @snprintf(i8* %161, i32 256, i8* %166, i32 %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i32*, i32** %14, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %24, align 4
  %177 = load i32, i32* %18, align 4
  %178 = mul nsw i32 %176, %177
  %179 = mul nsw i32 %178, 10
  %180 = add nsw i32 %175, %179
  %181 = add nsw i32 %180, 2
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %17, align 4
  %185 = mul nsw i32 %183, %184
  %186 = mul nsw i32 %185, 12
  %187 = add nsw i32 %182, %186
  %188 = load i32, i32* %26, align 4
  %189 = mul nsw i32 %188, 10
  %190 = add nsw i32 %187, %189
  %191 = add nsw i32 %190, 2
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %29, i64 0, i64 0
  %193 = call i32 @draw_text(i32* %173, i32* %174, %struct.TYPE_12__* %27, i32 %181, i32 %191, i8* %192, i32 0)
  br label %194

194:                                              ; preds = %160
  %195 = load i32, i32* %26, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %26, align 4
  br label %156

197:                                              ; preds = %156
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %24, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %24, align 4
  br label %115

201:                                              ; preds = %131
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %25, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %25, align 4
  br label %95

205:                                              ; preds = %111
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @draw_text(i32*, i32*, %struct.TYPE_12__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
