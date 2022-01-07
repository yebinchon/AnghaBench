; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_opaque_pointer_f.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_subs.c_nfsm_chain_get_opaque_pointer_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsm_chain = type { i8*, i64, i32* }

@EBADRPC = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsm_chain_get_opaque_pointer_f(%struct.nfsm_chain* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsm_chain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.nfsm_chain* %0, %struct.nfsm_chain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %40, %3
  %18 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %19 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %24 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %50

29:                                               ; preds = %27
  %30 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %31 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @mbuf_next(i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %36 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %50

40:                                               ; preds = %29
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @mbuf_data(i8* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %45 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = call i64 @mbuf_len(i8* %46)
  %48 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %49 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %17

50:                                               ; preds = %39, %27
  %51 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %52 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EBADRPC, align 4
  store i32 %56, i32* %4, align 4
  br label %270

57:                                               ; preds = %50
  %58 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %59 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %65 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %7, align 8
  store i32* %66, i32** %67, align 8
  %68 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @nfsm_rndup(i64 %69)
  %71 = call i32 @nfsm_chain_advance(%struct.nfsm_chain* %68, i64 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %4, align 4
  br label %270

73:                                               ; preds = %57
  %74 = load i64, i64* %6, align 8
  %75 = call i64 @nfsm_rndup(i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %14, align 8
  %78 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %79 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %8, align 8
  %81 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %82 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %84, %85
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @mbuf_trailingspace(i8* %88)
  %90 = icmp sgt i64 %87, %89
  br i1 %90, label %91, label %157

91:                                               ; preds = %73
  %92 = load i32, i32* %16, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @nfsm_mbuf_get(i32 %92, i8** %9, i64 %93)
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %4, align 4
  br label %270

99:                                               ; preds = %91
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @mbuf_maxlen(i8* %100)
  %102 = load i64, i64* %6, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @mbuf_free(i8* %105)
  %107 = load i32, i32* @EOVERFLOW, align 4
  store i32 %107, i32* %4, align 4
  br label %270

108:                                              ; preds = %99
  %109 = load i8*, i8** %9, align 8
  %110 = call i8* @mbuf_data(i8* %109)
  %111 = bitcast i8* %110 to i32*
  store i32* %111, i32** %15, align 8
  %112 = load i32**, i32*** %7, align 8
  store i32* %111, i32** %112, align 8
  %113 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %114 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @bcopy(i32* %115, i32* %116, i64 %117)
  %119 = load i64, i64* %10, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 %119
  store i32* %121, i32** %15, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @mbuf_setlen(i8* %122, i64 %123)
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i8* @mbuf_next(i8* %126)
  %128 = call i32 @mbuf_setnext(i8* %125, i8* %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %108
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @mbuf_setnext(i8* %132, i8* %133)
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %131, %108
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @mbuf_free(i8* %139)
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %4, align 4
  br label %270

142:                                              ; preds = %135
  %143 = load i8*, i8** %8, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i64 @mbuf_len(i8* %144)
  %146 = load i64, i64* %10, align 8
  %147 = sub nsw i64 %145, %146
  %148 = call i32 @mbuf_setlen(i8* %143, i64 %147)
  %149 = load i8*, i8** %9, align 8
  store i8* %149, i8** %8, align 8
  %150 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %151 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %150, i32 0, i32 0
  store i8* %149, i8** %151, align 8
  %152 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %153 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %156 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %155, i32 0, i32 2
  store i32* %154, i32** %156, align 8
  br label %169

157:                                              ; preds = %73
  %158 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %159 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32**, i32*** %7, align 8
  store i32* %160, i32** %161, align 8
  %162 = load i64, i64* %10, align 8
  %163 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %164 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 %162
  store i32* %166, i32** %164, align 8
  %167 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %168 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %167, i32 0, i32 1
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %157, %142
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @mbuf_len(i8* %171)
  %173 = load i64, i64* %11, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @mbuf_setlen(i8* %170, i64 %174)
  %176 = load i8*, i8** %8, align 8
  %177 = call i8* @mbuf_next(i8* %176)
  store i8* %177, i8** %9, align 8
  br label %178

178:                                              ; preds = %237, %169
  %179 = load i64, i64* %11, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8*, i8** %9, align 8
  %183 = icmp ne i8* %182, null
  br label %184

184:                                              ; preds = %181, %178
  %185 = phi i1 [ false, %178 ], [ %183, %181 ]
  br i1 %185, label %186, label %238

186:                                              ; preds = %184
  %187 = load i8*, i8** %9, align 8
  %188 = call i8* @mbuf_data(i8* %187)
  %189 = bitcast i8* %188 to i32*
  store i32* %189, i32** %15, align 8
  %190 = load i8*, i8** %9, align 8
  %191 = call i64 @mbuf_len(i8* %190)
  store i64 %191, i64* %12, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %11, align 8
  %194 = call i64 @MIN(i64 %192, i64 %193)
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %231

197:                                              ; preds = %186
  %198 = load i32*, i32** %15, align 8
  %199 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %200 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %13, align 8
  %203 = call i32 @bcopy(i32* %198, i32* %201, i64 %202)
  %204 = load i8*, i8** %9, align 8
  %205 = load i32*, i32** %15, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %13, align 8
  %210 = sub nsw i64 %208, %209
  %211 = call i32 @mbuf_setdata(i8* %204, i32* %207, i64 %210)
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %197
  %215 = load i8*, i8** %8, align 8
  %216 = load i8*, i8** %8, align 8
  %217 = call i64 @mbuf_len(i8* %216)
  %218 = load i64, i64* %11, align 8
  %219 = sub nsw i64 %217, %218
  %220 = call i32 @mbuf_setlen(i8* %215, i64 %219)
  %221 = load i32, i32* %16, align 4
  store i32 %221, i32* %4, align 4
  br label %270

222:                                              ; preds = %197
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %225 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 %223
  store i32* %227, i32** %225, align 8
  %228 = load i64, i64* %13, align 8
  %229 = load i64, i64* %11, align 8
  %230 = sub nsw i64 %229, %228
  store i64 %230, i64* %11, align 8
  br label %231

231:                                              ; preds = %222, %186
  %232 = load i64, i64* %11, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i8*, i8** %9, align 8
  %236 = call i8* @mbuf_next(i8* %235)
  store i8* %236, i8** %9, align 8
  br label %237

237:                                              ; preds = %234, %231
  br label %178

238:                                              ; preds = %184
  %239 = load i64, i64* %11, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load i8*, i8** %8, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = call i64 @mbuf_len(i8* %243)
  %245 = load i64, i64* %11, align 8
  %246 = sub nsw i64 %244, %245
  %247 = call i32 @mbuf_setlen(i8* %242, i64 %246)
  %248 = load i32, i32* @EBADRPC, align 4
  store i32 %248, i32* %4, align 4
  br label %270

249:                                              ; preds = %238
  %250 = load i8*, i8** %9, align 8
  %251 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %252 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %251, i32 0, i32 0
  store i8* %250, i8** %252, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = call i8* @mbuf_data(i8* %253)
  %255 = bitcast i8* %254 to i32*
  %256 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %257 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %256, i32 0, i32 2
  store i32* %255, i32** %257, align 8
  %258 = load i8*, i8** %9, align 8
  %259 = call i64 @mbuf_len(i8* %258)
  %260 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %261 = getelementptr inbounds %struct.nfsm_chain, %struct.nfsm_chain* %260, i32 0, i32 1
  store i64 %259, i64* %261, align 8
  %262 = load i64, i64* %14, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %249
  %265 = load %struct.nfsm_chain*, %struct.nfsm_chain** %5, align 8
  %266 = load i64, i64* %14, align 8
  %267 = call i32 @nfsm_chain_advance(%struct.nfsm_chain* %265, i64 %266)
  store i32 %267, i32* %16, align 4
  br label %268

268:                                              ; preds = %264, %249
  %269 = load i32, i32* %16, align 4
  store i32 %269, i32* %4, align 4
  br label %270

270:                                              ; preds = %268, %241, %214, %138, %104, %97, %63, %55
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local i8* @mbuf_next(i8*) #1

declare dso_local i8* @mbuf_data(i8*) #1

declare dso_local i64 @mbuf_len(i8*) #1

declare dso_local i32 @nfsm_chain_advance(%struct.nfsm_chain*, i64) #1

declare dso_local i64 @nfsm_rndup(i64) #1

declare dso_local i64 @mbuf_trailingspace(i8*) #1

declare dso_local i32 @nfsm_mbuf_get(i32, i8**, i64) #1

declare dso_local i64 @mbuf_maxlen(i8*) #1

declare dso_local i32 @mbuf_free(i8*) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @mbuf_setlen(i8*, i64) #1

declare dso_local i32 @mbuf_setnext(i8*, i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @mbuf_setdata(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
