; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_color2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_datascope.c_filter_color2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__**, %struct.TYPE_21__**, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_18__*)*, i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i64, i64, i32*)*, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_20__* }

@.str = private unnamed_addr constant [6 x i8] c"%02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%04X\0A\00", align 1
@__const.filter_color2.format = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32, i32)* @filter_color2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_color2(%struct.TYPE_22__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
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
  %27 = alloca %struct.TYPE_18__, align 4
  %28 = alloca %struct.TYPE_18__, align 4
  %29 = alloca [4 x i32], align 16
  %30 = alloca [256 x i8], align 16
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %9, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %36, i64 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  store %struct.TYPE_21__* %38, %struct.TYPE_21__** %10, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %41, i64 0
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %11, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = bitcast i8* %44 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %12, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %13, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %14, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %15, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @FFMAX(i32 %60, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %18, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %18, align 4
  %74 = mul nsw i32 %73, 10
  %75 = sdiv i32 %72, %74
  store i32 %75, i32* %19, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %17, align 4
  %82 = mul nsw i32 %81, 12
  %83 = sdiv i32 %80, %82
  store i32 %83, i32* %20, align 4
  %84 = bitcast [2 x i8*]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %84, i8* align 16 bitcast ([2 x i8*]* @__const.filter_color2.format to i8*), i64 16, i1 false)
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = sdiv i32 %87, %88
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = mul nsw i32 %90, %92
  %94 = load i32, i32* %8, align 4
  %95 = sdiv i32 %93, %94
  store i32 %95, i32* %23, align 4
  store i32 0, i32* %25, align 4
  br label %96

96:                                               ; preds = %235, %4
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %20, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load i32, i32* %25, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %106, %110
  br label %112

112:                                              ; preds = %100, %96
  %113 = phi i1 [ false, %96 ], [ %111, %100 ]
  br i1 %113, label %114, label %238

114:                                              ; preds = %112
  %115 = load i32, i32* %22, align 4
  store i32 %115, i32* %24, align 4
  br label %116

116:                                              ; preds = %231, %114
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %23, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %126, %130
  br label %132

132:                                              ; preds = %120, %116
  %133 = phi i1 [ false, %116 ], [ %131, %120 ]
  br i1 %133, label %134, label %234

134:                                              ; preds = %132
  %135 = bitcast %struct.TYPE_18__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %135, i8 0, i64 4, i1 false)
  %136 = bitcast %struct.TYPE_18__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %136, i8 0, i64 4, i1 false)
  %137 = bitcast [4 x i32]* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %137, i8 0, i64 16, i1 false)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 5
  %140 = load i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i64, i64, i32*)*, i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_20__*, i64, i64, i32*)** %139, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %144 = load i32, i32* %24, align 4
  %145 = sext i32 %144 to i64
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %145, %148
  %150 = load i32, i32* %25, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %157 = call i32 %140(i32* %142, %struct.TYPE_18__* %27, %struct.TYPE_20__* %143, i64 %149, i64 %155, i32* %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = load i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_18__*)*, i32 (i32*, %struct.TYPE_18__*, %struct.TYPE_18__*)** %159, align 8
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 3
  %163 = call i32 %160(i32* %162, %struct.TYPE_18__* %27, %struct.TYPE_18__* %28)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %18, align 4
  %175 = mul nsw i32 %173, %174
  %176 = mul nsw i32 %175, 10
  %177 = add nsw i32 %172, %176
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %25, align 4
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 %179, %180
  %182 = mul nsw i32 %181, 12
  %183 = add nsw i32 %178, %182
  %184 = load i32, i32* %18, align 4
  %185 = mul nsw i32 %184, 10
  %186 = load i32, i32* %17, align 4
  %187 = mul nsw i32 %186, 12
  %188 = call i32 @ff_fill_rectangle(i32* %165, %struct.TYPE_18__* %27, i32 %168, i32 %171, i32 %177, i32 %183, i32 %185, i32 %187)
  store i32 0, i32* %26, align 4
  br label %189

189:                                              ; preds = %227, %134
  %190 = load i32, i32* %26, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %230

193:                                              ; preds = %189
  %194 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %195 = load i32, i32* %18, align 4
  %196 = ashr i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2 x i8*], [2 x i8*]* %21, i64 0, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %26, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @snprintf(i8* %194, i32 256, i8* %199, i32 %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* %24, align 4
  %210 = load i32, i32* %18, align 4
  %211 = mul nsw i32 %209, %210
  %212 = mul nsw i32 %211, 10
  %213 = add nsw i32 %208, %212
  %214 = add nsw i32 %213, 2
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %25, align 4
  %217 = load i32, i32* %17, align 4
  %218 = mul nsw i32 %216, %217
  %219 = mul nsw i32 %218, 12
  %220 = add nsw i32 %215, %219
  %221 = load i32, i32* %26, align 4
  %222 = mul nsw i32 %221, 10
  %223 = add nsw i32 %220, %222
  %224 = add nsw i32 %223, 2
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %30, i64 0, i64 0
  %226 = call i32 @draw_text(i32* %206, %struct.TYPE_20__* %207, %struct.TYPE_18__* %28, i32 %214, i32 %224, i8* %225, i32 0)
  br label %227

227:                                              ; preds = %193
  %228 = load i32, i32* %26, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %26, align 4
  br label %189

230:                                              ; preds = %189
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %24, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %24, align 4
  br label %116

234:                                              ; preds = %132
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %25, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %25, align 4
  br label %96

238:                                              ; preds = %112
  ret i32 0
}

declare dso_local i32 @FFMAX(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ff_fill_rectangle(i32*, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @draw_text(i32*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
