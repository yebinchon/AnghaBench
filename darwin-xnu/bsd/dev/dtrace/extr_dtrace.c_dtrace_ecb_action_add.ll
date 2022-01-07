; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_action_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_action_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_20__* }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERNELBASE = common dso_local global i32 0, align 4
@DIF_TYPE_STRING = common dso_local global i32 0, align 4
@DIF_TF_BYREF = common dso_local global i32 0, align 4
@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_STACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKSTRSIZE = common dso_local global i64 0, align 8
@DTRACEOPT_JSTACKFRAMES = common dso_local global i64 0, align 8
@DTRACEOPT_USTACKFRAMES = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_22__*)* @dtrace_ecb_action_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_ecb_action_add(%struct.TYPE_19__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 4, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %14, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %35 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = icmp eq %struct.TYPE_21__* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br label %47

47:                                               ; preds = %40, %2
  %48 = phi i1 [ true, %2 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @DTRACEACT_ISAGG(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %47
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  store %struct.TYPE_21__* %59, %struct.TYPE_21__** %19, align 8
  br label %60

60:                                               ; preds = %78, %56
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 151
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %3, align 4
  br label %504

70:                                               ; preds = %63
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 138
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %3, align 4
  br label %504

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %80, align 8
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %19, align 8
  br label %60

82:                                               ; preds = %60
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %85 = call %struct.TYPE_21__* @dtrace_ecb_aggregation_create(%struct.TYPE_19__* %83, %struct.TYPE_22__* %84)
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %6, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = icmp eq %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @EINVAL, align 4
  store i32 %89, i32* %3, align 4
  br label %504

90:                                               ; preds = %82
  br label %408

91:                                               ; preds = %47
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @DTRACEACT_ISDESTRUCTIVE(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 150
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = icmp ne %struct.TYPE_20__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %91
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %105, %102, %97
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  switch i32 %116, label %371 [
    i32 140, label %117
    i32 141, label %117
    i32 134, label %117
    i32 147, label %117
    i32 150, label %117
    i32 145, label %150
    i32 133, label %150
    i32 132, label %150
    i32 154, label %150
    i32 137, label %185
    i32 146, label %203
    i32 129, label %225
    i32 135, label %260
    i32 144, label %260
    i32 128, label %281
    i32 130, label %281
    i32 131, label %281
    i32 136, label %302
    i32 153, label %302
    i32 143, label %302
    i32 152, label %303
    i32 149, label %303
    i32 139, label %303
    i32 142, label %303
    i32 148, label %309
    i32 138, label %330
    i32 151, label %346
  ]

117:                                              ; preds = %113, %113, %113, %113, %113
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 141
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 150
  br label %130

130:                                              ; preds = %125, %120
  %131 = phi i1 [ true, %120 ], [ %129, %125 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  store i8* null, i8** %12, align 8
  br label %149

134:                                              ; preds = %117
  %135 = load i32, i32* %18, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @ASSERT(i32 %137)
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @KERNELBASE, align 4
  %141 = icmp sgt i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @ASSERT(i32 %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i8* @dtrace_format_add(%struct.TYPE_17__* %144, i8* %147)
  store i8* %148, i8** %12, align 8
  br label %149

149:                                              ; preds = %134, %130
  br label %150

150:                                              ; preds = %113, %113, %113, %113, %149
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = icmp eq %struct.TYPE_20__* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* @EINVAL, align 4
  store i32 %154, i32* %3, align 4
  br label %504

155:                                              ; preds = %150
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  store i32 %159, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %373

162:                                              ; preds = %155
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DIF_TYPE_STRING, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DIF_TF_BYREF, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @EINVAL, align 4
  store i32 %178, i32* %3, align 4
  br label %504

179:                                              ; preds = %169
  %180 = load i32*, i32** %15, align 8
  %181 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %179, %162
  br label %373

185:                                              ; preds = %113
  %186 = load i32, i32* %18, align 4
  store i32 %186, i32* %16, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %185
  %189 = load i32*, i32** %15, align 8
  %190 = load i64, i64* @DTRACEOPT_STACKFRAMES, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp sgt i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @ASSERT(i32 %195)
  %197 = load i32, i32* %16, align 4
  store i32 %197, i32* %18, align 4
  br label %198

198:                                              ; preds = %188, %185
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %9, align 4
  br label %373

203:                                              ; preds = %113
  %204 = load i32, i32* %18, align 4
  %205 = call i32 @DTRACE_USTACK_STRSIZE(i32 %204)
  store i32 %205, i32* %17, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load i32*, i32** %15, align 8
  %209 = load i64, i64* @DTRACEOPT_JSTACKSTRSIZE, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %17, align 4
  br label %212

212:                                              ; preds = %207, %203
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @DTRACE_USTACK_NFRAMES(i32 %213)
  store i32 %214, i32* %16, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i32*, i32** %15, align 8
  %218 = load i64, i64* @DTRACEOPT_JSTACKFRAMES, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %16, align 4
  br label %221

221:                                              ; preds = %216, %212
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @DTRACE_USTACK_ARG(i32 %222, i32 %223)
  store i32 %224, i32* %18, align 4
  br label %225

225:                                              ; preds = %113, %221
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 146
  br i1 %229, label %230, label %248

230:                                              ; preds = %225
  %231 = load i32, i32* %18, align 4
  %232 = call i32 @DTRACE_USTACK_NFRAMES(i32 %231)
  store i32 %232, i32* %16, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %230
  %235 = load i32, i32* %18, align 4
  %236 = call i32 @DTRACE_USTACK_STRSIZE(i32 %235)
  store i32 %236, i32* %17, align 4
  %237 = load i32*, i32** %15, align 8
  %238 = load i64, i64* @DTRACEOPT_USTACKFRAMES, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* %16, align 4
  %242 = icmp sgt i32 %241, 0
  %243 = zext i1 %242 to i32
  %244 = call i32 @ASSERT(i32 %243)
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* %17, align 4
  %247 = call i32 @DTRACE_USTACK_ARG(i32 %245, i32 %246)
  store i32 %247, i32* %18, align 4
  br label %248

248:                                              ; preds = %234, %230, %225
  %249 = load i32, i32* %16, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = mul i64 %251, 4
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %18, align 4
  %255 = call i32 @DTRACE_USTACK_STRSIZE(i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = call i32 @P2ROUNDUP(i32 %258, i32 8)
  store i32 %259, i32* %9, align 4
  br label %373

260:                                              ; preds = %113, %113
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %262 = icmp eq %struct.TYPE_20__* %261, null
  br i1 %262, label %278, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  store i32 %267, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp ne i64 %268, 4
  br i1 %269, label %278, label %270

270:                                              ; preds = %263
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @DIF_TF_BYREF, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270, %263, %260
  %279 = load i32, i32* @EINVAL, align 4
  store i32 %279, i32* %3, align 4
  br label %504

280:                                              ; preds = %270
  br label %373

281:                                              ; preds = %113, %113, %113
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %283 = icmp eq %struct.TYPE_20__* %282, null
  br i1 %283, label %299, label %284

284:                                              ; preds = %281
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = icmp ne i64 %289, 4
  br i1 %290, label %299, label %291

291:                                              ; preds = %284
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @DIF_TF_BYREF, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %291, %284, %281
  %300 = load i32, i32* @EINVAL, align 4
  store i32 %300, i32* %3, align 4
  br label %504

301:                                              ; preds = %291
  store i32 8, i32* %9, align 4
  br label %373

302:                                              ; preds = %113, %113, %113
  br label %373

303:                                              ; preds = %113, %113, %113, %113
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %305 = icmp eq %struct.TYPE_20__* %304, null
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* @EINVAL, align 4
  store i32 %307, i32* %3, align 4
  br label %504

308:                                              ; preds = %303
  br label %373

309:                                              ; preds = %113
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %311 = icmp eq %struct.TYPE_20__* %310, null
  br i1 %311, label %327, label %312

312:                                              ; preds = %309
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  store i32 %316, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = icmp ne i64 %317, 4
  br i1 %318, label %327, label %319

319:                                              ; preds = %312
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @DIF_TF_BYREF, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %319, %312, %309
  %328 = load i32, i32* @EINVAL, align 4
  store i32 %328, i32* %3, align 4
  br label %504

329:                                              ; preds = %319
  br label %373

330:                                              ; preds = %113
  %331 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = icmp ugt i64 %334, 4
  br i1 %335, label %336, label %338

336:                                              ; preds = %330
  %337 = load i32, i32* @EINVAL, align 4
  store i32 %337, i32* %3, align 4
  br label %504

338:                                              ; preds = %330
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %340 = icmp eq %struct.TYPE_20__* %339, null
  br i1 %340, label %341, label %343

341:                                              ; preds = %338
  %342 = load i32, i32* @EINVAL, align 4
  store i32 %342, i32* %3, align 4
  br label %504

343:                                              ; preds = %338
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %344, i32 0, i32 2
  store i32 1, i32* %345, align 4
  br label %373

346:                                              ; preds = %113
  %347 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %347, i32 0, i32 2
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %348, align 8
  store %struct.TYPE_21__* %349, %struct.TYPE_21__** %20, align 8
  br label %350

350:                                              ; preds = %361, %346
  %351 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %352 = icmp ne %struct.TYPE_21__* %351, null
  br i1 %352, label %353, label %365

353:                                              ; preds = %350
  %354 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp eq i64 %356, 151
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = load i32, i32* @EINVAL, align 4
  store i32 %359, i32* %3, align 4
  br label %504

360:                                              ; preds = %353
  br label %361

361:                                              ; preds = %360
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %363, align 8
  store %struct.TYPE_21__* %364, %struct.TYPE_21__** %20, align 8
  br label %350

365:                                              ; preds = %350
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %367 = icmp eq %struct.TYPE_20__* %366, null
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = load i32, i32* @EINVAL, align 4
  store i32 %369, i32* %3, align 4
  br label %504

370:                                              ; preds = %365
  br label %373

371:                                              ; preds = %113
  %372 = load i32, i32* @EINVAL, align 4
  store i32 %372, i32* %3, align 4
  br label %504

373:                                              ; preds = %370, %343, %329, %308, %302, %301, %280, %248, %198, %184, %161
  %374 = load i32, i32* %9, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %381, label %376

376:                                              ; preds = %373
  %377 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 138
  br i1 %380, label %381, label %401

381:                                              ; preds = %376, %373
  %382 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %382, i32 0, i32 2
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %383, align 8
  store %struct.TYPE_21__* %384, %struct.TYPE_21__** %21, align 8
  br label %385

385:                                              ; preds = %396, %381
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %387 = icmp ne %struct.TYPE_21__* %386, null
  br i1 %387, label %388, label %400

388:                                              ; preds = %385
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 151
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = load i32, i32* @EINVAL, align 4
  store i32 %394, i32* %3, align 4
  br label %504

395:                                              ; preds = %388
  br label %396

396:                                              ; preds = %395
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %398 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %397, i32 0, i32 2
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %398, align 8
  store %struct.TYPE_21__* %399, %struct.TYPE_21__** %21, align 8
  br label %385

400:                                              ; preds = %385
  br label %401

401:                                              ; preds = %400, %376
  %402 = load i32, i32* @KM_SLEEP, align 4
  %403 = call %struct.TYPE_21__* @kmem_zalloc(i32 80, i32 %402)
  store %struct.TYPE_21__* %403, %struct.TYPE_21__** %6, align 8
  %404 = load i32, i32* %9, align 4
  %405 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 0
  store i32 %404, i32* %407, align 8
  br label %408

408:                                              ; preds = %401, %90
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  store i32 1, i32* %410, align 8
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 5
  store %struct.TYPE_18__* %412, %struct.TYPE_18__** %13, align 8
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  store i32 %415, i32* %9, align 4
  store i32 3, i32* %11, align 4
  br label %416

416:                                              ; preds = %433, %408
  %417 = load i32, i32* %9, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load i32, i32* %11, align 4
  %421 = icmp sgt i32 %420, 0
  br label %422

422:                                              ; preds = %419, %416
  %423 = phi i1 [ false, %416 ], [ %421, %419 ]
  br i1 %423, label %424, label %436

424:                                              ; preds = %422
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* %11, align 4
  %427 = and i32 %425, %426
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %424
  %430 = load i32, i32* %11, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %436

432:                                              ; preds = %424
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %11, align 4
  %435 = ashr i32 %434, 1
  store i32 %435, i32* %11, align 4
  br label %416

436:                                              ; preds = %429, %422
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 1
  store i64 %440, i64* %442, align 8
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 4
  store %struct.TYPE_20__* %443, %struct.TYPE_20__** %445, align 8
  %446 = icmp ne %struct.TYPE_20__* %443, null
  br i1 %446, label %447, label %450

447:                                              ; preds = %436
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %449 = call i32 @dtrace_difo_hold(%struct.TYPE_20__* %448)
  br label %450

450:                                              ; preds = %447, %436
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = trunc i64 %453 to i32
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %456 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %455, i32 0, i32 1
  store i32 %454, i32* %456, align 4
  %457 = load i32, i32* %18, align 4
  %458 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %458, i32 0, i32 2
  store i32 %457, i32* %459, align 8
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 5
  store i32 %462, i32* %464, align 8
  %465 = load i32, i32* %10, align 4
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to i8*
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 4
  store i8* %467, i8** %469, align 8
  %470 = load i8*, i8** %12, align 8
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %472 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %471, i32 0, i32 3
  store i8* %470, i8** %472, align 8
  %473 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %474, align 8
  store %struct.TYPE_21__* %475, %struct.TYPE_21__** %7, align 8
  %476 = icmp ne %struct.TYPE_21__* %475, null
  br i1 %476, label %477, label %490

477:                                              ; preds = %450
  %478 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_21__*, %struct.TYPE_21__** %479, align 8
  %481 = icmp ne %struct.TYPE_21__* %480, null
  %482 = zext i1 %481 to i32
  %483 = call i32 @ASSERT(i32 %482)
  %484 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 3
  store %struct.TYPE_21__* %484, %struct.TYPE_21__** %486, align 8
  %487 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 2
  store %struct.TYPE_21__* %487, %struct.TYPE_21__** %489, align 8
  br label %500

490:                                              ; preds = %450
  %491 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 2
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %492, align 8
  %494 = icmp eq %struct.TYPE_21__* %493, null
  %495 = zext i1 %494 to i32
  %496 = call i32 @ASSERT(i32 %495)
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %498 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 2
  store %struct.TYPE_21__* %497, %struct.TYPE_21__** %499, align 8
  br label %500

500:                                              ; preds = %490, %477
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 1
  store %struct.TYPE_21__* %501, %struct.TYPE_21__** %503, align 8
  store i32 0, i32* %3, align 4
  br label %504

504:                                              ; preds = %500, %393, %371, %368, %358, %341, %336, %327, %306, %299, %278, %177, %153, %88, %75, %68
  %505 = load i32, i32* %3, align 4
  ret i32 %505
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @DTRACEACT_ISAGG(i32) #1

declare dso_local %struct.TYPE_21__* @dtrace_ecb_aggregation_create(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i64 @DTRACEACT_ISDESTRUCTIVE(i32) #1

declare dso_local i8* @dtrace_format_add(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @DTRACE_USTACK_STRSIZE(i32) #1

declare dso_local i32 @DTRACE_USTACK_NFRAMES(i32) #1

declare dso_local i32 @DTRACE_USTACK_ARG(i32, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local %struct.TYPE_21__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dtrace_difo_hold(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
