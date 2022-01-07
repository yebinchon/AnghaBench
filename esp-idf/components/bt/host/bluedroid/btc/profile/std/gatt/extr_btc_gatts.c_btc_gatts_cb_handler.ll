; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gatts.c_btc_gatts_cb_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/gatt/extr_btc_gatts.c_btc_gatts_cb_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_88__ = type { i32, i64 }
%struct.TYPE_87__ = type { %struct.TYPE_84__, %struct.TYPE_81__, %struct.TYPE_79__, %struct.TYPE_77__, %struct.TYPE_75__, %struct.TYPE_73__, %struct.TYPE_70__, %struct.TYPE_68__, %struct.TYPE_65__, %struct.TYPE_64__, %struct.TYPE_63__, %struct.TYPE_61__, %struct.TYPE_59__, %struct.TYPE_58__, %struct.TYPE_56__, %struct.TYPE_53__, %struct.TYPE_50__, %struct.TYPE_94__, %struct.TYPE_92__, %struct.TYPE_90__, %struct.TYPE_60__ }
%struct.TYPE_84__ = type { i32, i32, i32 }
%struct.TYPE_81__ = type { i32, i8* }
%struct.TYPE_79__ = type { i32 }
%struct.TYPE_77__ = type { i8*, i32 }
%struct.TYPE_75__ = type { i32 }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_70__ = type { i32, i32, i8* }
%struct.TYPE_68__ = type { %struct.TYPE_67__, i32, i8* }
%struct.TYPE_67__ = type { i32, i32, i32 }
%struct.TYPE_65__ = type { i32, i32 }
%struct.TYPE_64__ = type { i32, i32 }
%struct.TYPE_63__ = type { i32, i32 }
%struct.TYPE_61__ = type { i32, i32, i32, i32 }
%struct.TYPE_59__ = type { i32, i32, i32, i32 }
%struct.TYPE_58__ = type { i32, i32, i32 }
%struct.TYPE_56__ = type { %struct.TYPE_55__, i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__, i32 }
%struct.TYPE_54__ = type { i32, i32 }
%struct.TYPE_53__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_50__ = type { i32, i8* }
%struct.TYPE_94__ = type { i32, i32, i32, i8* }
%struct.TYPE_92__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_90__ = type { i32, i32, i32, i32, i32, i32, i8* }
%struct.TYPE_60__ = type { i32, i32 }
%struct.TYPE_86__ = type { %struct.TYPE_85__, %struct.TYPE_83__, %struct.TYPE_80__, %struct.TYPE_78__, %struct.TYPE_76__, %struct.TYPE_74__, %struct.TYPE_72__, %struct.TYPE_66__, %struct.TYPE_62__, %struct.TYPE_57__, %struct.TYPE_52__, %struct.TYPE_89__ }
%struct.TYPE_85__ = type { i32, i32, i32, i32 }
%struct.TYPE_83__ = type { i32, i32 }
%struct.TYPE_80__ = type { i32, i32 }
%struct.TYPE_78__ = type { i32, i32 }
%struct.TYPE_76__ = type { i32, i32 }
%struct.TYPE_74__ = type { i32, i32 }
%struct.TYPE_72__ = type { i32, i32, i32, i32, %struct.TYPE_69__ }
%struct.TYPE_69__ = type { i32, i32, i32 }
%struct.TYPE_66__ = type { i32, i32, i32 }
%struct.TYPE_62__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_57__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_52__ = type { i32, i32, i32, i32, i32, %struct.TYPE_51__*, i32, i32 }
%struct.TYPE_51__ = type { i32, i32, %struct.TYPE_93__, %struct.TYPE_91__ }
%struct.TYPE_93__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_91__ = type { i32, i32, i32, i32 }
%struct.TYPE_89__ = type { i32, %struct.TYPE_82__, i32 }
%struct.TYPE_82__ = type { %struct.TYPE_71__ }
%struct.TYPE_71__ = type { i32 }

@ESP_GATTS_REG_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_UNREG_EVT = common dso_local global i32 0, align 4
@ESP_BD_ADDR_LEN = common dso_local global i32 0, align 4
@ESP_GATTS_READ_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_WRITE_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_EXEC_WRITE_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_MTU_EVT = common dso_local global i32 0, align 4
@ESP_GATT_OK = common dso_local global i32 0, align 4
@ESP_GATTS_CONF_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_CREATE_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_ADD_INCL_SRVC_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_ADD_CHAR_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_ADD_CHAR_DESCR_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_DELETE_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_START_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_STOP_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_CONNECT_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_DISCONNECT_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_SEND_SERVICE_CHANGE_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_CONGEST_EVT = common dso_local global i32 0, align 4
@ESP_GATTS_SET_ATTR_VAL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_gatts_cb_handler(%struct.TYPE_88__* %0) #0 {
  %2 = alloca %struct.TYPE_88__*, align 8
  %3 = alloca %struct.TYPE_87__, align 8
  %4 = alloca %struct.TYPE_86__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_88__* %0, %struct.TYPE_88__** %2, align 8
  %6 = load %struct.TYPE_88__*, %struct.TYPE_88__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_86__*
  store %struct.TYPE_86__* %9, %struct.TYPE_86__** %4, align 8
  %10 = load %struct.TYPE_88__*, %struct.TYPE_88__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_88__, %struct.TYPE_88__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %710 [
    i32 133, label %13
    i32 140, label %35
    i32 134, label %43
    i32 128, label %110
    i32 138, label %202
    i32 136, label %248
    i32 145, label %272
    i32 142, label %329
    i32 148, label %372
    i32 149, label %398
    i32 150, label %430
    i32 141, label %462
    i32 130, label %482
    i32 129, label %502
    i32 143, label %522
    i32 139, label %570
    i32 135, label %600
    i32 147, label %613
    i32 146, label %626
    i32 132, label %647
    i32 137, label %661
    i32 144, label %662
    i32 131, label %684
  ]

13:                                               ; preds = %1
  %14 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 20
  %23 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_82__, %struct.TYPE_82__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 20
  %31 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @ESP_GATTS_REG_EVT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @btc_gatts_cb_to_app(i32 %32, i32 %33, %struct.TYPE_87__* %3)
  br label %711

35:                                               ; preds = %1
  %36 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* @ESP_GATTS_UNREG_EVT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @btc_gatts_cb_to_app(i32 %40, i32 %41, %struct.TYPE_87__* null)
  br label %711

43:                                               ; preds = %1
  %44 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %44, i32 0, i32 10
  %46 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BTC_GATT_GET_GATT_IF(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %49, i32 0, i32 10
  %51 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @BTC_GATT_GET_CONN_ID(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %55 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %61 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %63 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %70 = call i32 @memcpy(i32 %64, i32 %68, i32 %69)
  %71 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %71, i32 0, i32 10
  %73 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %72, i32 0, i32 5
  %74 = load %struct.TYPE_51__*, %struct.TYPE_51__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %79 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %80, i32 0, i32 10
  %82 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_51__*, %struct.TYPE_51__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %88 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %89, i32 0, i32 10
  %91 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_51__*, %struct.TYPE_51__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %97 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %99, i32 0, i32 5
  %101 = load %struct.TYPE_51__*, %struct.TYPE_51__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_91__, %struct.TYPE_91__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 19
  %106 = getelementptr inbounds %struct.TYPE_90__, %struct.TYPE_90__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @ESP_GATTS_READ_EVT, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @btc_gatts_cb_to_app(i32 %107, i32 %108, %struct.TYPE_87__* %3)
  br label %711

110:                                              ; preds = %1
  %111 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %111, i32 0, i32 10
  %113 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @BTC_GATT_GET_GATT_IF(i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %116, i32 0, i32 10
  %118 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @BTC_GATT_GET_CONN_ID(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %122 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %123, i32 0, i32 10
  %125 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %128 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %130 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %132, i32 0, i32 10
  %134 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %137 = call i32 @memcpy(i32 %131, i32 %135, i32 %136)
  %138 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_51__*, %struct.TYPE_51__** %140, align 8
  %142 = icmp eq %struct.TYPE_51__* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %110
  br label %711

144:                                              ; preds = %110
  %145 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %145, i32 0, i32 10
  %147 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_51__*, %struct.TYPE_51__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %153 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %152, i32 0, i32 5
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %154, i32 0, i32 10
  %156 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_51__*, %struct.TYPE_51__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %162 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_51__*, %struct.TYPE_51__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %171 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %172, i32 0, i32 10
  %174 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %173, i32 0, i32 5
  %175 = load %struct.TYPE_51__*, %struct.TYPE_51__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %180 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %181, i32 0, i32 10
  %183 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %182, i32 0, i32 5
  %184 = load %struct.TYPE_51__*, %struct.TYPE_51__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %189 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %190, i32 0, i32 10
  %192 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_51__*, %struct.TYPE_51__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_93__, %struct.TYPE_93__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 18
  %198 = getelementptr inbounds %struct.TYPE_92__, %struct.TYPE_92__* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* @ESP_GATTS_WRITE_EVT, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @btc_gatts_cb_to_app(i32 %199, i32 %200, %struct.TYPE_87__* %3)
  br label %711

202:                                              ; preds = %1
  %203 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @BTC_GATT_GET_GATT_IF(i32 %206)
  store i32 %207, i32* %5, align 4
  %208 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %208, i32 0, i32 10
  %210 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @BTC_GATT_GET_CONN_ID(i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 17
  %214 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %215, i32 0, i32 10
  %217 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 17
  %220 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %219, i32 0, i32 2
  store i32 %218, i32* %220, align 8
  %221 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 17
  %222 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %224, i32 0, i32 10
  %226 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %229 = call i32 @memcpy(i32 %223, i32 %227, i32 %228)
  %230 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %230, i32 0, i32 10
  %232 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_51__*, %struct.TYPE_51__** %232, align 8
  %234 = icmp eq %struct.TYPE_51__* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %202
  br label %711

236:                                              ; preds = %202
  %237 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %237, i32 0, i32 10
  %239 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %238, i32 0, i32 5
  %240 = load %struct.TYPE_51__*, %struct.TYPE_51__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 17
  %244 = getelementptr inbounds %struct.TYPE_94__, %struct.TYPE_94__* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @ESP_GATTS_EXEC_WRITE_EVT, align 4
  %246 = load i32, i32* %5, align 4
  %247 = call i32 @btc_gatts_cb_to_app(i32 %245, i32 %246, %struct.TYPE_87__* %3)
  br label %711

248:                                              ; preds = %1
  %249 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %249, i32 0, i32 10
  %251 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @BTC_GATT_GET_GATT_IF(i32 %252)
  store i32 %253, i32* %5, align 4
  %254 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %254, i32 0, i32 10
  %256 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @BTC_GATT_GET_CONN_ID(i32 %257)
  %259 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 16
  %260 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  %261 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %261, i32 0, i32 10
  %263 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_51__*, %struct.TYPE_51__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 16
  %268 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* @ESP_GATTS_MTU_EVT, align 4
  %270 = load i32, i32* %5, align 4
  %271 = call i32 @btc_gatts_cb_to_app(i32 %269, i32 %270, %struct.TYPE_87__* %3)
  br label %711

272:                                              ; preds = %1
  %273 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %273, i32 0, i32 10
  %275 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @BTC_GATT_GET_GATT_IF(i32 %276)
  store i32 %277, i32* %5, align 4
  %278 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %278, i32 0, i32 10
  %280 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i8* @BTC_GATT_GET_CONN_ID(i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %284 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %283, i32 0, i32 4
  store i8* %282, i8** %284, align 8
  %285 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %285, i32 0, i32 10
  %287 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %290 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 4
  %291 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %291, i32 0, i32 10
  %293 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %296 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %295, i32 0, i32 2
  store i32 %294, i32* %296, align 8
  %297 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %297, i32 0, i32 10
  %299 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @ESP_GATT_OK, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %322

303:                                              ; preds = %272
  %304 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %304, i32 0, i32 10
  %306 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %303
  %310 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %310, i32 0, i32 10
  %312 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %315 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %316, i32 0, i32 10
  %318 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %321 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %320, i32 0, i32 1
  store i32 %319, i32* %321, align 4
  br label %325

322:                                              ; preds = %303, %272
  %323 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 15
  %324 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %323, i32 0, i32 0
  store i32 0, i32* %324, align 8
  br label %325

325:                                              ; preds = %322, %309
  %326 = load i32, i32* @ESP_GATTS_CONF_EVT, align 4
  %327 = load i32, i32* %5, align 4
  %328 = call i32 @btc_gatts_cb_to_app(i32 %326, i32 %327, %struct.TYPE_87__* %3)
  br label %711

329:                                              ; preds = %1
  %330 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %330, i32 0, i32 9
  %332 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %331, i32 0, i32 5
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %5, align 4
  %334 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %334, i32 0, i32 9
  %336 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 14
  %339 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 4
  %340 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %340, i32 0, i32 9
  %342 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 14
  %345 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %344, i32 0, i32 1
  store i32 %343, i32* %345, align 4
  %346 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %346, i32 0, i32 9
  %348 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 14
  %351 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %351, i32 0, i32 1
  store i32 %349, i32* %352, align 4
  %353 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 14
  %358 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %359, i32 0, i32 1
  store i32 %356, i32* %360, align 4
  %361 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 14
  %362 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %365, i32 0, i32 9
  %367 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %366, i32 0, i32 0
  %368 = call i32 @bta_to_btc_uuid(i32* %364, i32* %367)
  %369 = load i32, i32* @ESP_GATTS_CREATE_EVT, align 4
  %370 = load i32, i32* %5, align 4
  %371 = call i32 @btc_gatts_cb_to_app(i32 %369, i32 %370, %struct.TYPE_87__* %3)
  br label %711

372:                                              ; preds = %1
  %373 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %373, i32 0, i32 8
  %375 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %374, i32 0, i32 4
  %376 = load i32, i32* %375, align 8
  store i32 %376, i32* %5, align 4
  %377 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 13
  %382 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 8
  %383 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %383, i32 0, i32 8
  %385 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 13
  %388 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %387, i32 0, i32 1
  store i32 %386, i32* %388, align 4
  %389 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %389, i32 0, i32 8
  %391 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 13
  %394 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %393, i32 0, i32 0
  store i32 %392, i32* %394, align 8
  %395 = load i32, i32* @ESP_GATTS_ADD_INCL_SRVC_EVT, align 4
  %396 = load i32, i32* %5, align 4
  %397 = call i32 @btc_gatts_cb_to_app(i32 %395, i32 %396, %struct.TYPE_87__* %3)
  br label %711

398:                                              ; preds = %1
  %399 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %399, i32 0, i32 8
  %401 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  store i32 %402, i32* %5, align 4
  %403 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %403, i32 0, i32 8
  %405 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 12
  %408 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %407, i32 0, i32 3
  store i32 %406, i32* %408, align 4
  %409 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %409, i32 0, i32 8
  %411 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 12
  %414 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %413, i32 0, i32 2
  store i32 %412, i32* %414, align 8
  %415 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %415, i32 0, i32 8
  %417 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 12
  %420 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %419, i32 0, i32 1
  store i32 %418, i32* %420, align 4
  %421 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 12
  %422 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %423, i32 0, i32 8
  %425 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %424, i32 0, i32 0
  %426 = call i32 @bta_to_btc_uuid(i32* %422, i32* %425)
  %427 = load i32, i32* @ESP_GATTS_ADD_CHAR_EVT, align 4
  %428 = load i32, i32* %5, align 4
  %429 = call i32 @btc_gatts_cb_to_app(i32 %427, i32 %428, %struct.TYPE_87__* %3)
  br label %711

430:                                              ; preds = %1
  %431 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %431, i32 0, i32 8
  %433 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  store i32 %434, i32* %5, align 4
  %435 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %435, i32 0, i32 8
  %437 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 11
  %440 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %439, i32 0, i32 3
  store i32 %438, i32* %440, align 4
  %441 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %441, i32 0, i32 8
  %443 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 11
  %446 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %445, i32 0, i32 2
  store i32 %444, i32* %446, align 8
  %447 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %447, i32 0, i32 8
  %449 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 11
  %452 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 4
  %453 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 11
  %454 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %453, i32 0, i32 0
  %455 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %455, i32 0, i32 8
  %457 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %456, i32 0, i32 0
  %458 = call i32 @bta_to_btc_uuid(i32* %454, i32* %457)
  %459 = load i32, i32* @ESP_GATTS_ADD_CHAR_DESCR_EVT, align 4
  %460 = load i32, i32* %5, align 4
  %461 = call i32 @btc_gatts_cb_to_app(i32 %459, i32 %460, %struct.TYPE_87__* %3)
  br label %711

462:                                              ; preds = %1
  %463 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %463, i32 0, i32 7
  %465 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  store i32 %466, i32* %5, align 4
  %467 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %467, i32 0, i32 7
  %469 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 10
  %472 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %471, i32 0, i32 1
  store i32 %470, i32* %472, align 4
  %473 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %473, i32 0, i32 7
  %475 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 10
  %478 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %477, i32 0, i32 0
  store i32 %476, i32* %478, align 8
  %479 = load i32, i32* @ESP_GATTS_DELETE_EVT, align 4
  %480 = load i32, i32* %5, align 4
  %481 = call i32 @btc_gatts_cb_to_app(i32 %479, i32 %480, %struct.TYPE_87__* %3)
  br label %711

482:                                              ; preds = %1
  %483 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %483, i32 0, i32 7
  %485 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* %5, align 4
  %487 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %488 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %487, i32 0, i32 7
  %489 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 4
  %491 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 9
  %492 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %491, i32 0, i32 1
  store i32 %490, i32* %492, align 4
  %493 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 9
  %498 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %497, i32 0, i32 0
  store i32 %496, i32* %498, align 8
  %499 = load i32, i32* @ESP_GATTS_START_EVT, align 4
  %500 = load i32, i32* %5, align 4
  %501 = call i32 @btc_gatts_cb_to_app(i32 %499, i32 %500, %struct.TYPE_87__* %3)
  br label %711

502:                                              ; preds = %1
  %503 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %503, i32 0, i32 7
  %505 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  store i32 %506, i32* %5, align 4
  %507 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %507, i32 0, i32 7
  %509 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 8
  %512 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %511, i32 0, i32 1
  store i32 %510, i32* %512, align 4
  %513 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 8
  %518 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %517, i32 0, i32 0
  store i32 %516, i32* %518, align 8
  %519 = load i32, i32* @ESP_GATTS_STOP_EVT, align 4
  %520 = load i32, i32* %5, align 4
  %521 = call i32 @btc_gatts_cb_to_app(i32 %519, i32 %520, %struct.TYPE_87__* %3)
  br label %711

522:                                              ; preds = %1
  %523 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %523, i32 0, i32 6
  %525 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %524, i32 0, i32 3
  %526 = load i32, i32* %525, align 4
  store i32 %526, i32* %5, align 4
  %527 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %528 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %527, i32 0, i32 6
  %529 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = call i8* @BTC_GATT_GET_CONN_ID(i32 %530)
  %532 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 7
  %533 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %532, i32 0, i32 2
  store i8* %531, i8** %533, align 8
  %534 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 7
  %535 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %534, i32 0, i32 1
  %536 = load i32, i32* %535, align 4
  %537 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %537, i32 0, i32 6
  %539 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 8
  %541 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %542 = call i32 @memcpy(i32 %536, i32 %540, i32 %541)
  %543 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %543, i32 0, i32 6
  %545 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %544, i32 0, i32 4
  %546 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %545, i32 0, i32 2
  %547 = load i32, i32* %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 7
  %549 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %549, i32 0, i32 2
  store i32 %547, i32* %550, align 8
  %551 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %551, i32 0, i32 6
  %553 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %552, i32 0, i32 4
  %554 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 4
  %556 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 7
  %557 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %557, i32 0, i32 1
  store i32 %555, i32* %558, align 4
  %559 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %560 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %559, i32 0, i32 6
  %561 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %560, i32 0, i32 4
  %562 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 7
  %565 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %565, i32 0, i32 0
  store i32 %563, i32* %566, align 8
  %567 = load i32, i32* @ESP_GATTS_CONNECT_EVT, align 4
  %568 = load i32, i32* %5, align 4
  %569 = call i32 @btc_gatts_cb_to_app(i32 %567, i32 %568, %struct.TYPE_87__* %3)
  br label %711

570:                                              ; preds = %1
  %571 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %571, i32 0, i32 6
  %573 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %572, i32 0, i32 3
  %574 = load i32, i32* %573, align 4
  store i32 %574, i32* %5, align 4
  %575 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %575, i32 0, i32 6
  %577 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = call i8* @BTC_GATT_GET_CONN_ID(i32 %578)
  %580 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 6
  %581 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %580, i32 0, i32 2
  store i8* %579, i8** %581, align 8
  %582 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %582, i32 0, i32 6
  %584 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 6
  %587 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %586, i32 0, i32 1
  store i32 %585, i32* %587, align 4
  %588 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 6
  %589 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %592 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %591, i32 0, i32 6
  %593 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @ESP_BD_ADDR_LEN, align 4
  %596 = call i32 @memcpy(i32 %590, i32 %594, i32 %595)
  %597 = load i32, i32* @ESP_GATTS_DISCONNECT_EVT, align 4
  %598 = load i32, i32* %5, align 4
  %599 = call i32 @btc_gatts_cb_to_app(i32 %597, i32 %598, %struct.TYPE_87__* %3)
  br label %711

600:                                              ; preds = %1
  %601 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %602 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %602, i32 0, i32 1
  %604 = load i32, i32* %603, align 4
  store i32 %604, i32* %5, align 4
  %605 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %606 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 5
  %610 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %609, i32 0, i32 0
  store i32 %608, i32* %610, align 4
  %611 = load i32, i32* %5, align 4
  %612 = call i32 @btc_gatts_cb_to_app(i32 135, i32 %611, %struct.TYPE_87__* %3)
  br label %711

613:                                              ; preds = %1
  %614 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %615 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %614, i32 0, i32 4
  %616 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  store i32 %617, i32* %5, align 4
  %618 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %619 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %618, i32 0, i32 4
  %620 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 4
  %623 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %622, i32 0, i32 0
  store i32 %621, i32* %623, align 8
  %624 = load i32, i32* %5, align 4
  %625 = call i32 @btc_gatts_cb_to_app(i32 147, i32 %624, %struct.TYPE_87__* %3)
  br label %711

626:                                              ; preds = %1
  %627 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %628 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %627, i32 0, i32 3
  %629 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 8
  %631 = call i32 @BTC_GATT_GET_GATT_IF(i32 %630)
  store i32 %631, i32* %5, align 4
  %632 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %633 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %632, i32 0, i32 3
  %634 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %633, i32 0, i32 1
  %635 = load i32, i32* %634, align 4
  %636 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 3
  %637 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %636, i32 0, i32 1
  store i32 %635, i32* %637, align 8
  %638 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %639 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %638, i32 0, i32 3
  %640 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 8
  %642 = call i8* @BTC_GATT_GET_CONN_ID(i32 %641)
  %643 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 3
  %644 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %643, i32 0, i32 0
  store i8* %642, i8** %644, align 8
  %645 = load i32, i32* %5, align 4
  %646 = call i32 @btc_gatts_cb_to_app(i32 146, i32 %645, %struct.TYPE_87__* %3)
  br label %711

647:                                              ; preds = %1
  %648 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %649 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %648, i32 0, i32 2
  %650 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  store i32 %651, i32* %5, align 4
  %652 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %653 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %653, i32 0, i32 0
  %655 = load i32, i32* %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 2
  %657 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %656, i32 0, i32 0
  store i32 %655, i32* %657, align 8
  %658 = load i32, i32* @ESP_GATTS_SEND_SERVICE_CHANGE_EVT, align 4
  %659 = load i32, i32* %5, align 4
  %660 = call i32 @btc_gatts_cb_to_app(i32 %658, i32 %659, %struct.TYPE_87__* %3)
  br label %711

661:                                              ; preds = %1
  br label %711

662:                                              ; preds = %1
  %663 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %664 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = call i32 @BTC_GATT_GET_GATT_IF(i32 %666)
  store i32 %667, i32* %5, align 4
  %668 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %669 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %669, i32 0, i32 1
  %671 = load i32, i32* %670, align 4
  %672 = call i8* @BTC_GATT_GET_CONN_ID(i32 %671)
  %673 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %673, i32 0, i32 1
  store i8* %672, i8** %674, align 8
  %675 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.TYPE_83__, %struct.TYPE_83__* %676, i32 0, i32 0
  %678 = load i32, i32* %677, align 8
  %679 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 1
  %680 = getelementptr inbounds %struct.TYPE_81__, %struct.TYPE_81__* %679, i32 0, i32 0
  store i32 %678, i32* %680, align 8
  %681 = load i32, i32* @ESP_GATTS_CONGEST_EVT, align 4
  %682 = load i32, i32* %5, align 4
  %683 = call i32 @btc_gatts_cb_to_app(i32 %681, i32 %682, %struct.TYPE_87__* %3)
  br label %711

684:                                              ; preds = %1
  %685 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %686 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %685, i32 0, i32 0
  %687 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %686, i32 0, i32 3
  %688 = load i32, i32* %687, align 4
  store i32 %688, i32* %5, align 4
  %689 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %690 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %690, i32 0, i32 2
  %692 = load i32, i32* %691, align 8
  %693 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 0
  %694 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %693, i32 0, i32 2
  store i32 %692, i32* %694, align 8
  %695 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %696 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 0
  %700 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %699, i32 0, i32 1
  store i32 %698, i32* %700, align 4
  %701 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %702 = getelementptr inbounds %struct.TYPE_86__, %struct.TYPE_86__* %701, i32 0, i32 0
  %703 = getelementptr inbounds %struct.TYPE_85__, %struct.TYPE_85__* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = getelementptr inbounds %struct.TYPE_87__, %struct.TYPE_87__* %3, i32 0, i32 0
  %706 = getelementptr inbounds %struct.TYPE_84__, %struct.TYPE_84__* %705, i32 0, i32 0
  store i32 %704, i32* %706, align 8
  %707 = load i32, i32* @ESP_GATTS_SET_ATTR_VAL_EVT, align 4
  %708 = load i32, i32* %5, align 4
  %709 = call i32 @btc_gatts_cb_to_app(i32 %707, i32 %708, %struct.TYPE_87__* %3)
  br label %711

710:                                              ; preds = %1
  br label %711

711:                                              ; preds = %710, %684, %662, %661, %647, %626, %613, %600, %570, %522, %502, %482, %462, %430, %398, %372, %329, %325, %248, %236, %235, %144, %143, %43, %35, %13
  %712 = load %struct.TYPE_88__*, %struct.TYPE_88__** %2, align 8
  %713 = load %struct.TYPE_86__*, %struct.TYPE_86__** %4, align 8
  %714 = call i32 @btc_gatts_cb_param_copy_free(%struct.TYPE_88__* %712, %struct.TYPE_86__* %713)
  ret void
}

declare dso_local i32 @btc_gatts_cb_to_app(i32, i32, %struct.TYPE_87__*) #1

declare dso_local i32 @BTC_GATT_GET_GATT_IF(i32) #1

declare dso_local i8* @BTC_GATT_GET_CONN_ID(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bta_to_btc_uuid(i32*, i32*) #1

declare dso_local i32 @btc_gatts_cb_param_copy_free(%struct.TYPE_88__*, %struct.TYPE_86__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
