; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_StartPeapClient.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Radius.c_StartPeapClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_18__*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64*, i8*, i32 }
%struct.TYPE_17__ = type { i32 }

@RADIUS_CODE_ACCESS_REQUEST = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i8* null, align 8
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_EAP_MESSAGE = common dso_local global i32 0, align 4
@EAP_CODE_REQUEST = common dso_local global i64 0, align 8
@EAP_TYPE_PEAP = common dso_local global i64 0, align 8
@RADIUS_ATTRIBUTE_STATE = common dso_local global i32 0, align 4
@EAP_TYPE_LEGACY_NAK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StartPeapClient(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = icmp eq %struct.TYPE_19__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %223

22:                                               ; preds = %16
  %23 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call %struct.TYPE_16__* @NewRadiusPacket(i32 %23, i32 %26)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %5, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_16__* %29, %struct.TYPE_19__* %30)
  %32 = call %struct.TYPE_18__* @ZeroMalloc(i32 40)
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %9, align 8
  %33 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @StrLen(i32 %44)
  %46 = add nsw i32 %45, 5
  %47 = call i8* @Endian16(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @StrLen(i32 %61)
  %63 = call i32 @Copy(i64* %55, i32 %58, i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @StrLen(i32 %71)
  %73 = add nsw i32 %72, 5
  %74 = call i32 @NewRadiusAvp(i32 %67, i32 0, i32 0, %struct.TYPE_18__* %68, i32 %73)
  %75 = call i32 @Add(i32 %66, i32 %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = call %struct.TYPE_16__* @EapSendPacketAndRecvResponse(%struct.TYPE_19__* %76, %struct.TYPE_16__* %77)
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %6, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  br i1 %80, label %81, label %209

81:                                               ; preds = %22
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %208

86:                                               ; preds = %81
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %208

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %11, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @EAP_CODE_REQUEST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %207

100:                                              ; preds = %91
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %196

106:                                              ; preds = %100
  %107 = load i32, i32* @RADIUS_CODE_ACCESS_REQUEST, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = call %struct.TYPE_16__* @NewRadiusPacket(i32 %107, i32 %110)
  store %struct.TYPE_16__* %112, %struct.TYPE_16__** %7, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %115 = call i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_16__* %113, %struct.TYPE_19__* %114)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %106
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @RADIUS_ATTRIBUTE_STATE, align 4
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @NewRadiusAvp(i32 %124, i32 0, i32 0, %struct.TYPE_18__* %127, i32 %131)
  %133 = call i32 @Add(i32 %123, i32 %132)
  br label %134

134:                                              ; preds = %120, %106
  %135 = call %struct.TYPE_18__* @ZeroMalloc(i32 40)
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %10, align 8
  %136 = load i8*, i8** @EAP_CODE_RESPONSE, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = call i8* @Endian16(i32 6)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* @EAP_TYPE_LEGACY_NAK, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 %151, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @RADIUS_ATTRIBUTE_EAP_MESSAGE, align 4
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %161 = call i32 @NewRadiusAvp(i32 %159, i32 0, i32 0, %struct.TYPE_18__* %160, i32 6)
  %162 = call i32 @Add(i32 %158, i32 %161)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %165 = call %struct.TYPE_16__* @EapSendPacketAndRecvResponse(%struct.TYPE_19__* %163, %struct.TYPE_16__* %164)
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %8, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %167 = icmp ne %struct.TYPE_16__* %166, null
  br i1 %167, label %168, label %195

168:                                              ; preds = %134
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %168
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = icmp ne %struct.TYPE_18__* %176, null
  br i1 %177, label %178, label %195

178:                                              ; preds = %173
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  store %struct.TYPE_18__* %181, %struct.TYPE_18__** %11, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @EAP_CODE_REQUEST, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %178
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @EAP_TYPE_PEAP, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %197

194:                                              ; preds = %187, %178
  br label %195

195:                                              ; preds = %194, %173, %168, %134
  br label %206

196:                                              ; preds = %100
  br label %197

197:                                              ; preds = %196, %193
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %199 = bitcast %struct.TYPE_18__* %198 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %199, %struct.TYPE_17__** %12, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 32
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  store i32 1, i32* %4, align 4
  br label %205

205:                                              ; preds = %204, %197
  br label %206

206:                                              ; preds = %205, %195
  br label %207

207:                                              ; preds = %206, %91
  br label %208

208:                                              ; preds = %207, %86, %81
  br label %209

209:                                              ; preds = %208, %22
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %211 = call i32 @FreeRadiusPacket(%struct.TYPE_16__* %210)
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %213 = call i32 @FreeRadiusPacket(%struct.TYPE_16__* %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %215 = call i32 @FreeRadiusPacket(%struct.TYPE_16__* %214)
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %217 = call i32 @FreeRadiusPacket(%struct.TYPE_16__* %216)
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %219 = call i32 @Free(%struct.TYPE_18__* %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %221 = call i32 @Free(%struct.TYPE_18__* %220)
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %209, %21, %15
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.TYPE_16__* @NewRadiusPacket(i32, i32) #1

declare dso_local i32 @EapSetRadiusGeneralAttributes(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @ZeroMalloc(i32) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @StrLen(i32) #1

declare dso_local i32 @Copy(i64*, i32, i32) #1

declare dso_local i32 @Add(i32, i32) #1

declare dso_local i32 @NewRadiusAvp(i32, i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_16__* @EapSendPacketAndRecvResponse(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @FreeRadiusPacket(%struct.TYPE_16__*) #1

declare dso_local i32 @Free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
