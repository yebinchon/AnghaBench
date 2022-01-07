; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_db_add_service_declaration.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatts_db_add_service_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, i32 }

@LEN_UUID_16 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"add_service_declaration\00", align 1
@GATT_UUID_PRI_SERVICE = common dso_local global i32 0, align 4
@GATT_UUID_SEC_SERVICE = common dso_local global i32 0, align 4
@GATT_PERM_READ = common dso_local global i32 0, align 4
@LEN_UUID_32 = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_16__*, i64)* @gatts_db_add_service_declaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gatts_db_add_service_declaration(i32* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %11 = load i64, i64* @LEN_UUID_16, align 8
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %14 = bitcast %struct.TYPE_14__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 12, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %16 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %9, align 8
  %18 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @GATT_UUID_PRI_SERVICE, align 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @GATT_UUID_SEC_SERVICE, align 4
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @GATT_PERM_READ, align 4
  %32 = call i64 @allocate_attr_in_db(i32* %30, %struct.TYPE_16__* %8, i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %7, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %115

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_13__** %38 to i8**
  %40 = call i64 @copy_extra_byte_in_db(i32* %36, i8** %39, i32 32)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %35
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @LEN_UUID_16, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i64, i64* @LEN_UUID_16, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  br label %112

66:                                               ; preds = %42
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LEN_UUID_32, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load i8*, i8** @LEN_UUID_128, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i8* %73, i8** %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gatt_convert_uuid32_to_uuid128(i32 %85, i32 %89)
  br label %111

91:                                               ; preds = %66
  %92 = load i8*, i8** @LEN_UUID_128, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i8* %92, i8** %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** @LEN_UUID_128, align 8
  %110 = call i32 @memcpy(i32 %104, i32 %108, i8* %109)
  br label %111

111:                                              ; preds = %91, %72
  br label %112

112:                                              ; preds = %111, %48
  %113 = load i64, i64* @TRUE, align 8
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %112, %35
  br label %115

115:                                              ; preds = %114, %29
  %116 = load i64, i64* %9, align 8
  ret i64 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #2

declare dso_local i64 @allocate_attr_in_db(i32*, %struct.TYPE_16__*, i32) #2

declare dso_local i64 @copy_extra_byte_in_db(i32*, i8**, i32) #2

declare dso_local i32 @gatt_convert_uuid32_to_uuid128(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
