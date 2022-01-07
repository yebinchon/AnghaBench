; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_dequeue_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_dequeue_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)*, i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)*, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i64, i32*)* @ifclassq_dequeue_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifclassq_dequeue_common(%struct.ifclassq* %0, i32 %1, i64 %2, i64 %3, i8** %4, i8** %5, i64* %6, i64* %7, i64 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifclassq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.ifnet*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i8** %4, i8*** %16, align 8
  store i8** %5, i8*** %17, align 8
  store i64* %6, i64** %18, align 8
  store i64* %7, i64** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %31 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %32 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %31, i32 0, i32 2
  %33 = load %struct.ifnet*, %struct.ifnet** %32, align 8
  store %struct.ifnet* %33, %struct.ifnet** %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 1, i64* %25, align 8
  %34 = load i64, i64* %20, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %10
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @MBUF_VALID_SC(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %36, %10
  %41 = phi i1 [ true, %10 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load i32*, i32** %21, align 8
  store i32 0, i32* %44, align 4
  %45 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %46 = call i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %133

49:                                               ; preds = %40
  %50 = load i64, i64* %20, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %54 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %53, i32 0, i32 0
  %55 = load i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)*, i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)** %54, align 8
  %56 = icmp ne i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)* %55, null
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load i64, i64* %25, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %62 = call i32 @IFCQ_LOCK_SPIN(%struct.ifclassq* %61)
  br label %66

63:                                               ; preds = %57
  %64 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %65 = call i32 @IFCQ_LOCK(%struct.ifclassq* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %68 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %67, i32 0, i32 0
  %69 = load i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)*, i32 (%struct.ifclassq*, i32, i64, i64, i8**, i8**, i64*, i64*, i32*)** %68, align 8
  %70 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i8**, i8*** %16, align 8
  %75 = load i8**, i8*** %17, align 8
  %76 = load i64*, i64** %18, align 8
  %77 = load i64*, i64** %19, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 %69(%struct.ifclassq* %70, i32 %71, i64 %72, i64 %73, i8** %74, i8** %75, i64* %76, i64* %77, i32* %78)
  store i32 %79, i32* %28, align 4
  %80 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %81 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %80)
  %82 = load i32, i32* %28, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %66
  %85 = load i8**, i8*** %16, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @EAGAIN, align 4
  store i32 %89, i32* %28, align 4
  br label %90

90:                                               ; preds = %88, %84, %66
  %91 = load i32, i32* %28, align 4
  store i32 %91, i32* %11, align 4
  br label %259

92:                                               ; preds = %52, %49
  %93 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %94 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %93, i32 0, i32 1
  %95 = load i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)*, i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)** %94, align 8
  %96 = icmp ne i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)* %95, null
  br i1 %96, label %97, label %131

97:                                               ; preds = %92
  %98 = load i64, i64* %25, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %102 = call i32 @IFCQ_LOCK_SPIN(%struct.ifclassq* %101)
  br label %106

103:                                              ; preds = %97
  %104 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %105 = call i32 @IFCQ_LOCK(%struct.ifclassq* %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %108 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %107, i32 0, i32 1
  %109 = load i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)*, i32 (%struct.ifclassq*, i64, i64, i8**, i8**, i64*, i64*, i32*)** %108, align 8
  %110 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i8**, i8*** %16, align 8
  %114 = load i8**, i8*** %17, align 8
  %115 = load i64*, i64** %18, align 8
  %116 = load i64*, i64** %19, align 8
  %117 = load i32*, i32** %21, align 8
  %118 = call i32 %109(%struct.ifclassq* %110, i64 %111, i64 %112, i8** %113, i8** %114, i64* %115, i64* %116, i32* %117)
  store i32 %118, i32* %29, align 4
  %119 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %120 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %119)
  %121 = load i32, i32* %29, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %106
  %124 = load i8**, i8*** %16, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @EAGAIN, align 4
  store i32 %128, i32* %29, align 4
  br label %129

129:                                              ; preds = %127, %123, %106
  %130 = load i32, i32* %29, align 4
  store i32 %130, i32* %11, align 4
  br label %259

131:                                              ; preds = %92
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %48
  %134 = load i8**, i8*** %16, align 8
  store i8* null, i8** %134, align 8
  %135 = load i8**, i8*** %16, align 8
  store i8** %135, i8*** %26, align 8
  store i8* null, i8** %27, align 8
  %136 = load i64, i64* %25, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %140 = call i32 @IFCQ_LOCK_SPIN(%struct.ifclassq* %139)
  br label %144

141:                                              ; preds = %133
  %142 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %143 = call i32 @IFCQ_LOCK(%struct.ifclassq* %142)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %225, %144
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %14, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %15, align 8
  %152 = icmp slt i64 %150, %151
  br label %153

153:                                              ; preds = %149, %145
  %154 = phi i1 [ false, %145 ], [ %152, %149 ]
  br i1 %154, label %155, label %230

155:                                              ; preds = %153
  %156 = load i64, i64* %20, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %160 = call i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load i8**, i8*** %16, align 8
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @IFCQ_TBR_DEQUEUE_SC(%struct.ifclassq* %163, i32 %164, i8* %166, i32* %30)
  br label %174

168:                                              ; preds = %158
  %169 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i8**, i8*** %16, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @IFCQ_DEQUEUE_SC(%struct.ifclassq* %169, i32 %170, i8* %172, i32* %30)
  br label %174

174:                                              ; preds = %168, %162
  br label %190

175:                                              ; preds = %155
  %176 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %177 = call i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %181 = load i8**, i8*** %16, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @IFCQ_TBR_DEQUEUE(%struct.ifclassq* %180, i8* %182, i32* %30)
  br label %189

184:                                              ; preds = %175
  %185 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %186 = load i8**, i8*** %16, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @IFCQ_DEQUEUE(%struct.ifclassq* %185, i8* %187, i32* %30)
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %174
  %191 = load i8**, i8*** %16, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = icmp eq i8* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %230

195:                                              ; preds = %190
  %196 = load i32, i32* %30, align 4
  switch i32 %196, label %223 [
    i32 128, label %197
  ]

197:                                              ; preds = %195
  %198 = load i8**, i8*** %16, align 8
  %199 = bitcast i8** %198 to %struct.TYPE_4__**
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i32* null, i32** %201, align 8
  %202 = load i8**, i8*** %16, align 8
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %27, align 8
  %204 = load i8**, i8*** %16, align 8
  %205 = bitcast i8** %204 to %struct.TYPE_4__**
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %24, align 8
  %212 = add nsw i64 %211, %210
  store i64 %212, i64* %24, align 8
  %213 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %214 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  %215 = load i8**, i8*** %16, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 @ifclassq_set_packet_metadata(%struct.ifclassq* %213, %struct.ifnet* %214, i8* %216, i32 128)
  %218 = load i8**, i8*** %16, align 8
  %219 = bitcast i8** %218 to %struct.TYPE_4__**
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = bitcast i32** %221 to i8**
  store i8** %222, i8*** %16, align 8
  br label %225

223:                                              ; preds = %195
  %224 = call i32 @VERIFY(i32 0)
  br label %225

225:                                              ; preds = %223, %197
  %226 = load i32, i32* %30, align 4
  %227 = load i32*, i32** %21, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i64, i64* %23, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %23, align 8
  br label %145

230:                                              ; preds = %194, %153
  %231 = load %struct.ifclassq*, %struct.ifclassq** %12, align 8
  %232 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %231)
  %233 = load i8**, i8*** %17, align 8
  %234 = icmp ne i8** %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i8*, i8** %27, align 8
  %237 = load i8**, i8*** %17, align 8
  store i8* %236, i8** %237, align 8
  br label %238

238:                                              ; preds = %235, %230
  %239 = load i64*, i64** %18, align 8
  %240 = icmp ne i64* %239, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i64, i64* %23, align 8
  %243 = load i64*, i64** %18, align 8
  store i64 %242, i64* %243, align 8
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i64*, i64** %19, align 8
  %246 = icmp ne i64* %245, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load i64, i64* %24, align 8
  %249 = load i64*, i64** %19, align 8
  store i64 %248, i64* %249, align 8
  br label %250

250:                                              ; preds = %247, %244
  %251 = load i8**, i8*** %26, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  br label %257

255:                                              ; preds = %250
  %256 = load i32, i32* @EAGAIN, align 4
  br label %257

257:                                              ; preds = %255, %254
  %258 = phi i32 [ 0, %254 ], [ %256, %255 ]
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %257, %129, %90
  %260 = load i32, i32* %11, align 4
  ret i32 %260
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @MBUF_VALID_SC(i32) #1

declare dso_local i64 @IFCQ_TBR_IS_ENABLED(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_LOCK_SPIN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_TBR_DEQUEUE_SC(%struct.ifclassq*, i32, i8*, i32*) #1

declare dso_local i32 @IFCQ_DEQUEUE_SC(%struct.ifclassq*, i32, i8*, i32*) #1

declare dso_local i32 @IFCQ_TBR_DEQUEUE(%struct.ifclassq*, i8*, i32*) #1

declare dso_local i32 @IFCQ_DEQUEUE(%struct.ifclassq*, i8*, i32*) #1

declare dso_local i32 @ifclassq_set_packet_metadata(%struct.ifclassq*, %struct.ifnet*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
