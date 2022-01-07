; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_misc.c_print_adv_fields.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_misc.c_print_adv_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_hs_adv_fields = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i64, i32, i64, i32*, i32, i32*, i32*, i32, i64, i64, i32*, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLE_HS_ADV_MAX_SZ = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"    flags=0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"    uuids16(%scomplete)=\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"    uuids32(%scomplete)=\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"    uuids128(%scomplete)=\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"    name(%scomplete)=%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"    tx_pwr_lvl=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"    slave_itvl_range=\00", align 1
@BLE_HS_ADV_SLAVE_ITVL_RANGE_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"    svc_data_uuid16=\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"    public_tgt_addr=\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"public_tgt_addr=%s \00", align 1
@BLE_HS_ADV_PUBLIC_TGT_ADDR_ENTRY_LEN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"    appearance=0x%04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"    adv_itvl=0x%04x\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"    svc_data_uuid32=\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"    svc_data_uuid128=\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"    uri=\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"    mfg_data=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_adv_fields(%struct.ble_hs_adv_fields* %0) #0 {
  %2 = alloca %struct.ble_hs_adv_fields*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ble_hs_adv_fields* %0, %struct.ble_hs_adv_fields** %2, align 8
  %7 = load i32, i32* @BLE_HS_ADV_MAX_SZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %12 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @DEBUG, align 4
  %17 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %18 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %23 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %22, i32 0, i32 30
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = load i32, i32* @DEBUG, align 4
  %28 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %29 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %28, i32 0, i32 31
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %34 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %52, %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %38 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %43 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %42, i32 0, i32 30
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @print_uuid(i32* %48)
  %50 = load i32, i32* @DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* @DEBUG, align 4
  %57 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %21
  %59 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %60 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %59, i32 0, i32 28
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %95

63:                                               ; preds = %58
  %64 = load i32, i32* @DEBUG, align 4
  %65 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %66 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %65, i32 0, i32 29
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %89, %63
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %75 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %80 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %79, i32 0, i32 28
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = call i32 @print_uuid(i32* %85)
  %87 = load i32, i32* @DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %72

92:                                               ; preds = %72
  %93 = load i32, i32* @DEBUG, align 4
  %94 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %58
  %96 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %97 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %96, i32 0, i32 26
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = icmp ne %struct.TYPE_6__* %98, null
  br i1 %99, label %100, label %132

100:                                              ; preds = %95
  %101 = load i32, i32* @DEBUG, align 4
  %102 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %103 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %102, i32 0, i32 27
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %108 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %126, %100
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %112 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %117 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %116, i32 0, i32 26
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = call i32 @print_uuid(i32* %122)
  %124 = load i32, i32* @DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %109

129:                                              ; preds = %109
  %130 = load i32, i32* @DEBUG, align 4
  %131 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %95
  %133 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %134 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %133, i32 0, i32 25
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %166

137:                                              ; preds = %132
  %138 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %139 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = sub i64 %8, 1
  %143 = icmp ult i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %147 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %146, i32 0, i32 25
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %150 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @memcpy(i8* %10, i32* %148, i32 %151)
  %153 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %154 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %10, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i32, i32* @DEBUG, align 4
  %159 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %160 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %159, i32 0, i32 24
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %165 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %164, i8* %10)
  br label %166

166:                                              ; preds = %137, %132
  %167 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %168 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %167, i32 0, i32 23
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i32, i32* @DEBUG, align 4
  %173 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %174 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %173, i32 0, i32 22
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %172, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %179 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %178, i32 0, i32 21
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %192

182:                                              ; preds = %177
  %183 = load i32, i32* @DEBUG, align 4
  %184 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %185 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %186 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %185, i32 0, i32 21
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @BLE_HS_ADV_SLAVE_ITVL_RANGE_LEN, align 4
  %189 = call i32 @print_bytes(i32* %187, i32 %188)
  %190 = load i32, i32* @DEBUG, align 4
  %191 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %192

192:                                              ; preds = %182, %177
  %193 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %194 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %193, i32 0, i32 20
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %209

197:                                              ; preds = %192
  %198 = load i32, i32* @DEBUG, align 4
  %199 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %198, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %200 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %201 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %200, i32 0, i32 20
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %204 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %203, i32 0, i32 19
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @print_bytes(i32* %202, i32 %205)
  %207 = load i32, i32* @DEBUG, align 4
  %208 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %209

209:                                              ; preds = %197, %192
  %210 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %211 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %210, i32 0, i32 18
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %241

214:                                              ; preds = %209
  %215 = load i32, i32* @DEBUG, align 4
  %216 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %215, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %217 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %218 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %217, i32 0, i32 18
  %219 = load i32*, i32** %218, align 8
  store i32* %219, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %235, %214
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %223 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %238

226:                                              ; preds = %220
  %227 = load i32, i32* @DEBUG, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @addr_str(i32* %228)
  %230 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %227, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @BLE_HS_ADV_PUBLIC_TGT_ADDR_ENTRY_LEN, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = sext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %5, align 8
  br label %235

235:                                              ; preds = %226
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %220

238:                                              ; preds = %220
  %239 = load i32, i32* @DEBUG, align 4
  %240 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %241

241:                                              ; preds = %238, %209
  %242 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %243 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %242, i32 0, i32 17
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %241
  %247 = load i32, i32* @DEBUG, align 4
  %248 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %249 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %248, i32 0, i32 16
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %246, %241
  %253 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %254 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %253, i32 0, i32 15
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %252
  %258 = load i32, i32* @DEBUG, align 4
  %259 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %260 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %259, i32 0, i32 14
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %258, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %257, %252
  %264 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %265 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %264, i32 0, i32 13
  %266 = load i32*, i32** %265, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %280

268:                                              ; preds = %263
  %269 = load i32, i32* @DEBUG, align 4
  %270 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %271 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %272 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %271, i32 0, i32 13
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %275 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %274, i32 0, i32 12
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @print_bytes(i32* %273, i32 %276)
  %278 = load i32, i32* @DEBUG, align 4
  %279 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %278, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %280

280:                                              ; preds = %268, %263
  %281 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %282 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %281, i32 0, i32 11
  %283 = load i32*, i32** %282, align 8
  %284 = icmp ne i32* %283, null
  br i1 %284, label %285, label %297

285:                                              ; preds = %280
  %286 = load i32, i32* @DEBUG, align 4
  %287 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %286, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %288 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %289 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %288, i32 0, i32 11
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %292 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @print_bytes(i32* %290, i32 %293)
  %295 = load i32, i32* @DEBUG, align 4
  %296 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %297

297:                                              ; preds = %285, %280
  %298 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %299 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %298, i32 0, i32 9
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %314

302:                                              ; preds = %297
  %303 = load i32, i32* @DEBUG, align 4
  %304 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %305 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %306 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %305, i32 0, i32 9
  %307 = load i32*, i32** %306, align 8
  %308 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %309 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @print_bytes(i32* %307, i32 %310)
  %312 = load i32, i32* @DEBUG, align 4
  %313 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %314

314:                                              ; preds = %302, %297
  %315 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %316 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %315, i32 0, i32 7
  %317 = load i32*, i32** %316, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %331

319:                                              ; preds = %314
  %320 = load i32, i32* @DEBUG, align 4
  %321 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %320, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %322 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %323 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %322, i32 0, i32 7
  %324 = load i32*, i32** %323, align 8
  %325 = load %struct.ble_hs_adv_fields*, %struct.ble_hs_adv_fields** %2, align 8
  %326 = getelementptr inbounds %struct.ble_hs_adv_fields, %struct.ble_hs_adv_fields* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @print_bytes(i32* %324, i32 %327)
  %329 = load i32, i32* @DEBUG, align 4
  %330 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %331

331:                                              ; preds = %319, %314
  %332 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %332)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #2

declare dso_local i32 @print_uuid(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @print_bytes(i32*, i32) #2

declare dso_local i32 @addr_str(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
