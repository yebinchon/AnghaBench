; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SendInformationalExchangePacketEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_SendInformationalExchangePacketEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i32, i32, i32, i32, %struct.TYPE_45__* }
%struct.TYPE_45__ = type { i64, i64, i32, i32, i32, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_43__, %struct.TYPE_39__* }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_38__ = type { i64, i64 }
%struct.TYPE_44__ = type { i32, i32 }

@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_PAYLOAD_HASH = common dso_local global i32 0, align 4
@IKE_EXCHANGE_TYPE_INFORMATION = common dso_local global i32 0, align 4
@IKE_UDP_TYPE_ISAKMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SendInformationalExchangePacketEx(i32* %0, %struct.TYPE_37__* %1, %struct.TYPE_46__* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_45__*, align 8
  %14 = alloca %struct.TYPE_47__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_46__*, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_38__*, align 8
  %23 = alloca %struct.TYPE_38__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_44__, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %8, align 8
  store %struct.TYPE_46__* %2, %struct.TYPE_46__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %28 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %16, align 8
  %31 = alloca %struct.TYPE_44__, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  %32 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca %struct.TYPE_44__, i64 %33, align 16
  store i64 %33, i64* %24, align 8
  store i32 0, i32* %26, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %6
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %39 = icmp eq %struct.TYPE_37__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %42 = icmp eq %struct.TYPE_46__* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %6
  %44 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %45 = call i32 @IkeFreePayload(%struct.TYPE_46__* %44)
  store i32 1, i32* %27, align 4
  br label %234

46:                                               ; preds = %40
  %47 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_45__*, %struct.TYPE_45__** %48, align 8
  store %struct.TYPE_45__* %49, %struct.TYPE_45__** %13, align 8
  %50 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %51 = icmp eq %struct.TYPE_45__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %26, align 4
  br label %53

53:                                               ; preds = %52, %46
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %26, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %26, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i64, i64* %11, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i64, i64* %12, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i64 (...) @Rand64()
  store i64 %67, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %68

68:                                               ; preds = %66, %63, %60, %57
  %69 = call i32* @NewListFast(i32* null)
  store i32* %69, i32** %15, align 8
  %70 = mul nuw i64 8, %29
  %71 = trunc i64 %70 to i32
  %72 = call i32 @Zero(%struct.TYPE_44__* %31, i32 %71)
  %73 = load i32, i32* %26, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load i32, i32* @IKE_PAYLOAD_HASH, align 4
  %77 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_46__* @IkeNewDataPayload(i32 %76, %struct.TYPE_44__* %31, i32 %79)
  store %struct.TYPE_46__* %80, %struct.TYPE_46__** %18, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %83 = call i32 @Add(i32* %81, %struct.TYPE_46__* %82)
  br label %84

84:                                               ; preds = %75, %68
  %85 = load i32*, i32** %15, align 8
  %86 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %87 = call i32 @Add(i32* %85, %struct.TYPE_46__* %86)
  %88 = load i32, i32* %26, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %11, align 8
  br label %96

92:                                               ; preds = %84
  %93 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  br label %96

96:                                               ; preds = %92, %90
  %97 = phi i64 [ %91, %90 ], [ %95, %92 ]
  %98 = load i32, i32* %26, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i64, i64* %12, align 8
  br label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %102, %100
  %107 = phi i64 [ %101, %100 ], [ %105, %102 ]
  %108 = load i32, i32* @IKE_EXCHANGE_TYPE_INFORMATION, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @GenerateNewMessageId(i32* %109)
  %111 = load i32*, i32** %15, align 8
  %112 = call %struct.TYPE_47__* @IkeNew(i64 %97, i64 %107, i32 %108, i32 0, i32 0, i32 0, i32 %110, i32* %111)
  store %struct.TYPE_47__* %112, %struct.TYPE_47__** %14, align 8
  %113 = load i32, i32* %26, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %192

115:                                              ; preds = %106
  %116 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %117 = call %struct.TYPE_38__* @IkeBuild(%struct.TYPE_47__* %116, %struct.TYPE_44__* null)
  store %struct.TYPE_38__* %117, %struct.TYPE_38__** %19, align 8
  %118 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_39__*, %struct.TYPE_39__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 4, %122
  %124 = add i64 %123, 4
  store i64 %124, i64* %20, align 8
  %125 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %20, align 8
  %129 = icmp sgt i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %115
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %20, align 8
  %135 = sub nsw i64 %133, %134
  br label %137

136:                                              ; preds = %115
  br label %137

137:                                              ; preds = %136, %130
  %138 = phi i64 [ %135, %130 ], [ 0, %136 ]
  store i64 %138, i64* %21, align 8
  %139 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.TYPE_44__*
  %143 = load i64, i64* %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %142, i64 %143
  %145 = load i64, i64* %21, align 8
  %146 = call %struct.TYPE_38__* @MemToBuf(%struct.TYPE_44__* %144, i64 %145)
  store %struct.TYPE_38__* %146, %struct.TYPE_38__** %22, align 8
  %147 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %148 = call i32 @FreeBuf(%struct.TYPE_38__* %147)
  %149 = call %struct.TYPE_38__* (...) @NewBuf()
  store %struct.TYPE_38__* %149, %struct.TYPE_38__** %23, align 8
  %150 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %151 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @WriteBufInt(%struct.TYPE_38__* %150, i32 %153)
  %155 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %156 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %157 = call i32 @WriteBufBuf(%struct.TYPE_38__* %155, %struct.TYPE_38__* %156)
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @IkeHMac(i32 %161, %struct.TYPE_44__* %34, i32 %164, i32 %167, i64 %170, i64 %173)
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %23, align 8
  %176 = call i32 @FreeBuf(%struct.TYPE_38__* %175)
  %177 = load %struct.TYPE_46__*, %struct.TYPE_46__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_41__*, %struct.TYPE_41__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @Copy(i32 %183, %struct.TYPE_44__* %34, i32 %186)
  %188 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %191 = call i32 @FreeBuf(%struct.TYPE_38__* %190)
  br label %192

192:                                              ; preds = %137, %106
  %193 = call i32 @Zero(%struct.TYPE_44__* %25, i32 8)
  %194 = load i32, i32* %26, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %192
  %197 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 1
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %25, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_45__*, %struct.TYPE_45__** %13, align 8
  %204 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @IkeCalcPhase2InitialIv(i32 %202, %struct.TYPE_45__* %203, i32 %206)
  br label %208

208:                                              ; preds = %196, %192
  %209 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %210 = call %struct.TYPE_38__* @IkeBuild(%struct.TYPE_47__* %209, %struct.TYPE_44__* %25)
  store %struct.TYPE_38__* %210, %struct.TYPE_38__** %19, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* @IKE_UDP_TYPE_ISAKMP, align 4
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @IkeSendUdpPacket(i32* %211, i32 %212, i32* %214, i32 %217, i32* %219, i32 %222, i64 %225, i64 %228)
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %231 = call i32 @Free(%struct.TYPE_38__* %230)
  %232 = load %struct.TYPE_47__*, %struct.TYPE_47__** %14, align 8
  %233 = call i32 @IkeFree(%struct.TYPE_47__* %232)
  store i32 0, i32* %27, align 4
  br label %234

234:                                              ; preds = %208, %43
  %235 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %27, align 4
  switch i32 %236, label %238 [
    i32 0, label %237
    i32 1, label %237
  ]

237:                                              ; preds = %234, %234
  ret void

238:                                              ; preds = %234
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IkeFreePayload(%struct.TYPE_46__*) #2

declare dso_local i64 @Rand64(...) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @Zero(%struct.TYPE_44__*, i32) #2

declare dso_local %struct.TYPE_46__* @IkeNewDataPayload(i32, %struct.TYPE_44__*, i32) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_46__*) #2

declare dso_local %struct.TYPE_47__* @IkeNew(i64, i64, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @GenerateNewMessageId(i32*) #2

declare dso_local %struct.TYPE_38__* @IkeBuild(%struct.TYPE_47__*, %struct.TYPE_44__*) #2

declare dso_local %struct.TYPE_38__* @MemToBuf(%struct.TYPE_44__*, i64) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_38__*) #2

declare dso_local %struct.TYPE_38__* @NewBuf(...) #2

declare dso_local i32 @WriteBufInt(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @WriteBufBuf(%struct.TYPE_38__*, %struct.TYPE_38__*) #2

declare dso_local i32 @IkeHMac(i32, %struct.TYPE_44__*, i32, i32, i64, i64) #2

declare dso_local i32 @Copy(i32, %struct.TYPE_44__*, i32) #2

declare dso_local i32 @IkeCalcPhase2InitialIv(i32, %struct.TYPE_45__*, i32) #2

declare dso_local i32 @IkeSendUdpPacket(i32*, i32, i32*, i32, i32*, i32, i64, i64) #2

declare dso_local i32 @Free(%struct.TYPE_38__*) #2

declare dso_local i32 @IkeFree(%struct.TYPE_47__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
