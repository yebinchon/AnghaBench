; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIkeInformationalExchangePacketRecv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_ProcIkeInformationalExchangePacketRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_56__ = type { i32 }
%struct.TYPE_55__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_45__ = type { i64, i64, i64, i32, i32, %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i32, i64 }
%struct.TYPE_47__ = type { %struct.TYPE_57__*, i32 }
%struct.TYPE_57__ = type { %struct.TYPE_47__*, i32, i32, i32, %struct.TYPE_51__, i32, i64 }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_52__, %struct.TYPE_49__* }
%struct.TYPE_52__ = type { %struct.TYPE_44__, i32 }
%struct.TYPE_44__ = type { i64, %struct.TYPE_54__*, %struct.TYPE_53__* }
%struct.TYPE_54__ = type { i32, i64 }
%struct.TYPE_53__ = type { i32, i32 }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_48__ = type { i32, i32 }

@IKE_PAYLOAD_HASH = common dso_local global i32 0, align 4
@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_PAYLOAD_DELETE = common dso_local global i32 0, align 4
@IKE_PAYLOAD_NOTICE = common dso_local global i32 0, align 4
@IKE_NOTICE_DPD_REQUEST = common dso_local global i64 0, align 8
@IKE_NOTICE_DPD_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcIkeInformationalExchangePacketRecv(%struct.TYPE_56__* %0, %struct.TYPE_55__* %1, %struct.TYPE_45__* %2) #0 {
  %4 = alloca %struct.TYPE_56__*, align 8
  %5 = alloca %struct.TYPE_55__*, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca %struct.TYPE_47__*, align 8
  %8 = alloca %struct.TYPE_57__*, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_46__, align 4
  %11 = alloca %struct.TYPE_43__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_48__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_43__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_43__*, align 8
  %23 = alloca %struct.TYPE_44__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_57__*, align 8
  store %struct.TYPE_56__* %0, %struct.TYPE_56__** %4, align 8
  store %struct.TYPE_55__* %1, %struct.TYPE_55__** %5, align 8
  store %struct.TYPE_45__* %2, %struct.TYPE_45__** %6, align 8
  %28 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %29 = icmp eq %struct.TYPE_56__* %28, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %32 = icmp eq %struct.TYPE_55__* %31, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %35 = icmp eq %struct.TYPE_45__* %34, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46, %41, %36, %33, %30, %3
  br label %370

57:                                               ; preds = %51
  %58 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %59 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %70 = call %struct.TYPE_47__* @SearchOrCreateNewIkeClientForIkePacket(%struct.TYPE_56__* %58, i32* %60, i32 %63, i32* %65, i32 %68, %struct.TYPE_45__* %69)
  store %struct.TYPE_47__* %70, %struct.TYPE_47__** %7, align 8
  %71 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %72 = icmp eq %struct.TYPE_47__* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %57
  br label %370

74:                                               ; preds = %57
  %75 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %76 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %80 = call %struct.TYPE_57__* @FindIkeSaByResponderCookieAndClient(%struct.TYPE_56__* %75, i64 %78, %struct.TYPE_47__* %79)
  store %struct.TYPE_57__* %80, %struct.TYPE_57__** %8, align 8
  %81 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %82 = icmp ne %struct.TYPE_57__* %81, null
  br i1 %82, label %83, label %370

83:                                               ; preds = %74
  %84 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %370

88:                                               ; preds = %83
  %89 = call i32 @Zero(%struct.TYPE_46__* %10, i32 8)
  %90 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %10, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %97 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @IkeCalcPhase2InitialIv(i32 %95, %struct.TYPE_57__* %96, i64 %99)
  %101 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_55__*, %struct.TYPE_55__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_45__* @IkeParse(i32 %103, i32 %106, %struct.TYPE_46__* %10)
  store %struct.TYPE_45__* %107, %struct.TYPE_45__** %9, align 8
  %108 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %109 = icmp ne %struct.TYPE_45__* %108, null
  br i1 %109, label %110, label %369

110:                                              ; preds = %88
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IKE_PAYLOAD_HASH, align 4
  %115 = call %struct.TYPE_43__* @IkeGetPayload(i32 %113, i32 %114, i32 0)
  store %struct.TYPE_43__* %115, %struct.TYPE_43__** %11, align 8
  %116 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %117 = icmp ne %struct.TYPE_43__* %116, null
  br i1 %117, label %118, label %366

118:                                              ; preds = %110
  %119 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_49__*, %struct.TYPE_49__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 4, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %127, i32 0, i32 5
  %129 = load %struct.TYPE_50__*, %struct.TYPE_50__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = bitcast i32* %135 to i8*
  store i8* %136, i8** %13, align 8
  %137 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_50__*, %struct.TYPE_50__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %365

144:                                              ; preds = %118
  %145 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_50__*, %struct.TYPE_50__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %153 = zext i32 %152 to i64
  %154 = call i8* @llvm.stacksave()
  store i8* %154, i8** %15, align 8
  %155 = alloca i32, i64 %153, align 16
  store i64 %153, i64* %16, align 8
  %156 = call %struct.TYPE_48__* (...) @NewBuf()
  store %struct.TYPE_48__* %156, %struct.TYPE_48__** %17, align 8
  %157 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @WriteBufInt(%struct.TYPE_48__* %157, i64 %160)
  %162 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %163 = load i8*, i8** %13, align 8
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @WriteBuf(%struct.TYPE_48__* %162, i8* %163, i32 %164)
  %166 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @IkeHMac(i32 %169, i32* %155, i32 %172, i32 %175, i32 %178, i32 %181)
  %183 = load %struct.TYPE_43__*, %struct.TYPE_43__** %11, align 8
  %184 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @IkeCompareHash(%struct.TYPE_43__* %183, i32* %155, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %361

189:                                              ; preds = %144
  %190 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @IKE_PAYLOAD_DELETE, align 4
  %194 = call i32 @IkeGetPayloadNum(i32 %192, i32 %193)
  store i32 %194, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %195

195:                                              ; preds = %213, %189
  %196 = load i32, i32* %18, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %195
  %200 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IKE_PAYLOAD_DELETE, align 4
  %204 = load i32, i32* %18, align 4
  %205 = call %struct.TYPE_43__* @IkeGetPayload(i32 %202, i32 %203, i32 %204)
  store %struct.TYPE_43__* %205, %struct.TYPE_43__** %20, align 8
  %206 = load %struct.TYPE_43__*, %struct.TYPE_43__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %207, i32 0, i32 1
  store i32* %208, i32** %21, align 8
  %209 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %210 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = call i32 @ProcDeletePayload(%struct.TYPE_56__* %209, %struct.TYPE_47__* %210, i32* %211)
  br label %213

213:                                              ; preds = %199
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  br label %195

216:                                              ; preds = %195
  %217 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @IKE_PAYLOAD_NOTICE, align 4
  %221 = call i32 @IkeGetPayloadNum(i32 %219, i32 %220)
  store i32 %221, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %222

222:                                              ; preds = %357, %216
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %360

226:                                              ; preds = %222
  %227 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @IKE_PAYLOAD_NOTICE, align 4
  %231 = load i32, i32* %18, align 4
  %232 = call %struct.TYPE_43__* @IkeGetPayload(i32 %229, i32 %230, i32 %231)
  store %struct.TYPE_43__* %232, %struct.TYPE_43__** %22, align 8
  %233 = load %struct.TYPE_43__*, %struct.TYPE_43__** %22, align 8
  %234 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %234, i32 0, i32 0
  store %struct.TYPE_44__* %235, %struct.TYPE_44__** %23, align 8
  %236 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IKE_NOTICE_DPD_REQUEST, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %247, label %241

241:                                              ; preds = %226
  %242 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @IKE_NOTICE_DPD_RESPONSE, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %356

247:                                              ; preds = %241, %226
  %248 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %249 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_53__*, %struct.TYPE_53__** %249, align 8
  %251 = icmp ne %struct.TYPE_53__* %250, null
  br i1 %251, label %252, label %355

252:                                              ; preds = %247
  %253 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %254 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_53__*, %struct.TYPE_53__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = icmp eq i64 %258, 4
  br i1 %259, label %260, label %355

260:                                              ; preds = %252
  %261 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %262 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %261, i32 0, i32 2
  %263 = load %struct.TYPE_53__*, %struct.TYPE_53__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @READ_UINT(i32 %265)
  store i32 %266, i32* %24, align 4
  %267 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %268 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_54__*, %struct.TYPE_54__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = icmp eq i64 %272, 16
  br i1 %273, label %274, label %354

274:                                              ; preds = %260
  %275 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %276 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_54__*, %struct.TYPE_54__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = inttoptr i64 %279 to i32*
  %281 = call i64 @READ_UINT64(i32* %280)
  store i64 %281, i64* %25, align 8
  %282 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %283 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_54__*, %struct.TYPE_54__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = inttoptr i64 %286 to i32*
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  %289 = call i64 @READ_UINT64(i32* %288)
  store i64 %289, i64* %26, align 8
  %290 = load i64, i64* %25, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %353

292:                                              ; preds = %274
  %293 = load i64, i64* %26, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %353

295:                                              ; preds = %292
  %296 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %297 = load i64, i64* %25, align 8
  %298 = load i64, i64* %26, align 8
  %299 = call %struct.TYPE_57__* @SearchIkeSaByCookie(%struct.TYPE_56__* %296, i64 %297, i64 %298)
  store %struct.TYPE_57__* %299, %struct.TYPE_57__** %27, align 8
  %300 = load %struct.TYPE_57__*, %struct.TYPE_57__** %27, align 8
  %301 = icmp ne %struct.TYPE_57__* %300, null
  br i1 %301, label %302, label %352

302:                                              ; preds = %295
  %303 = load %struct.TYPE_57__*, %struct.TYPE_57__** %27, align 8
  %304 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_47__*, %struct.TYPE_47__** %304, align 8
  %306 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %307 = icmp eq %struct.TYPE_47__* %305, %306
  br i1 %307, label %308, label %352

308:                                              ; preds = %302
  %309 = load %struct.TYPE_44__*, %struct.TYPE_44__** %23, align 8
  %310 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @IKE_NOTICE_DPD_REQUEST, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %308
  %315 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %316 = load %struct.TYPE_47__*, %struct.TYPE_47__** %7, align 8
  %317 = load i64, i64* %25, align 8
  %318 = load i64, i64* %26, align 8
  %319 = load i32, i32* %24, align 4
  %320 = call i32 @IkeNewNoticeDpdPayload(i32 1, i64 %317, i64 %318, i32 %319)
  %321 = call i32 @SendInformationalExchangePacket(%struct.TYPE_56__* %315, %struct.TYPE_47__* %316, i32 %320)
  br label %322

322:                                              ; preds = %314, %308
  %323 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_57__*, %struct.TYPE_57__** %27, align 8
  %327 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_57__*, %struct.TYPE_57__** %27, align 8
  %337 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_47__*, %struct.TYPE_47__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %338, i32 0, i32 1
  store i32 %335, i32* %339, align 8
  %340 = load %struct.TYPE_56__*, %struct.TYPE_56__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_47__*, %struct.TYPE_47__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %345, i32 0, i32 1
  store i32 %342, i32* %346, align 8
  %347 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %348 = load %struct.TYPE_57__*, %struct.TYPE_57__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_47__*, %struct.TYPE_47__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %350, i32 0, i32 0
  store %struct.TYPE_57__* %347, %struct.TYPE_57__** %351, align 8
  br label %352

352:                                              ; preds = %322, %302, %295
  br label %353

353:                                              ; preds = %352, %292, %274
  br label %354

354:                                              ; preds = %353, %260
  br label %355

355:                                              ; preds = %354, %252, %247
  br label %356

356:                                              ; preds = %355, %241
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %18, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %18, align 4
  br label %222

360:                                              ; preds = %222
  br label %361

361:                                              ; preds = %360, %144
  %362 = load %struct.TYPE_48__*, %struct.TYPE_48__** %17, align 8
  %363 = call i32 @FreeBuf(%struct.TYPE_48__* %362)
  %364 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %364)
  br label %365

365:                                              ; preds = %361, %118
  br label %366

366:                                              ; preds = %365, %110
  %367 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %368 = call i32 @IkeFree(%struct.TYPE_45__* %367)
  br label %369

369:                                              ; preds = %366, %88
  br label %370

370:                                              ; preds = %56, %73, %369, %83, %74
  ret void
}

declare dso_local %struct.TYPE_47__* @SearchOrCreateNewIkeClientForIkePacket(%struct.TYPE_56__*, i32*, i32, i32*, i32, %struct.TYPE_45__*) #1

declare dso_local %struct.TYPE_57__* @FindIkeSaByResponderCookieAndClient(%struct.TYPE_56__*, i64, %struct.TYPE_47__*) #1

declare dso_local i32 @Zero(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @IkeCalcPhase2InitialIv(i32, %struct.TYPE_57__*, i64) #1

declare dso_local %struct.TYPE_45__* @IkeParse(i32, i32, %struct.TYPE_46__*) #1

declare dso_local %struct.TYPE_43__* @IkeGetPayload(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_48__* @NewBuf(...) #1

declare dso_local i32 @WriteBufInt(%struct.TYPE_48__*, i64) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_48__*, i8*, i32) #1

declare dso_local i32 @IkeHMac(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IkeCompareHash(%struct.TYPE_43__*, i32*, i32) #1

declare dso_local i32 @IkeGetPayloadNum(i32, i32) #1

declare dso_local i32 @ProcDeletePayload(%struct.TYPE_56__*, %struct.TYPE_47__*, i32*) #1

declare dso_local i32 @READ_UINT(i32) #1

declare dso_local i64 @READ_UINT64(i32*) #1

declare dso_local %struct.TYPE_57__* @SearchIkeSaByCookie(%struct.TYPE_56__*, i64, i64) #1

declare dso_local i32 @SendInformationalExchangePacket(%struct.TYPE_56__*, %struct.TYPE_47__*, i32) #1

declare dso_local i32 @IkeNewNoticeDpdPayload(i32, i64, i64, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_48__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IkeFree(%struct.TYPE_45__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
