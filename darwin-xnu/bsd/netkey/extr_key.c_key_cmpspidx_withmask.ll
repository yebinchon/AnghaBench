; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpspidx_withmask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_cmpspidx_withmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicyindex = type { i64, %struct.TYPE_10__, i32, %struct.TYPE_10__, %struct.TYPE_12__, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@IPSEC_ULPROTO_ANY = common dso_local global i64 0, align 8
@IPSEC_PORT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secpolicyindex*, %struct.secpolicyindex*)* @key_cmpspidx_withmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpspidx_withmask(%struct.secpolicyindex* %0, %struct.secpolicyindex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicyindex*, align 8
  %5 = alloca %struct.secpolicyindex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.secpolicyindex* %0, %struct.secpolicyindex** %4, align 8
  store %struct.secpolicyindex* %1, %struct.secpolicyindex** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %9 = icmp eq %struct.secpolicyindex* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %12 = icmp eq %struct.secpolicyindex* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %543

14:                                               ; preds = %10, %2
  %15 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %16 = icmp eq %struct.secpolicyindex* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %19 = icmp eq %struct.secpolicyindex* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14
  store i32 0, i32* %3, align 4
  br label %543

21:                                               ; preds = %17
  %22 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %23 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %31 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %42 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %48 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i64 [ %45, %40 ], [ %50, %46 ]
  %53 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %54 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %121, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %63 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %69 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %67, %61
  %73 = phi i64 [ %66, %61 ], [ %71, %67 ]
  %74 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %75 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %73, %77
  br i1 %78, label %121, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %84 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  br label %93

88:                                               ; preds = %79
  %89 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %90 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i64 [ %87, %82 ], [ %92, %88 ]
  %95 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %96 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %94, %98
  br i1 %99, label %121, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %105 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  br label %114

109:                                              ; preds = %100
  %110 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %111 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  br label %114

114:                                              ; preds = %109, %103
  %115 = phi i64 [ %108, %103 ], [ %113, %109 ]
  %116 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %117 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %115, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %93, %72, %51
  store i32 0, i32* %3, align 4
  br label %543

122:                                              ; preds = %114
  %123 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %124 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IPSEC_ULPROTO_ANY, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %130 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %133 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %543

137:                                              ; preds = %128, %122
  %138 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %139 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %138, i32 0, i32 7
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %269

142:                                              ; preds = %137
  %143 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %144 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %143, i32 0, i32 7
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %149 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %148, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %152 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %151, i32 0, i32 7
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147, %142
  store i32 0, i32* %3, align 4
  br label %543

156:                                              ; preds = %147
  %157 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %158 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  switch i64 %160, label %267 [
    i64 129, label %161
    i64 128, label %214
  ]

161:                                              ; preds = %156
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %161
  %165 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %166 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %165, i32 0, i32 3
  %167 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %166)
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %171 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %172)
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %169, %175
  br i1 %176, label %190, label %177

177:                                              ; preds = %164
  %178 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %179 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %178, i32 0, i32 3
  %180 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %179)
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %184 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %185)
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %182, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %177, %164
  store i32 0, i32* %3, align 4
  br label %543

191:                                              ; preds = %177, %161
  %192 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %193 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %192, i32 0, i32 3
  %194 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %193)
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %191
  %200 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %201 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %200, i32 0, i32 3
  %202 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %201)
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %206 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %205, i32 0, i32 3
  %207 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %206)
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %204, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %199
  store i32 0, i32* %3, align 4
  br label %543

212:                                              ; preds = %199, %191
  br label %213

213:                                              ; preds = %212
  br label %268

214:                                              ; preds = %156
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %219 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %218, i32 0, i32 3
  %220 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %219)
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %224 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %225)
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %222, %228
  br i1 %229, label %243, label %230

230:                                              ; preds = %217
  %231 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %232 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %231, i32 0, i32 3
  %233 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %232)
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %237 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %238)
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = icmp sgt i32 %235, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %230, %217
  store i32 0, i32* %3, align 4
  br label %543

244:                                              ; preds = %230, %214
  %245 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %246 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %245, i32 0, i32 3
  %247 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %246)
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %251 = icmp ne i32 %249, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %244
  %253 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %254 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %253, i32 0, i32 3
  %255 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %254)
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %259 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %258, i32 0, i32 3
  %260 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %259)
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %257, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %252
  store i32 0, i32* %3, align 4
  br label %543

265:                                              ; preds = %252, %244
  br label %266

266:                                              ; preds = %265
  br label %268

267:                                              ; preds = %156
  br label %268

268:                                              ; preds = %267, %266, %213
  br label %406

269:                                              ; preds = %137
  %270 = load i32, i32* %6, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %269
  %273 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %274 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %273, i32 0, i32 3
  %275 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %276 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %275, i32 0, i32 6
  %277 = call i32 @key_is_addr_in_range(%struct.TYPE_10__* %274, %struct.TYPE_12__* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %272
  store i32 0, i32* %3, align 4
  br label %543

280:                                              ; preds = %272
  br label %405

281:                                              ; preds = %269
  %282 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %283 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  switch i64 %285, label %391 [
    i64 129, label %286
    i64 128, label %325
  ]

286:                                              ; preds = %281
  %287 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %288 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %287, i32 0, i32 3
  %289 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %288)
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %286
  %295 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %296 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %295, i32 0, i32 3
  %297 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %296)
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %301 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %300, i32 0, i32 3
  %302 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %301)
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %299, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  store i32 0, i32* %3, align 4
  br label %543

307:                                              ; preds = %294, %286
  %308 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %309 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %308, i32 0, i32 3
  %310 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %309)
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = ptrtoint i32* %311 to i32
  %313 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %314 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %313, i32 0, i32 3
  %315 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %314)
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = ptrtoint i32* %316 to i32
  %318 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %319 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @key_bbcmp(i32 %312, i32 %317, i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %307
  store i32 0, i32* %3, align 4
  br label %543

324:                                              ; preds = %307
  br label %404

325:                                              ; preds = %281
  %326 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %327 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %326, i32 0, i32 3
  %328 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %327)
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %346

333:                                              ; preds = %325
  %334 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %335 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %334, i32 0, i32 3
  %336 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %335)
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %340 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %339, i32 0, i32 3
  %341 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %340)
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %338, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %333
  store i32 0, i32* %3, align 4
  br label %543

346:                                              ; preds = %333, %325
  %347 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %348 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %347, i32 0, i32 3
  %349 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %348)
  %350 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %373

353:                                              ; preds = %346
  %354 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %355 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %354, i32 0, i32 3
  %356 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %355)
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %353
  %361 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %362 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %361, i32 0, i32 3
  %363 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %362)
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %367 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %366, i32 0, i32 3
  %368 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %367)
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %365, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %360
  store i32 0, i32* %3, align 4
  br label %543

373:                                              ; preds = %360, %353, %346
  %374 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %375 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %374, i32 0, i32 3
  %376 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %375)
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 0
  %378 = ptrtoint i32* %377 to i32
  %379 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %380 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %379, i32 0, i32 3
  %381 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %380)
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 0
  %383 = ptrtoint i32* %382 to i32
  %384 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %385 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %384, i32 0, i32 5
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @key_bbcmp(i32 %378, i32 %383, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %373
  store i32 0, i32* %3, align 4
  br label %543

390:                                              ; preds = %373
  br label %404

391:                                              ; preds = %281
  %392 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %393 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %392, i32 0, i32 3
  %394 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %395 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %394, i32 0, i32 3
  %396 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %397 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %396, i32 0, i32 3
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = call i32 @bcmp(%struct.TYPE_10__* %393, %struct.TYPE_10__* %395, i64 %399)
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %391
  store i32 0, i32* %3, align 4
  br label %543

403:                                              ; preds = %391
  br label %404

404:                                              ; preds = %403, %390, %324
  br label %405

405:                                              ; preds = %404, %280
  br label %406

406:                                              ; preds = %405, %268
  %407 = load i32, i32* %7, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %406
  %410 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %411 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %410, i32 0, i32 1
  %412 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %413 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %412, i32 0, i32 4
  %414 = call i32 @key_is_addr_in_range(%struct.TYPE_10__* %411, %struct.TYPE_12__* %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %409
  store i32 0, i32* %3, align 4
  br label %543

417:                                              ; preds = %409
  br label %542

418:                                              ; preds = %406
  %419 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %420 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  switch i64 %422, label %528 [
    i64 129, label %423
    i64 128, label %462
  ]

423:                                              ; preds = %418
  %424 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %425 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %424, i32 0, i32 1
  %426 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %425)
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %444

431:                                              ; preds = %423
  %432 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %433 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %432, i32 0, i32 1
  %434 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %433)
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %438 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %437, i32 0, i32 1
  %439 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %438)
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %436, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %431
  store i32 0, i32* %3, align 4
  br label %543

444:                                              ; preds = %431, %423
  %445 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %446 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %445, i32 0, i32 1
  %447 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %446)
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 0
  %449 = ptrtoint i32* %448 to i32
  %450 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %451 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %450, i32 0, i32 1
  %452 = call %struct.TYPE_11__* @satosin(%struct.TYPE_10__* %451)
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 0
  %454 = ptrtoint i32* %453 to i32
  %455 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %456 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = call i32 @key_bbcmp(i32 %449, i32 %454, i32 %457)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %461, label %460

460:                                              ; preds = %444
  store i32 0, i32* %3, align 4
  br label %543

461:                                              ; preds = %444
  br label %541

462:                                              ; preds = %418
  %463 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %464 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %463, i32 0, i32 1
  %465 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %464)
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* @IPSEC_PORT_ANY, align 4
  %469 = icmp ne i32 %467, %468
  br i1 %469, label %470, label %483

470:                                              ; preds = %462
  %471 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %472 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %471, i32 0, i32 1
  %473 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %472)
  %474 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %477 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %476, i32 0, i32 1
  %478 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %477)
  %479 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = icmp ne i32 %475, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %470
  store i32 0, i32* %3, align 4
  br label %543

483:                                              ; preds = %470, %462
  %484 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %485 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %484, i32 0, i32 3
  %486 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %485)
  %487 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %510

490:                                              ; preds = %483
  %491 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %492 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %491, i32 0, i32 3
  %493 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %492)
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %510

497:                                              ; preds = %490
  %498 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %499 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %498, i32 0, i32 1
  %500 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %499)
  %501 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %504 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %503, i32 0, i32 1
  %505 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %504)
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = icmp ne i32 %502, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %497
  store i32 0, i32* %3, align 4
  br label %543

510:                                              ; preds = %497, %490, %483
  %511 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %512 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %511, i32 0, i32 1
  %513 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %512)
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 0
  %515 = ptrtoint i32* %514 to i32
  %516 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %517 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %516, i32 0, i32 1
  %518 = call %struct.TYPE_9__* @satosin6(%struct.TYPE_10__* %517)
  %519 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %518, i32 0, i32 0
  %520 = ptrtoint i32* %519 to i32
  %521 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %522 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 8
  %524 = call i32 @key_bbcmp(i32 %515, i32 %520, i32 %523)
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %510
  store i32 0, i32* %3, align 4
  br label %543

527:                                              ; preds = %510
  br label %541

528:                                              ; preds = %418
  %529 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %530 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %529, i32 0, i32 1
  %531 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %532 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %531, i32 0, i32 1
  %533 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %534 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = call i32 @bcmp(%struct.TYPE_10__* %530, %struct.TYPE_10__* %532, i64 %536)
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %528
  store i32 0, i32* %3, align 4
  br label %543

540:                                              ; preds = %528
  br label %541

541:                                              ; preds = %540, %527, %461
  br label %542

542:                                              ; preds = %541, %417
  store i32 1, i32* %3, align 4
  br label %543

543:                                              ; preds = %542, %539, %526, %509, %482, %460, %443, %416, %402, %389, %372, %345, %323, %306, %279, %264, %243, %211, %190, %155, %136, %121, %20, %13
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

declare dso_local %struct.TYPE_11__* @satosin(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @satosin6(%struct.TYPE_10__*) #1

declare dso_local i32 @key_is_addr_in_range(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @key_bbcmp(i32, i32, i32) #1

declare dso_local i32 @bcmp(%struct.TYPE_10__*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
