; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_cache_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpuid.c_cpuid_set_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*** }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@LCACHE_MAX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"cpuid_set_cache_info(%p)\0A\00", align 1
@eax = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@Lnone = common dso_local global i64 0, align 8
@ecx = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"cpuid(4) index=%d eax=0x%x\0A\00", align 1
@ebx = common dso_local global i64 0, align 8
@L1D = common dso_local global i64 0, align 8
@L1I = common dso_local global i64 0, align 8
@L2U = common dso_local global i64 0, align 8
@L3U = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c" cache_size[%s]      : %d\0A\00", align 1
@cache_type_str = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c" cache_sharing[%s]   : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c" cache_partitions[%s]: %d\0A\00", align 1
@vm_cache_geometry_colors = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c" vm_cache_geometry_colors: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c" cache_size[L2U]      : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c" cache_sharing[L2U]   : 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c" cache_partitions[L2U]: 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" linesizes[L2U]       : %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"no linesize\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c" cache_linesize    : %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c" %ld leaf2 descriptors:\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@SMALL = common dso_local global i32 0, align 4
@TLB_SMALL = common dso_local global i32 0, align 4
@TLB_LARGE = common dso_local global i32 0, align 4
@TLB_INST = common dso_local global i32 0, align 4
@TLB_DATA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @cpuid_set_cache_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuid_set_cache_info(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_6__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %25 = load i32, i32* @LCACHE_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %30)
  %32 = mul nuw i64 4, %26
  %33 = trunc i64 %32 to i32
  %34 = call i32 @bzero(i32* %28, i32 %33)
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %36 = call i32 @cpuid_fn(i32 2, i32* %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %59, %1
  %38 = load i32, i32* %9, align 4
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 31
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %59

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %47
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %37

62:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %64, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = mul i32 %72, 16
  %74 = zext i32 %73 to i64
  %75 = icmp ugt i64 %74, 8
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %112

77:                                               ; preds = %71
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %79 = call i32 @cpuid_fn(i32 2, i32* %78)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %105, %77
  %81 = load i32, i32* %9, align 4
  %82 = icmp ult i32 %81, 4
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 31
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %105

91:                                               ; preds = %83
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = mul i32 4, %99
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  store i32 %95, i32* %104, align 4
  br label %105

105:                                              ; preds = %91, %90
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %80

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %63

112:                                              ; preds = %76, %63
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %114 = call i32 @cpuid_fn(i32 0, i32* %113)
  %115 = load i64, i64* @eax, align 8
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp sge i32 %117, 4
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %10, align 8
  br label %121

121:                                              ; preds = %119, %112
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %313, %121
  %123 = load i64, i64* %10, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %316

125:                                              ; preds = %122
  %126 = load i64, i64* @Lnone, align 8
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* @eax, align 8
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %127
  store i32 4, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i64, i64* @ecx, align 8
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %130
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %133 = call i32 @cpuid(i32* %132)
  %134 = load i32, i32* %5, align 4
  %135 = load i64, i64* @eax, align 8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %137)
  %139 = load i64, i64* @eax, align 8
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @bitfield32(i32 %141, i32 4, i32 0)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %125
  br label %316

147:                                              ; preds = %125
  %148 = load i64, i64* @eax, align 8
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @bitfield32(i32 %150, i32 7, i32 5)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %13, align 4
  %153 = load i64, i64* @eax, align 8
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @bitfield32(i32 %155, i32 25, i32 14)
  %157 = getelementptr i8, i8* %156, i64 1
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %14, align 4
  %159 = load i64, i64* @eax, align 8
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @bitfield32(i32 %161, i32 31, i32 26)
  %163 = getelementptr i8, i8* %162, i64 1
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i64, i64* @ebx, align 8
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @bitfield32(i32 %169, i32 11, i32 0)
  %171 = getelementptr i8, i8* %170, i64 1
  %172 = ptrtoint i8* %171 to i32
  store i32 %172, i32* %15, align 4
  %173 = load i64, i64* @ebx, align 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @bitfield32(i32 %175, i32 21, i32 12)
  %177 = getelementptr i8, i8* %176, i64 1
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %19, align 4
  %179 = load i64, i64* @ebx, align 8
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i8* @bitfield32(i32 %181, i32 31, i32 22)
  %183 = getelementptr i8, i8* %182, i64 1
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %17, align 4
  %185 = load i64, i64* @ecx, align 8
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @bitfield32(i32 %187, i32 31, i32 0)
  %189 = getelementptr i8, i8* %188, i64 1
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %13, align 4
  switch i32 %191, label %226 [
    i32 1, label %192
    i32 2, label %208
    i32 3, label %217
  ]

192:                                              ; preds = %147
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i64, i64* @L1D, align 8
  br label %206

197:                                              ; preds = %192
  %198 = load i32, i32* %12, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %202

200:                                              ; preds = %197
  %201 = load i64, i64* @L1I, align 8
  br label %204

202:                                              ; preds = %197
  %203 = load i64, i64* @Lnone, align 8
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i64 [ %201, %200 ], [ %203, %202 ]
  br label %206

206:                                              ; preds = %204, %195
  %207 = phi i64 [ %196, %195 ], [ %205, %204 ]
  store i64 %207, i64* %11, align 8
  br label %228

208:                                              ; preds = %147
  %209 = load i32, i32* %12, align 4
  %210 = icmp eq i32 %209, 3
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i64, i64* @L2U, align 8
  br label %215

213:                                              ; preds = %208
  %214 = load i64, i64* @Lnone, align 8
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i64 [ %212, %211 ], [ %214, %213 ]
  store i64 %216, i64* %11, align 8
  br label %228

217:                                              ; preds = %147
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 3
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i64, i64* @L3U, align 8
  br label %224

222:                                              ; preds = %217
  %223 = load i64, i64* @Lnone, align 8
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i64 [ %221, %220 ], [ %223, %222 ]
  store i64 %225, i64* %11, align 8
  br label %228

226:                                              ; preds = %147
  %227 = load i64, i64* @Lnone, align 8
  store i64 %227, i64* %11, align 8
  br label %228

228:                                              ; preds = %226, %224, %215, %206
  %229 = load i64, i64* %11, align 8
  %230 = load i64, i64* @Lnone, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %312

232:                                              ; preds = %228
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %16, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %17, align 4
  %237 = mul nsw i32 %235, %236
  %238 = load i32, i32* %19, align 4
  %239 = mul nsw i32 %237, %238
  store i32 %239, i32* %18, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 3
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %11, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load i32, i32* %19, align 4
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* %11, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  store i32 %252, i32* %257, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i64, i64* %11, align 8
  %260 = getelementptr inbounds i32, i32* %28, i64 %259
  store i32 %258, i32* %260, align 4
  %261 = load i32*, i32** @cache_type_str, align 8
  %262 = load i64, i64* %11, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %18, align 4
  %266 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %264, i32 %265)
  %267 = load i32*, i32** @cache_type_str, align 8
  %268 = load i64, i64* %11, align 8
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %14, align 4
  %272 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %270, i32 %271)
  %273 = load i32*, i32** @cache_type_str, align 8
  %274 = load i64, i64* %11, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %19, align 4
  %278 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %276, i32 %277)
  %279 = load i64, i64* %11, align 8
  %280 = load i64, i64* @L2U, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %232
  %283 = load i32, i32* %17, align 4
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 8
  br label %286

286:                                              ; preds = %282, %232
  %287 = load i64, i64* %11, align 8
  %288 = load i64, i64* @L3U, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load i32, i32* %16, align 4
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 4
  %300 = sdiv i32 %296, %299
  store i32 %300, i32* %16, align 4
  br label %301

301:                                              ; preds = %295, %290, %286
  %302 = load i32, i32* %15, align 4
  %303 = load i32, i32* %16, align 4
  %304 = mul nsw i32 %302, %303
  %305 = ashr i32 %304, 12
  store i32 %305, i32* %20, align 4
  %306 = load i32, i32* %20, align 4
  %307 = load i32, i32* @vm_cache_geometry_colors, align 4
  %308 = icmp sgt i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %301
  %310 = load i32, i32* %20, align 4
  store i32 %310, i32* @vm_cache_geometry_colors, align 4
  br label %311

311:                                              ; preds = %309, %301
  br label %312

312:                                              ; preds = %311, %228
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %5, align 4
  br label %122

316:                                              ; preds = %146, %122
  %317 = load i32, i32* @vm_cache_geometry_colors, align 4
  %318 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %317)
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %363

323:                                              ; preds = %316
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 1
  store i32 1, i32* %325, align 8
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %328, 1024
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i64, i64* @L2U, align 8
  %334 = getelementptr inbounds i32, i32* %332, i64 %333
  store i32 %329, i32* %334, align 4
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i32 0, i32 3
  %337 = load i32*, i32** %336, align 8
  %338 = load i64, i64* @L2U, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  store i32 1, i32* %339, align 4
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 4
  %342 = load i32*, i32** %341, align 8
  %343 = load i64, i64* @L2U, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  store i32 1, i32* %344, align 4
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 4
  %348 = load i64, i64* @L2U, align 8
  %349 = getelementptr inbounds i32, i32* %28, i64 %348
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 2
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* @L2U, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %355)
  %357 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %358 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 4
  %362 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %361)
  br label %363

363:                                              ; preds = %323, %316
  %364 = load i64, i64* @L2U, align 8
  %365 = getelementptr inbounds i32, i32* %28, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %363
  %369 = load i64, i64* @L2U, align 8
  %370 = getelementptr inbounds i32, i32* %28, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 9
  store i32 %371, i32* %373, align 8
  br label %388

374:                                              ; preds = %363
  %375 = load i64, i64* @L1D, align 8
  %376 = getelementptr inbounds i32, i32* %28, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %374
  %380 = load i64, i64* @L1D, align 8
  %381 = getelementptr inbounds i32, i32* %28, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 9
  store i32 %382, i32* %384, align 8
  br label %387

385:                                              ; preds = %374
  %386 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %387

387:                                              ; preds = %385, %379
  br label %388

388:                                              ; preds = %387, %368
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 9
  %391 = load i32, i32* %390, align 8
  %392 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %391)
  %393 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 8)
  store i32 1, i32* %8, align 4
  br label %394

394:                                              ; preds = %473, %388
  %395 = load i32, i32* %8, align 4
  %396 = zext i32 %395 to i64
  %397 = icmp ult i64 %396, 8
  br i1 %397, label %398, label %476

398:                                              ; preds = %394
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 0
  %401 = load i32*, i32** %400, align 8
  %402 = load i32, i32* %8, align 4
  %403 = zext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %405)
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 0
  %409 = load i32*, i32** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = zext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = call %struct.TYPE_6__* @cpuid_leaf2_find(i32 %413)
  store %struct.TYPE_6__* %414, %struct.TYPE_6__** %21, align 8
  %415 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %416 = icmp eq %struct.TYPE_6__* %415, null
  br i1 %416, label %417, label %418

417:                                              ; preds = %398
  br label %473

418:                                              ; preds = %398
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  switch i32 %421, label %472 [
    i32 128, label %422
    i32 129, label %466
  ]

422:                                              ; preds = %418
  %423 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @SMALL, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %430

428:                                              ; preds = %422
  %429 = load i32, i32* @TLB_SMALL, align 4
  br label %432

430:                                              ; preds = %422
  %431 = load i32, i32* @TLB_LARGE, align 4
  br label %432

432:                                              ; preds = %430, %428
  %433 = phi i32 [ %429, %428 ], [ %431, %430 ]
  store i32 %433, i32* %24, align 4
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  switch i32 %436, label %441 [
    i32 130, label %437
    i32 133, label %439
    i32 132, label %439
    i32 131, label %439
  ]

437:                                              ; preds = %432
  %438 = load i32, i32* @TLB_INST, align 4
  store i32 %438, i32* %22, align 4
  br label %442

439:                                              ; preds = %432, %432, %432
  %440 = load i32, i32* @TLB_DATA, align 4
  store i32 %440, i32* %22, align 4
  br label %442

441:                                              ; preds = %432
  br label %473

442:                                              ; preds = %439, %437
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  switch i32 %445, label %447 [
    i32 131, label %446
  ]

446:                                              ; preds = %442
  store i32 1, i32* %23, align 4
  br label %448

447:                                              ; preds = %442
  store i32 0, i32* %23, align 4
  br label %448

448:                                              ; preds = %447, %446
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 11
  %454 = load i32***, i32**** %453, align 8
  %455 = load i32, i32* %22, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32**, i32*** %454, i64 %456
  %458 = load i32**, i32*** %457, align 8
  %459 = load i32, i32* %24, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32*, i32** %458, i64 %460
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* %23, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %451, i32* %465, align 4
  br label %472

466:                                              ; preds = %418
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 10
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %466, %418, %448
  br label %473

473:                                              ; preds = %472, %441, %417
  %474 = load i32, i32* %8, align 4
  %475 = add i32 %474, 1
  store i32 %475, i32* %8, align 4
  br label %394

476:                                              ; preds = %394
  %477 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %478 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %478)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBG(i8*, ...) #2

declare dso_local i32 @bzero(i32*, i32) #2

declare dso_local i32 @cpuid_fn(i32, i32*) #2

declare dso_local i32 @cpuid(i32*) #2

declare dso_local i8* @bitfield32(i32, i32, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local %struct.TYPE_6__* @cpuid_leaf2_find(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
