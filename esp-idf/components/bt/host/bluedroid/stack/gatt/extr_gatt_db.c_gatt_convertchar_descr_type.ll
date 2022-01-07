; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatt_convertchar_descr_type.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_db.c_gatt_convertchar_descr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@LEN_UUID_16 = common dso_local global i32 0, align 4
@GATT_UUID_CHAR_EXT_PROP = common dso_local global i32 0, align 4
@GATT_DESCR_EXT_DSCPTOR = common dso_local global i32 0, align 4
@GATT_DESCR_USER_DSCPTOR = common dso_local global i32 0, align 4
@GATT_DESCR_CLT_CONFIG = common dso_local global i32 0, align 4
@GATT_DESCR_SVR_CONFIG = common dso_local global i32 0, align 4
@GATT_DESCR_PRES_FORMAT = common dso_local global i32 0, align 4
@GATT_DESCR_AGGR_FORMAT = common dso_local global i32 0, align 4
@GATT_DESCR_VALID_RANGE = common dso_local global i32 0, align 4
@GATT_DESCR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_convertchar_descr_type(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca { i64, i32 }, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca { i64, i32 }, align 4
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* @GATT_UUID_CHAR_EXT_PROP, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = bitcast { i64, i32 }* %5 to i8*
  %28 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 4
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = bitcast { i64, i32 }* %6 to i8*
  %34 = bitcast %struct.TYPE_9__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @gatt_uuid_compare(i64 %30, i32 %32, i64 %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* @GATT_DESCR_EXT_DSCPTOR, align 4
  store i32 %42, i32* %2, align 4
  br label %177

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = bitcast { i64, i32 }* %7 to i8*
  %50 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = bitcast { i64, i32 }* %8 to i8*
  %56 = bitcast %struct.TYPE_9__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 12, i1 false)
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 4
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @gatt_uuid_compare(i64 %52, i32 %54, i64 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* @GATT_DESCR_USER_DSCPTOR, align 4
  store i32 %64, i32* %2, align 4
  br label %177

65:                                               ; preds = %43
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = bitcast { i64, i32 }* %9 to i8*
  %72 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 12, i1 false)
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %74 = load i64, i64* %73, align 4
  %75 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = bitcast { i64, i32 }* %10 to i8*
  %78 = bitcast %struct.TYPE_9__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %80 = load i64, i64* %79, align 4
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @gatt_uuid_compare(i64 %74, i32 %76, i64 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %65
  %86 = load i32, i32* @GATT_DESCR_CLT_CONFIG, align 4
  store i32 %86, i32* %2, align 4
  br label %177

87:                                               ; preds = %65
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = bitcast { i64, i32 }* %11 to i8*
  %94 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 12, i1 false)
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %96 = load i64, i64* %95, align 4
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = bitcast { i64, i32 }* %12 to i8*
  %100 = bitcast %struct.TYPE_9__* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %102 = load i64, i64* %101, align 4
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @gatt_uuid_compare(i64 %96, i32 %98, i64 %102, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* @GATT_DESCR_SVR_CONFIG, align 4
  store i32 %108, i32* %2, align 4
  br label %177

109:                                              ; preds = %87
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = bitcast { i64, i32 }* %13 to i8*
  %116 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %118 = load i64, i64* %117, align 4
  %119 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = bitcast { i64, i32 }* %14 to i8*
  %122 = bitcast %struct.TYPE_9__* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 12, i1 false)
  %123 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %124 = load i64, i64* %123, align 4
  %125 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @gatt_uuid_compare(i64 %118, i32 %120, i64 %124, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %109
  %130 = load i32, i32* @GATT_DESCR_PRES_FORMAT, align 4
  store i32 %130, i32* %2, align 4
  br label %177

131:                                              ; preds = %109
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = bitcast { i64, i32 }* %15 to i8*
  %138 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 12, i1 false)
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %140 = load i64, i64* %139, align 4
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = bitcast { i64, i32 }* %16 to i8*
  %144 = bitcast %struct.TYPE_9__* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 12, i1 false)
  %145 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %146 = load i64, i64* %145, align 4
  %147 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @gatt_uuid_compare(i64 %140, i32 %142, i64 %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %131
  %152 = load i32, i32* @GATT_DESCR_AGGR_FORMAT, align 4
  store i32 %152, i32* %2, align 4
  br label %177

153:                                              ; preds = %131
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = bitcast { i64, i32 }* %17 to i8*
  %160 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 12, i1 false)
  %161 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %162 = load i64, i64* %161, align 4
  %163 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = bitcast { i64, i32 }* %18 to i8*
  %166 = bitcast %struct.TYPE_9__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 12, i1 false)
  %167 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %168 = load i64, i64* %167, align 4
  %169 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @gatt_uuid_compare(i64 %162, i32 %164, i64 %168, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %153
  %174 = load i32, i32* @GATT_DESCR_VALID_RANGE, align 4
  store i32 %174, i32* %2, align 4
  br label %177

175:                                              ; preds = %153
  %176 = load i32, i32* @GATT_DESCR_UNKNOWN, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %173, %151, %129, %107, %85, %63, %41
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i64 @gatt_uuid_compare(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
