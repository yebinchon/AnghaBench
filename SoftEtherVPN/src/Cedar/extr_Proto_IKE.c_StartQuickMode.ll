; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_StartQuickMode.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IKE.c_StartQuickMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_59__ = type { i32 }
%struct.TYPE_63__ = type { i32, i32, i64, i64, i64, %struct.TYPE_66__*, i32, i32, i32, %struct.TYPE_73__*, i32, i32, i32, i64, i32, %struct.TYPE_60__* }
%struct.TYPE_66__ = type { i32, i32* }
%struct.TYPE_73__ = type { i32, i32* }
%struct.TYPE_60__ = type { i32, i32, %struct.TYPE_68__, i32, i32 }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_74__ = type { i64, i32*, i32 }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_61__ = type { %struct.TYPE_71__, %struct.TYPE_67__* }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { %struct.TYPE_69__* }
%struct.TYPE_69__ = type { %struct.TYPE_74__* }
%struct.TYPE_67__ = type { i64 }
%struct.TYPE_65__ = type { i32, i32* }
%struct.TYPE_58__ = type { i32, %struct.TYPE_64__*, %struct.TYPE_58__* }
%struct.TYPE_64__ = type { %struct.TYPE_72__* }
%struct.TYPE_72__ = type { i32, i32* }

@IKE_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Error: c->CachedTransformSetting is not existing.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"LI_START_QM_FROM_SERVER\00", align 1
@IKE_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@IKE_SA_RAND_SIZE = common dso_local global i32 0, align 4
@IKE_PAYLOAD_KEY_EXCHANGE = common dso_local global i32 0, align 4
@IKE_PAYLOAD_HASH = common dso_local global i32 0, align 4
@IKE_PROTOCOL_ID_IPSEC_ESP = common dso_local global i32 0, align 4
@IKE_PAYLOAD_RAND = common dso_local global i32 0, align 4
@IKE_P2_CAPSULE_NAT_TUNNEL_1 = common dso_local global i64 0, align 8
@IKE_P2_CAPSULE_NAT_TUNNEL_2 = common dso_local global i64 0, align 8
@IKE_ID_IPV4_ADDR_SUBNET = common dso_local global i32 0, align 4
@IKE_ID_IPV6_ADDR_SUBNET = common dso_local global i32 0, align 4
@IKE_PAYLOAD_NAT_OA_DRAFT = common dso_local global i32 0, align 4
@IKE_PAYLOAD_NAT_OA_DRAFT_2 = common dso_local global i32 0, align 4
@IKE_PAYLOAD_NAT_OA = common dso_local global i32 0, align 4
@IKE_EXCHANGE_TYPE_QUICK = common dso_local global i32 0, align 4
@FORCE_LIFETIME_QM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StartQuickMode(%struct.TYPE_59__* %0, %struct.TYPE_63__* %1) #0 {
  %3 = alloca %struct.TYPE_59__*, align 8
  %4 = alloca %struct.TYPE_63__*, align 8
  %5 = alloca %struct.TYPE_74__, align 8
  %6 = alloca %struct.TYPE_60__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_62__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_61__*, align 8
  %14 = alloca %struct.TYPE_61__*, align 8
  %15 = alloca %struct.TYPE_61__*, align 8
  %16 = alloca %struct.TYPE_61__*, align 8
  %17 = alloca %struct.TYPE_61__*, align 8
  %18 = alloca %struct.TYPE_61__*, align 8
  %19 = alloca %struct.TYPE_61__*, align 8
  %20 = alloca %struct.TYPE_61__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_65__*, align 8
  %24 = alloca %struct.TYPE_58__*, align 8
  %25 = alloca %struct.TYPE_58__*, align 8
  %26 = alloca %struct.TYPE_65__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_65__*, align 8
  %30 = alloca %struct.TYPE_65__*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_64__*, align 8
  %36 = alloca i64, align 8
  %37 = alloca [32 x i32], align 16
  store %struct.TYPE_59__* %0, %struct.TYPE_59__** %3, align 8
  store %struct.TYPE_63__* %1, %struct.TYPE_63__** %4, align 8
  %38 = load i32, i32* @IKE_MAX_BLOCK_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %8, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %9, align 8
  %42 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %43 = icmp eq %struct.TYPE_59__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %46 = icmp eq %struct.TYPE_63__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %2
  store i32 1, i32* %10, align 4
  br label %446

48:                                               ; preds = %44
  %49 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %49, i32 0, i32 14
  %51 = call i64 @IsZero(i32* %50, i32 24)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @Debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %446

55:                                               ; preds = %48
  %56 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %56, i32 0, i32 15
  %58 = load %struct.TYPE_60__*, %struct.TYPE_60__** %57, align 8
  store %struct.TYPE_60__* %58, %struct.TYPE_60__** %6, align 8
  %59 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %60 = icmp eq %struct.TYPE_60__* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %446

62:                                               ; preds = %55
  %63 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %64 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %65 = call i32 @IPsecLog(%struct.TYPE_59__* %63, i32* null, %struct.TYPE_60__* %64, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %66, i32 0, i32 14
  %68 = call i32 @Copy(%struct.TYPE_74__* %5, i32* %67, i32 24)
  %69 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %70 = call i64 @GenerateNewMessageId(%struct.TYPE_59__* %69)
  store i64 %70, i64* %7, align 8
  %71 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @IkeCalcPhase2InitialIv(i32* %41, %struct.TYPE_60__* %71, i64 %72)
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %18, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %19, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %20, align 8
  store i64 0, i64* %21, align 8
  store i32* null, i32** %22, align 8
  %74 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %33, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %34, align 8
  store %struct.TYPE_64__* null, %struct.TYPE_64__** %35, align 8
  %78 = load i32, i32* @IKE_MAX_HASH_SIZE, align 4
  %79 = zext i32 %78 to i64
  %80 = alloca i32, i64 %79, align 16
  store i64 %79, i64* %36, align 8
  %81 = load i32, i32* @IKE_SA_RAND_SIZE, align 4
  %82 = call %struct.TYPE_65__* @RandBuf(i32 %81)
  store %struct.TYPE_65__* %82, %struct.TYPE_65__** %23, align 8
  %83 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %5, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %62
  %87 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %5, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call %struct.TYPE_64__* @IkeDhNewCtx(i32* %88)
  store %struct.TYPE_64__* %89, %struct.TYPE_64__** %35, align 8
  %90 = load %struct.TYPE_64__*, %struct.TYPE_64__** %35, align 8
  %91 = icmp ne %struct.TYPE_64__* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load i32, i32* @IKE_PAYLOAD_KEY_EXCHANGE, align 4
  %94 = load %struct.TYPE_64__*, %struct.TYPE_64__** %35, align 8
  %95 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_72__*, %struct.TYPE_72__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.TYPE_64__*, %struct.TYPE_64__** %35, align 8
  %100 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_72__*, %struct.TYPE_72__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.TYPE_61__* @IkeNewDataPayload(i32 %93, i32* %98, i32 %103)
  store %struct.TYPE_61__* %104, %struct.TYPE_61__** %18, align 8
  br label %105

105:                                              ; preds = %92, %86
  br label %106

106:                                              ; preds = %105, %62
  %107 = mul nuw i64 4, %79
  %108 = trunc i64 %107 to i32
  %109 = call i32 @Zero(i32* %80, i32 %108)
  %110 = call i32* @NewListFast(i32* null)
  store i32* %110, i32** %12, align 8
  %111 = load i32, i32* @IKE_PAYLOAD_HASH, align 4
  %112 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_61__* @IkeNewDataPayload(i32 %111, i32* %80, i32 %114)
  store %struct.TYPE_61__* %115, %struct.TYPE_61__** %13, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %118 = call i32 @Add(i32* %116, %struct.TYPE_61__* %117)
  %119 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %120 = call i64 @GenerateNewIPsecSaSpi(%struct.TYPE_59__* %119, i32 0)
  store i64 %120, i64* %31, align 8
  %121 = load i64, i64* %31, align 8
  %122 = call i64 @Endian32(i64 %121)
  store i64 %122, i64* %32, align 8
  %123 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %124 = call %struct.TYPE_61__* @TransformSettingToTransformPayloadForIPsec(%struct.TYPE_59__* %123, %struct.TYPE_74__* %5)
  store %struct.TYPE_61__* %124, %struct.TYPE_61__** %16, align 8
  %125 = load i32, i32* @IKE_PROTOCOL_ID_IPSEC_ESP, align 4
  %126 = load %struct.TYPE_61__*, %struct.TYPE_61__** %16, align 8
  %127 = call i32 @NewListSingle(%struct.TYPE_61__* %126)
  %128 = call %struct.TYPE_61__* @IkeNewProposalPayload(i32 1, i32 %125, i64* %32, i32 8, i32 %127)
  store %struct.TYPE_61__* %128, %struct.TYPE_61__** %15, align 8
  %129 = load %struct.TYPE_61__*, %struct.TYPE_61__** %15, align 8
  %130 = call i32 @NewListSingle(%struct.TYPE_61__* %129)
  %131 = call %struct.TYPE_61__* @IkeNewSaPayload(i32 %130)
  store %struct.TYPE_61__* %131, %struct.TYPE_61__** %14, align 8
  %132 = load i32*, i32** %12, align 8
  %133 = load %struct.TYPE_61__*, %struct.TYPE_61__** %14, align 8
  %134 = call i32 @Add(i32* %132, %struct.TYPE_61__* %133)
  %135 = load i32, i32* @IKE_PAYLOAD_RAND, align 4
  %136 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.TYPE_61__* @IkeNewDataPayload(i32 %135, i32* %138, i32 %141)
  store %struct.TYPE_61__* %142, %struct.TYPE_61__** %17, align 8
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.TYPE_61__*, %struct.TYPE_61__** %17, align 8
  %145 = call i32 @Add(i32* %143, %struct.TYPE_61__* %144)
  %146 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %147 = icmp ne %struct.TYPE_61__* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %106
  %149 = load i32*, i32** %12, align 8
  %150 = load %struct.TYPE_61__*, %struct.TYPE_61__** %18, align 8
  %151 = call i32 @Add(i32* %149, %struct.TYPE_61__* %150)
  br label %152

152:                                              ; preds = %148, %106
  %153 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %153, i32 0, i32 13
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %256

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %5, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @IKE_P2_CAPSULE_NAT_TUNNEL_1, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %167, label %162

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %5, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @IKE_P2_CAPSULE_NAT_TUNNEL_2, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %208

167:                                              ; preds = %162, %157
  %168 = getelementptr inbounds [32 x i32], [32 x i32]* %37, i64 0, i64 0
  %169 = call i32 @Zero(i32* %168, i32 128)
  %170 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %170, i32 0, i32 0
  %172 = call i64 @IsIP4(i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @IKE_ID_IPV4_ADDR_SUBNET, align 4
  br label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @IKE_ID_IPV6_ADDR_SUBNET, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = getelementptr inbounds [32 x i32], [32 x i32]* %37, i64 0, i64 0
  %181 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %181, i32 0, i32 0
  %183 = call i64 @IsIP4(i32* %182)
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 8, i32 32
  %187 = call %struct.TYPE_61__* @IkeNewIdPayload(i32 %179, i32 0, i32 0, i32* %180, i32 %186)
  store %struct.TYPE_61__* %187, %struct.TYPE_61__** %19, align 8
  %188 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %191, i32 0, i32 11
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %197, i32 0, i32 9
  %199 = load %struct.TYPE_73__*, %struct.TYPE_73__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %202, i32 0, i32 9
  %204 = load %struct.TYPE_73__*, %struct.TYPE_73__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call %struct.TYPE_61__* @IkeNewIdPayload(i32 %190, i32 %193, i32 %196, i32* %201, i32 %206)
  store %struct.TYPE_61__* %207, %struct.TYPE_61__** %20, align 8
  br label %249

208:                                              ; preds = %162
  %209 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %209, i32 0, i32 12
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %212, i32 0, i32 11
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %218, i32 0, i32 9
  %220 = load %struct.TYPE_73__*, %struct.TYPE_73__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %223, i32 0, i32 9
  %225 = load %struct.TYPE_73__*, %struct.TYPE_73__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call %struct.TYPE_61__* @IkeNewIdPayload(i32 %211, i32 %214, i32 %217, i32* %222, i32 %227)
  store %struct.TYPE_61__* %228, %struct.TYPE_61__** %20, align 8
  %229 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %229, i32 0, i32 8
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %238, i32 0, i32 5
  %240 = load %struct.TYPE_66__*, %struct.TYPE_66__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_66__*, %struct.TYPE_66__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call %struct.TYPE_61__* @IkeNewIdPayload(i32 %231, i32 %234, i32 %237, i32* %242, i32 %247)
  store %struct.TYPE_61__* %248, %struct.TYPE_61__** %19, align 8
  br label %249

249:                                              ; preds = %208, %178
  %250 = load i32*, i32** %12, align 8
  %251 = load %struct.TYPE_61__*, %struct.TYPE_61__** %19, align 8
  %252 = call i32 @Add(i32* %250, %struct.TYPE_61__* %251)
  %253 = load i32*, i32** %12, align 8
  %254 = load %struct.TYPE_61__*, %struct.TYPE_61__** %20, align 8
  %255 = call i32 @Add(i32* %253, %struct.TYPE_61__* %254)
  br label %256

256:                                              ; preds = %249, %152
  %257 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* @IKE_PAYLOAD_NAT_OA_DRAFT, align 4
  %264 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %264, i32 0, i32 0
  %266 = call %struct.TYPE_61__* @IkeNewNatOaPayload(i32 %263, i32* %265)
  %267 = call i32 @Add(i32* %262, %struct.TYPE_61__* %266)
  br label %268

268:                                              ; preds = %261, %256
  %269 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load i32*, i32** %12, align 8
  %275 = load i32, i32* @IKE_PAYLOAD_NAT_OA_DRAFT_2, align 4
  %276 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %276, i32 0, i32 0
  %278 = call %struct.TYPE_61__* @IkeNewNatOaPayload(i32 %275, i32* %277)
  %279 = call i32 @Add(i32* %274, %struct.TYPE_61__* %278)
  br label %280

280:                                              ; preds = %273, %268
  %281 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %280
  %286 = load i32*, i32** %12, align 8
  %287 = load i32, i32* @IKE_PAYLOAD_NAT_OA, align 4
  %288 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %288, i32 0, i32 1
  %290 = call %struct.TYPE_61__* @IkeNewNatOaPayload(i32 %287, i32* %289)
  %291 = call i32 @Add(i32* %286, %struct.TYPE_61__* %290)
  %292 = load i32*, i32** %12, align 8
  %293 = load i32, i32* @IKE_PAYLOAD_NAT_OA, align 4
  %294 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %294, i32 0, i32 0
  %296 = call %struct.TYPE_61__* @IkeNewNatOaPayload(i32 %293, i32* %295)
  %297 = call i32 @Add(i32* %292, %struct.TYPE_61__* %296)
  br label %298

298:                                              ; preds = %285, %280
  %299 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @IKE_EXCHANGE_TYPE_QUICK, align 4
  %306 = load i64, i64* %7, align 8
  %307 = load i32*, i32** %12, align 8
  %308 = call %struct.TYPE_62__* @IkeNew(i32 %301, i32 %304, i32 %305, i32 0, i32 0, i32 0, i64 %306, i32* %307)
  store %struct.TYPE_62__* %308, %struct.TYPE_62__** %11, align 8
  %309 = load %struct.TYPE_62__*, %struct.TYPE_62__** %11, align 8
  %310 = call %struct.TYPE_65__* @IkeBuild(%struct.TYPE_62__* %309, i32* null)
  store %struct.TYPE_65__* %310, %struct.TYPE_65__** %26, align 8
  %311 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_67__*, %struct.TYPE_67__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add i64 4, %315
  %317 = add i64 %316, 4
  store i64 %317, i64* %27, align 8
  %318 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %319 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = sext i32 %320 to i64
  %322 = load i64, i64* %27, align 8
  %323 = icmp sgt i64 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %298
  %325 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %326 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = load i64, i64* %27, align 8
  %330 = sub nsw i64 %328, %329
  br label %332

331:                                              ; preds = %298
  br label %332

332:                                              ; preds = %331, %324
  %333 = phi i64 [ %330, %324 ], [ 0, %331 ]
  store i64 %333, i64* %28, align 8
  %334 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %335 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = load i64, i64* %27, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  %339 = load i64, i64* %28, align 8
  %340 = call %struct.TYPE_65__* @MemToBuf(i32* %338, i64 %339)
  store %struct.TYPE_65__* %340, %struct.TYPE_65__** %29, align 8
  %341 = load %struct.TYPE_65__*, %struct.TYPE_65__** %26, align 8
  %342 = call i32 @FreeBuf(%struct.TYPE_65__* %341)
  %343 = call %struct.TYPE_65__* (...) @NewBuf()
  store %struct.TYPE_65__* %343, %struct.TYPE_65__** %30, align 8
  %344 = load %struct.TYPE_65__*, %struct.TYPE_65__** %30, align 8
  %345 = load i64, i64* %7, align 8
  %346 = call i32 @WriteBufInt(%struct.TYPE_65__* %344, i64 %345)
  %347 = load %struct.TYPE_65__*, %struct.TYPE_65__** %30, align 8
  %348 = load %struct.TYPE_65__*, %struct.TYPE_65__** %29, align 8
  %349 = call i32 @WriteBufBuf(%struct.TYPE_65__* %347, %struct.TYPE_65__* %348)
  %350 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_65__*, %struct.TYPE_65__** %30, align 8
  %361 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %360, i32 0, i32 1
  %362 = load i32*, i32** %361, align 8
  %363 = load %struct.TYPE_65__*, %struct.TYPE_65__** %30, align 8
  %364 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sext i32 %365 to i64
  %367 = call i32 @IkeHMac(i32 %353, i32* %77, i32 %356, i32 %359, i32* %362, i64 %366)
  %368 = load %struct.TYPE_65__*, %struct.TYPE_65__** %30, align 8
  %369 = call i32 @FreeBuf(%struct.TYPE_65__* %368)
  %370 = load %struct.TYPE_61__*, %struct.TYPE_61__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_69__*, %struct.TYPE_69__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_74__*, %struct.TYPE_74__** %375, align 8
  %377 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @Copy(%struct.TYPE_74__* %376, i32* %77, i32 %379)
  %381 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %382 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %383 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %384 = load i64, i64* %7, align 8
  %385 = load i64, i64* %31, align 8
  %386 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %387 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %390 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 8
  %392 = sext i32 %391 to i64
  %393 = load i32*, i32** %22, align 8
  %394 = load i64, i64* %21, align 8
  %395 = call %struct.TYPE_58__* @NewIPsecSa(%struct.TYPE_59__* %381, %struct.TYPE_63__* %382, %struct.TYPE_60__* %383, i32 1, i64 %384, i32 0, i32* %41, i64 %385, i32* %388, i64 %392, i32* null, i32 0, %struct.TYPE_74__* %5, i32* %393, i64 %394)
  store %struct.TYPE_58__* %395, %struct.TYPE_58__** %25, align 8
  %396 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %397 = load %struct.TYPE_63__*, %struct.TYPE_63__** %4, align 8
  %398 = load %struct.TYPE_60__*, %struct.TYPE_60__** %6, align 8
  %399 = load i64, i64* %7, align 8
  %400 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %401 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %404 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = load i32*, i32** %22, align 8
  %408 = load i64, i64* %21, align 8
  %409 = call %struct.TYPE_58__* @NewIPsecSa(%struct.TYPE_59__* %396, %struct.TYPE_63__* %397, %struct.TYPE_60__* %398, i32 1, i64 %399, i32 1, i32* %41, i64 0, i32* %402, i64 %406, i32* null, i32 0, %struct.TYPE_74__* %5, i32* %407, i64 %408)
  store %struct.TYPE_58__* %409, %struct.TYPE_58__** %24, align 8
  %410 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %411 = load %struct.TYPE_58__*, %struct.TYPE_58__** %25, align 8
  %412 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %411, i32 0, i32 2
  store %struct.TYPE_58__* %410, %struct.TYPE_58__** %412, align 8
  %413 = load %struct.TYPE_58__*, %struct.TYPE_58__** %25, align 8
  %414 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %415 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %414, i32 0, i32 2
  store %struct.TYPE_58__* %413, %struct.TYPE_58__** %415, align 8
  %416 = load %struct.TYPE_64__*, %struct.TYPE_64__** %35, align 8
  %417 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %418 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %417, i32 0, i32 1
  store %struct.TYPE_64__* %416, %struct.TYPE_64__** %418, align 8
  %419 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.TYPE_58__*, %struct.TYPE_58__** %25, align 8
  %423 = call i32 @Insert(i32 %421, %struct.TYPE_58__* %422)
  %424 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %428 = call i32 @Insert(i32 %426, %struct.TYPE_58__* %427)
  %429 = load %struct.TYPE_62__*, %struct.TYPE_62__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %429, i32 0, i32 0
  store i32 1, i32* %430, align 4
  %431 = load %struct.TYPE_59__*, %struct.TYPE_59__** %3, align 8
  %432 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %433 = load %struct.TYPE_62__*, %struct.TYPE_62__** %11, align 8
  %434 = call i32 @IPsecSaSendPacket(%struct.TYPE_59__* %431, %struct.TYPE_58__* %432, %struct.TYPE_62__* %433)
  %435 = load %struct.TYPE_58__*, %struct.TYPE_58__** %24, align 8
  %436 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %435, i32 0, i32 0
  store i32 3, i32* %436, align 8
  %437 = load %struct.TYPE_62__*, %struct.TYPE_62__** %11, align 8
  %438 = call i32 @IkeFree(%struct.TYPE_62__* %437)
  %439 = load i32*, i32** %22, align 8
  %440 = call i32 @Free(i32* %439)
  %441 = load %struct.TYPE_65__*, %struct.TYPE_65__** %29, align 8
  %442 = call i32 @FreeBuf(%struct.TYPE_65__* %441)
  %443 = load %struct.TYPE_65__*, %struct.TYPE_65__** %23, align 8
  %444 = call i32 @FreeBuf(%struct.TYPE_65__* %443)
  %445 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %445)
  store i32 0, i32* %10, align 4
  br label %446

446:                                              ; preds = %332, %61, %53, %47
  %447 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %10, align 4
  switch i32 %448, label %450 [
    i32 0, label %449
    i32 1, label %449
  ]

449:                                              ; preds = %446, %446
  ret void

450:                                              ; preds = %446
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsZero(i32*, i32) #2

declare dso_local i32 @Debug(i8*) #2

declare dso_local i32 @IPsecLog(%struct.TYPE_59__*, i32*, %struct.TYPE_60__*, i32*, i8*) #2

declare dso_local i32 @Copy(%struct.TYPE_74__*, i32*, i32) #2

declare dso_local i64 @GenerateNewMessageId(%struct.TYPE_59__*) #2

declare dso_local i32 @IkeCalcPhase2InitialIv(i32*, %struct.TYPE_60__*, i64) #2

declare dso_local %struct.TYPE_65__* @RandBuf(i32) #2

declare dso_local %struct.TYPE_64__* @IkeDhNewCtx(i32*) #2

declare dso_local %struct.TYPE_61__* @IkeNewDataPayload(i32, i32*, i32) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32* @NewListFast(i32*) #2

declare dso_local i32 @Add(i32*, %struct.TYPE_61__*) #2

declare dso_local i64 @GenerateNewIPsecSaSpi(%struct.TYPE_59__*, i32) #2

declare dso_local i64 @Endian32(i64) #2

declare dso_local %struct.TYPE_61__* @TransformSettingToTransformPayloadForIPsec(%struct.TYPE_59__*, %struct.TYPE_74__*) #2

declare dso_local %struct.TYPE_61__* @IkeNewProposalPayload(i32, i32, i64*, i32, i32) #2

declare dso_local i32 @NewListSingle(%struct.TYPE_61__*) #2

declare dso_local %struct.TYPE_61__* @IkeNewSaPayload(i32) #2

declare dso_local %struct.TYPE_61__* @IkeNewIdPayload(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @IsIP4(i32*) #2

declare dso_local %struct.TYPE_61__* @IkeNewNatOaPayload(i32, i32*) #2

declare dso_local %struct.TYPE_62__* @IkeNew(i32, i32, i32, i32, i32, i32, i64, i32*) #2

declare dso_local %struct.TYPE_65__* @IkeBuild(%struct.TYPE_62__*, i32*) #2

declare dso_local %struct.TYPE_65__* @MemToBuf(i32*, i64) #2

declare dso_local i32 @FreeBuf(%struct.TYPE_65__*) #2

declare dso_local %struct.TYPE_65__* @NewBuf(...) #2

declare dso_local i32 @WriteBufInt(%struct.TYPE_65__*, i64) #2

declare dso_local i32 @WriteBufBuf(%struct.TYPE_65__*, %struct.TYPE_65__*) #2

declare dso_local i32 @IkeHMac(i32, i32*, i32, i32, i32*, i64) #2

declare dso_local %struct.TYPE_58__* @NewIPsecSa(%struct.TYPE_59__*, %struct.TYPE_63__*, %struct.TYPE_60__*, i32, i64, i32, i32*, i64, i32*, i64, i32*, i32, %struct.TYPE_74__*, i32*, i64) #2

declare dso_local i32 @Insert(i32, %struct.TYPE_58__*) #2

declare dso_local i32 @IPsecSaSendPacket(%struct.TYPE_59__*, %struct.TYPE_58__*, %struct.TYPE_62__*) #2

declare dso_local i32 @IkeFree(%struct.TYPE_62__*) #2

declare dso_local i32 @Free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
