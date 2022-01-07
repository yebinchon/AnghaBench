; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_decode_bpdu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_decode_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32 }
%struct.bstp_cbpdu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*, i32, i64*, i32 }
%struct.bstp_config_unit = type { i32, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_2__, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i32 }

@BSTP_PDU_STPMASK = common dso_local global i32 0, align 4
@BSTP_ROLE_DESIGNATED = common dso_local global i8* null, align 8
@BSTP_PDU_RSTPMASK = common dso_local global i32 0, align 4
@BSTP_PDU_F_TCA = common dso_local global i32 0, align 4
@BSTP_PDU_F_P = common dso_local global i32 0, align 4
@BSTP_PDU_F_A = common dso_local global i32 0, align 4
@BSTP_PDU_F_L = common dso_local global i32 0, align 4
@BSTP_PDU_F_F = common dso_local global i32 0, align 4
@BSTP_PDU_F_TC = common dso_local global i32 0, align 4
@BSTP_PDU_PRMASK = common dso_local global i32 0, align 4
@BSTP_PDU_PRSHIFT = common dso_local global i32 0, align 4
@BSTP_ROLE_ROOT = common dso_local global i8* null, align 8
@BSTP_ROLE_ALTERNATE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*, %struct.bstp_cbpdu*, %struct.bstp_config_unit*)* @bstp_decode_bpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_decode_bpdu(%struct.bstp_port* %0, %struct.bstp_cbpdu* %1, %struct.bstp_config_unit* %2) #0 {
  %4 = alloca %struct.bstp_port*, align 8
  %5 = alloca %struct.bstp_cbpdu*, align 8
  %6 = alloca %struct.bstp_config_unit*, align 8
  %7 = alloca i32, align 4
  store %struct.bstp_port* %0, %struct.bstp_port** %4, align 8
  store %struct.bstp_cbpdu* %1, %struct.bstp_cbpdu** %5, align 8
  store %struct.bstp_config_unit* %2, %struct.bstp_config_unit** %6, align 8
  %8 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %9 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %8, i32 0, i32 12
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @ntohs(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = shl i32 %12, 48
  %14 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %15 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %14, i32 0, i32 11
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 40
  %21 = or i32 %13, %20
  %22 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %23 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %22, i32 0, i32 11
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 32
  %29 = or i32 %21, %28
  %30 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %31 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %30, i32 0, i32 11
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 24
  %37 = or i32 %29, %36
  %38 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %39 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %38, i32 0, i32 11
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 16
  %45 = or i32 %37, %44
  %46 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %47 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %46, i32 0, i32 11
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 %51, 8
  %53 = or i32 %45, %52
  %54 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %55 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %54, i32 0, i32 11
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 5
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 0
  %61 = or i32 %53, %60
  %62 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %63 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %66 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @ntohs(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = shl i32 %69, 48
  %71 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %72 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %71, i32 0, i32 9
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = shl i32 %76, 40
  %78 = or i32 %70, %77
  %79 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %80 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %79, i32 0, i32 9
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = shl i32 %84, 32
  %86 = or i32 %78, %85
  %87 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %88 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %87, i32 0, i32 9
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 24
  %94 = or i32 %86, %93
  %95 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %96 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %95, i32 0, i32 9
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 %100, 16
  %102 = or i32 %94, %101
  %103 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %104 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %103, i32 0, i32 9
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 4
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = shl i32 %108, 8
  %110 = or i32 %102, %109
  %111 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %112 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %111, i32 0, i32 9
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 5
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 0
  %118 = or i32 %110, %117
  %119 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %120 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %123 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ntohl(i32 %124)
  %126 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %127 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  store i32 %125, i32* %128, align 8
  %129 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %130 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @ntohs(i32 %131)
  %133 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %134 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %133, i32 0, i32 12
  store i8* %132, i8** %134, align 8
  %135 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %136 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @ntohs(i32 %137)
  %139 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %140 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %139, i32 0, i32 11
  store i8* %138, i8** %140, align 8
  %141 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %142 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @ntohs(i32 %143)
  %145 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %146 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %145, i32 0, i32 10
  store i8* %144, i8** %146, align 8
  %147 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %148 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @ntohs(i32 %149)
  %151 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %152 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %151, i32 0, i32 9
  store i8* %150, i8** %152, align 8
  %153 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %154 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @ntohs(i32 %155)
  %157 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %158 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  store i8* %156, i8** %159, align 8
  %160 = load %struct.bstp_port*, %struct.bstp_port** %4, align 8
  %161 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %164 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %163, i32 0, i32 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  store i32 %162, i32* %165, align 8
  %166 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %167 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %170 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %172 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %7, align 4
  %174 = load %struct.bstp_cbpdu*, %struct.bstp_cbpdu** %5, align 8
  %175 = getelementptr inbounds %struct.bstp_cbpdu, %struct.bstp_cbpdu* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  switch i32 %176, label %188 [
    i32 128, label %177
    i32 129, label %184
  ]

177:                                              ; preds = %3
  %178 = load i32, i32* @BSTP_PDU_STPMASK, align 4
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load i8*, i8** @BSTP_ROLE_DESIGNATED, align 8
  %182 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %183 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %182, i32 0, i32 6
  store i8* %181, i8** %183, align 8
  br label %188

184:                                              ; preds = %3
  %185 = load i32, i32* @BSTP_PDU_RSTPMASK, align 4
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %7, align 4
  br label %188

188:                                              ; preds = %3, %184, %177
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @BSTP_PDU_F_TCA, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  %195 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %196 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @BSTP_PDU_F_P, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 1, i32 0
  %203 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %204 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @BSTP_PDU_F_A, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 1, i32 0
  %211 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %212 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %211, i32 0, i32 2
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @BSTP_PDU_F_L, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i32 1, i32 0
  %219 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %220 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @BSTP_PDU_F_F, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i32 1, i32 0
  %227 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %228 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* @BSTP_PDU_F_TC, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  %235 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %236 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* @BSTP_PDU_PRMASK, align 4
  %239 = and i32 %237, %238
  %240 = load i32, i32* @BSTP_PDU_PRSHIFT, align 4
  %241 = ashr i32 %239, %240
  switch i32 %241, label %254 [
    i32 130, label %242
    i32 132, label %246
    i32 131, label %250
  ]

242:                                              ; preds = %188
  %243 = load i8*, i8** @BSTP_ROLE_ROOT, align 8
  %244 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %245 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %244, i32 0, i32 6
  store i8* %243, i8** %245, align 8
  br label %254

246:                                              ; preds = %188
  %247 = load i8*, i8** @BSTP_ROLE_ALTERNATE, align 8
  %248 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %249 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %248, i32 0, i32 6
  store i8* %247, i8** %249, align 8
  br label %254

250:                                              ; preds = %188
  %251 = load i8*, i8** @BSTP_ROLE_DESIGNATED, align 8
  %252 = load %struct.bstp_config_unit*, %struct.bstp_config_unit** %6, align 8
  %253 = getelementptr inbounds %struct.bstp_config_unit, %struct.bstp_config_unit* %252, i32 0, i32 6
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %188, %250, %246, %242
  ret void
}

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
