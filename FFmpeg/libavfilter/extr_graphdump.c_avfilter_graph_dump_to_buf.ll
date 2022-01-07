; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphdump.c_avfilter_graph_dump_to_buf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_graphdump.c_avfilter_graph_dump_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__**, %struct.TYPE_16__*, i32, %struct.TYPE_21__** }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%*s%-*s\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"%*s(%s)%*s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_22__*)* @avfilter_graph_dump_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avfilter_graph_dump_to_buf(%struct.TYPE_24__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca %struct.TYPE_21__*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %431, %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %434

36:                                               ; preds = %30
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %39, i64 %41
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strlen(i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strlen(i32 %52)
  store i32 %53, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %97, %36
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %100

60:                                               ; preds = %54
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %63, i64 %65
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  store %struct.TYPE_21__* %67, %struct.TYPE_21__** %21, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strlen(i32 %72)
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @strlen(i32 %79)
  %81 = add nsw i32 %74, %80
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @FFMAX(i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strlen(i32 %90)
  %92 = call i32 @FFMAX(i32 %85, i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %95 = call i32 @print_link_prop(%struct.TYPE_24__* null, %struct.TYPE_21__* %94)
  %96 = call i32 @FFMAX(i32 %93, i32 %95)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %60
  %98 = load i32, i32* %6, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %54

100:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %144, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %101
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %110, i64 %112
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %113, align 8
  store %struct.TYPE_21__* %114, %struct.TYPE_21__** %23, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strlen(i32 %119)
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @strlen(i32 %126)
  %128 = add nsw i32 %121, %127
  store i32 %128, i32* %24, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %24, align 4
  %131 = call i32 @FFMAX(i32 %129, i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @strlen(i32 %137)
  %139 = call i32 @FFMAX(i32 %132, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %142 = call i32 @print_link_prop(%struct.TYPE_24__* null, %struct.TYPE_21__* %141)
  %143 = call i32 @FFMAX(i32 %140, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %107
  %145 = load i32, i32* %6, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %101

147:                                              ; preds = %101
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %148, %149
  %151 = load i32, i32* %14, align 4
  %152 = add i32 %150, %151
  store i32 %152, i32* %18, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 4, i32 0
  %157 = load i32, i32* %18, align 4
  %158 = add i32 %157, %156
  store i32 %158, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = add i32 %159, 2
  %161 = load i32, i32* %20, align 4
  %162 = add i32 %161, 4
  %163 = call i32 @FFMAX(i32 %160, i32 %162)
  store i32 %163, i32* %16, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @FFMAX3(i32 2, i32 %166, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %172 = load i32, i32* %18, align 4
  %173 = call i32 @av_bprint_chars(%struct.TYPE_24__* %171, i8 signext 32, i32 %172)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %175 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @av_bprint_chars(%struct.TYPE_24__* %176, i8 signext 45, i32 %177)
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %415, %147
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %418

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sub i32 %187, %190
  %192 = udiv i32 %191, 2
  %193 = sub i32 %186, %192
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sub i32 %195, %198
  %200 = udiv i32 %199, 2
  %201 = sub i32 %194, %200
  store i32 %201, i32* %26, align 4
  %202 = load i32, i32* %25, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ult i32 %202, %205
  br i1 %206, label %207, label %272

207:                                              ; preds = %185
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 5
  %210 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %209, align 8
  %211 = load i32, i32* %25, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %210, i64 %212
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  store %struct.TYPE_21__* %214, %struct.TYPE_21__** %27, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add i32 %217, %218
  %220 = add i32 %219, 2
  store i32 %220, i32* %8, align 4
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %221, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %231)
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sub i32 %234, %237
  %239 = call i32 @av_bprint_chars(%struct.TYPE_24__* %233, i8 signext 45, i32 %238)
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %14, align 4
  %244 = add i32 %242, %243
  %245 = add i32 %244, 2
  %246 = load i32, i32* %12, align 4
  %247 = add i32 %245, %246
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strlen(i32 %252)
  %254 = sub i32 %247, %253
  store i32 %254, i32* %8, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %257 = call i32 @print_link_prop(%struct.TYPE_24__* %255, %struct.TYPE_21__* %256)
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %259 = load i32, i32* %8, align 4
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sub i32 %259, %262
  %264 = call i32 @av_bprint_chars(%struct.TYPE_24__* %258, i8 signext 45, i32 %263)
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %270)
  br label %276

272:                                              ; preds = %185
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %274 = load i32, i32* %18, align 4
  %275 = call i32 @av_bprint_chars(%struct.TYPE_24__* %273, i8 signext 32, i32 %274)
  br label %276

276:                                              ; preds = %272, %207
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %278 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %277, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %279 = load i32, i32* %6, align 4
  %280 = load i32, i32* %17, align 4
  %281 = sub i32 %280, 2
  %282 = udiv i32 %281, 2
  %283 = icmp eq i32 %279, %282
  br i1 %283, label %284, label %298

284:                                              ; preds = %276
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* %19, align 4
  %287 = sub i32 %285, %286
  %288 = udiv i32 %287, 2
  store i32 %288, i32* %7, align 4
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* %7, align 4
  %293 = sub i32 %291, %292
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %289, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %290, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %293, i32 %296)
  br label %330

298:                                              ; preds = %276
  %299 = load i32, i32* %6, align 4
  %300 = load i32, i32* %17, align 4
  %301 = sub i32 %300, 2
  %302 = udiv i32 %301, 2
  %303 = add i32 %302, 1
  %304 = icmp eq i32 %299, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %298
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %20, align 4
  %308 = sub i32 %306, %307
  %309 = sub i32 %308, 2
  %310 = udiv i32 %309, 2
  store i32 %310, i32* %7, align 4
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 3
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %16, align 4
  %319 = load i32, i32* %20, align 4
  %320 = sub i32 %318, %319
  %321 = sub i32 %320, 2
  %322 = load i32, i32* %7, align 4
  %323 = sub i32 %321, %322
  %324 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %312, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %317, i32 %323, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %329

325:                                              ; preds = %298
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @av_bprint_chars(%struct.TYPE_24__* %326, i8 signext 32, i32 %327)
  br label %329

329:                                              ; preds = %325, %305
  br label %330

330:                                              ; preds = %329, %284
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %332 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %333 = load i32, i32* %26, align 4
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = icmp ult i32 %333, %336
  br i1 %337, label %338, label %412

338:                                              ; preds = %330
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %340, align 8
  %342 = load i32, i32* %26, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %341, i64 %343
  %345 = load %struct.TYPE_21__*, %struct.TYPE_21__** %344, align 8
  store %struct.TYPE_21__* %345, %struct.TYPE_21__** %28, align 8
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @strlen(i32 %350)
  %352 = add nsw i32 %351, 1
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @strlen(i32 %357)
  %359 = add nsw i32 %352, %358
  store i32 %359, i32* %29, align 4
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %13, align 4
  %364 = add i32 %362, %363
  %365 = add i32 %364, 2
  store i32 %365, i32* %8, align 4
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 2
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %371)
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %374 = load i32, i32* %8, align 4
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = sub i32 %374, %377
  %379 = call i32 @av_bprint_chars(%struct.TYPE_24__* %373, i8 signext 45, i32 %378)
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* %15, align 4
  %384 = add i32 %382, %383
  %385 = add i32 %384, 2
  %386 = load i32, i32* %11, align 4
  %387 = add i32 %385, %386
  %388 = load i32, i32* %29, align 4
  %389 = sub i32 %387, %388
  store i32 %389, i32* %8, align 4
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %392 = call i32 @print_link_prop(%struct.TYPE_24__* %390, %struct.TYPE_21__* %391)
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %394 = load i32, i32* %8, align 4
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = sub i32 %394, %397
  %399 = call i32 @av_bprint_chars(%struct.TYPE_24__* %393, i8 signext 45, i32 %398)
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_17__*, %struct.TYPE_17__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %407 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %406, i32 0, i32 0
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %400, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %405, i32 %410)
  br label %412

412:                                              ; preds = %338, %330
  %413 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %414 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %413, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %415

415:                                              ; preds = %412
  %416 = load i32, i32* %6, align 4
  %417 = add i32 %416, 1
  store i32 %417, i32* %6, align 4
  br label %181

418:                                              ; preds = %181
  %419 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %420 = load i32, i32* %18, align 4
  %421 = call i32 @av_bprint_chars(%struct.TYPE_24__* %419, i8 signext 32, i32 %420)
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %423 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %422, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %425 = load i32, i32* %16, align 4
  %426 = call i32 @av_bprint_chars(%struct.TYPE_24__* %424, i8 signext 45, i32 %425)
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %428 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %427, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %429 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %430 = call i32 (%struct.TYPE_24__*, i8*, ...) @av_bprintf(%struct.TYPE_24__* %429, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %431

431:                                              ; preds = %418
  %432 = load i32, i32* %5, align 4
  %433 = add i32 %432, 1
  store i32 %433, i32* %5, align 4
  br label %30

434:                                              ; preds = %30
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @print_link_prop(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i32 @FFMAX3(i32, i32, i32) #1

declare dso_local i32 @av_bprint_chars(%struct.TYPE_24__*, i8 signext, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_24__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
