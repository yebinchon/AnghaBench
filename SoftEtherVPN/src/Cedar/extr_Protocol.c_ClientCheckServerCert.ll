; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientCheckServerCert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ClientCheckServerCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i64, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32*, i64, %struct.TYPE_15__*, i32* }

@ClientCheckServerCertThread = common dso_local global i32 0, align 4
@CONNECTING_POOLING_SPAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ClientCheckServerCert(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp eq %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %247

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %21
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %247

42:                                               ; preds = %34, %21
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %247

59:                                               ; preds = %49, %42
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @CompareX(i32* %69, i32* %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %247

76:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %247

77:                                               ; preds = %59
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32* @CloneX(i32* %82)
  store i32* %83, i32** %7, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %247

87:                                               ; preds = %77
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @CheckXDateNow(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %119

91:                                               ; preds = %87
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i64 @CheckSignatureByCa(i32* %99, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @FreeX(i32* %104)
  store i32 1, i32* %3, align 4
  br label %247

106:                                              ; preds = %98
  br label %118

107:                                              ; preds = %91
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i64 @CheckSignatureByCaLinkMode(%struct.TYPE_12__* %110, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @FreeX(i32* %115)
  store i32 1, i32* %3, align 4
  br label %247

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %87
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %188

126:                                              ; preds = %119
  %127 = load i32*, i32** %7, align 8
  %128 = call i64 @CheckXDateNow(i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %179

130:                                              ; preds = %126
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @Lock(i32 %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %170

147:                                              ; preds = %130
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @CompareX(i32* %154, i32* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %147
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @Unlock(i32 %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @FreeX(i32* %167)
  store i32 1, i32* %3, align 4
  br label %247

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169, %130
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @Unlock(i32 %177)
  br label %185

179:                                              ; preds = %126
  %180 = load i32*, i32** %5, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32*, i32** %5, align 8
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %182, %179
  br label %185

185:                                              ; preds = %184, %170
  %186 = load i32*, i32** %7, align 8
  %187 = call i32 @FreeX(i32* %186)
  store i32 0, i32* %3, align 4
  br label %247

188:                                              ; preds = %119
  %189 = call %struct.TYPE_17__* @ZeroMalloc(i32 40)
  store %struct.TYPE_17__* %189, %struct.TYPE_17__** %8, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 2
  store i32* %190, i32** %192, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 5
  store i32* %195, i32** %197, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  store %struct.TYPE_15__* %198, %struct.TYPE_15__** %200, align 8
  %201 = load i32, i32* @ClientCheckServerCertThread, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %203 = call i32* @NewThread(i32 %201, %struct.TYPE_17__* %202)
  store i32* %203, i32** %9, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @WaitThreadInit(i32* %204)
  %206 = call i64 (...) @Tick64()
  store i64 %206, i64* %12, align 8
  br label %207

207:                                              ; preds = %188, %223
  %208 = call i64 (...) @Tick64()
  %209 = load i64, i64* %12, align 8
  %210 = sub nsw i64 %208, %209
  %211 = load i64, i64* @CONNECTING_POOLING_SPAN, align 8
  %212 = icmp sgt i64 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = call i64 (...) @Tick64()
  store i64 %214, i64* %12, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = call i32 @ClientUploadNoop(%struct.TYPE_15__* %215)
  br label %217

217:                                              ; preds = %213, %207
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %226

223:                                              ; preds = %217
  %224 = load i32*, i32** %9, align 8
  %225 = call i32 @WaitThread(i32* %224, i32 500)
  br label %207

226:                                              ; preds = %222
  %227 = load i32*, i32** %5, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %5, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %229, %226
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %11, align 4
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = call i32 @FreeX(i32* %240)
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %243 = call i32 @Free(%struct.TYPE_17__* %242)
  %244 = load i32*, i32** %9, align 8
  %245 = call i32 @ReleaseThread(i32* %244)
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %234, %185, %158, %114, %103, %86, %76, %75, %58, %41, %15
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @CompareX(i32*, i32*) #1

declare dso_local i32* @CloneX(i32*) #1

declare dso_local i64 @CheckXDateNow(i32*) #1

declare dso_local i64 @CheckSignatureByCa(i32*, i32*) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i64 @CheckSignatureByCaLinkMode(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local %struct.TYPE_17__* @ZeroMalloc(i32) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @WaitThreadInit(i32*) #1

declare dso_local i64 @Tick64(...) #1

declare dso_local i32 @ClientUploadNoop(%struct.TYPE_15__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @Free(%struct.TYPE_17__*) #1

declare dso_local i32 @ReleaseThread(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
