; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactTcp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatTransactTcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32, i32, i32, %struct.TYPE_21__*, i32, i32*, i32, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"LH_NAT_TCP_SUCCEED\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"LH_NAT_TCP_FAILED\00", align 1
@SOCK_LATER = common dso_local global i32 0, align 4
@NAT_SEND_BUF_SIZE = common dso_local global i64 0, align 8
@NAT_TMPBUF_SIZE = common dso_local global i32 0, align 4
@VIRTUAL_TCP_SEND_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NatTransactTcp(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %15 = load i32, i32* @MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = icmp eq %struct.TYPE_17__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = icmp eq %struct.TYPE_18__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %322

25:                                               ; preds = %21
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 17
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %318

31:                                               ; preds = %25
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %288 [
    i32 130, label %35
    i32 131, label %116
    i32 128, label %117
    i32 129, label %118
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 15
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = call i32 @CreateNatTcpConnectThread(%struct.TYPE_17__* %41, %struct.TYPE_18__* %42)
  br label %115

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 14
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %114

54:                                               ; preds = %49, %44
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 15
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @INFINITE, align 4
  %59 = call i32 @WaitThread(i32* %57, i32 %58)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 15
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ReleaseThread(i32* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 15
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %54
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32 131, i32* %72, align 8
  %73 = trunc i64 %16 to i32
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @IPToStr32(i8* %18, i32 %73, i32 %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.TYPE_17__*, i8*, i32, i8*, i8*, ...) @NLog(%struct.TYPE_17__* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %81, i8* %88, i8* %18, i32 %91)
  br label %111

93:                                               ; preds = %54
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 128, i32* %95, align 8
  %96 = trunc i64 %16 to i32
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IPToStr32(i8* %18, i32 %96, i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 (%struct.TYPE_17__*, i8*, i32, i8*, i8*, ...) @NLog(%struct.TYPE_17__* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %104, i8* %18, i8* %109)
  br label %111

111:                                              ; preds = %93, %70
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %49
  br label %115

115:                                              ; preds = %114, %40
  br label %288

116:                                              ; preds = %31
  br label %288

117:                                              ; preds = %31
  br label %288

118:                                              ; preds = %31
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %170, %118
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 13
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %171

126:                                              ; preds = %119
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 13
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 13
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %135, i64 %141
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 13
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Send(%struct.TYPE_20__* %129, i32* %142, i32 %147, i32 0)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %126
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %171

156:                                              ; preds = %126
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @SOCK_LATER, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %171

161:                                              ; preds = %156
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 13
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @ReadFifo(%struct.TYPE_21__* %164, i32* null, i32 %165)
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  store i32 1, i32* %168, align 8
  br label %169

169:                                              ; preds = %161
  br label %170

170:                                              ; preds = %169
  br label %119

171:                                              ; preds = %160, %151, %119
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = call i32 @FifoSize(%struct.TYPE_19__* %174)
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %248, %171
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to i8*
  store i8* %181, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 7
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @NAT_SEND_BUF_SIZE, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %177
  %190 = load i64, i64* @NAT_SEND_BUF_SIZE, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 7
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub nsw i64 %190, %195
  %197 = load i32, i32* @NAT_TMPBUF_SIZE, align 4
  %198 = call i32 @MIN(i64 %196, i32 %197)
  store i32 %198, i32* %13, align 4
  br label %199

199:                                              ; preds = %189, %177
  %200 = load i32, i32* %13, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 8
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %204, align 8
  %206 = call i32 @SetNoNeedToRead(%struct.TYPE_20__* %205)
  br label %249

207:                                              ; preds = %199
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %209, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @Recv(%struct.TYPE_20__* %210, i8* %211, i32 %212, i32 0)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %233

216:                                              ; preds = %207
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  store i32 1, i32* %218, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %216
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %227, align 8
  %229 = call i32 @Disconnect(%struct.TYPE_20__* %228)
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 3
  store i32 1, i32* %231, align 4
  br label %232

232:                                              ; preds = %225, %216
  br label %249

233:                                              ; preds = %207
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* @SOCK_LATER, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %249

238:                                              ; preds = %233
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 7
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = load i8*, i8** %12, align 8
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @WriteFifo(%struct.TYPE_19__* %241, i8* %242, i32 %243)
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 8
  br label %247

247:                                              ; preds = %238
  br label %248

248:                                              ; preds = %247
  br label %176

249:                                              ; preds = %237, %232, %202
  %250 = load i32, i32* %10, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %249
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = call i32 @FifoSize(%struct.TYPE_19__* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %252
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 4
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %258, %252, %249
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @VIRTUAL_TCP_SEND_TIMEOUT, align 8
  %269 = add nsw i64 %267, %268
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp slt i64 %269, %272
  br i1 %273, label %274, label %287

274:                                              ; preds = %264
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 7
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %276, align 8
  %278 = call i32 @FifoSize(%struct.TYPE_19__* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  store i32 1, i32* %8, align 4
  br label %286

286:                                              ; preds = %285, %280, %274
  br label %287

287:                                              ; preds = %286, %264
  br label %288

288:                                              ; preds = %31, %287, %117, %116, %115
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %291, %294
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp slt i64 %295, %298
  br i1 %299, label %308, label %300

300:                                              ; preds = %288
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = icmp sgt i64 %303, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %300, %288
  store i32 1, i32* %8, align 4
  br label %309

309:                                              ; preds = %308, %300
  %310 = load i32, i32* %8, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %309
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  store i32 128, i32* %314, align 8
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  br label %317

317:                                              ; preds = %312, %309
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %322

318:                                              ; preds = %30
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %321 = call i32 @DeleteNatTcp(%struct.TYPE_17__* %319, %struct.TYPE_18__* %320)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %322

322:                                              ; preds = %318, %317, %24
  %323 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %323)
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CreateNatTcpConnectThread(%struct.TYPE_17__*, %struct.TYPE_18__*) #2

declare dso_local i32 @WaitThread(i32*, i32) #2

declare dso_local i32 @ReleaseThread(i32*) #2

declare dso_local i32 @IPToStr32(i8*, i32, i32) #2

declare dso_local i32 @NLog(%struct.TYPE_17__*, i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @Send(%struct.TYPE_20__*, i32*, i32, i32) #2

declare dso_local i32 @ReadFifo(%struct.TYPE_21__*, i32*, i32) #2

declare dso_local i32 @FifoSize(%struct.TYPE_19__*) #2

declare dso_local i32 @MIN(i64, i32) #2

declare dso_local i32 @SetNoNeedToRead(%struct.TYPE_20__*) #2

declare dso_local i32 @Recv(%struct.TYPE_20__*, i8*, i32, i32) #2

declare dso_local i32 @Disconnect(%struct.TYPE_20__*) #2

declare dso_local i32 @WriteFifo(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i32 @DeleteNatTcp(%struct.TYPE_17__*, %struct.TYPE_18__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
