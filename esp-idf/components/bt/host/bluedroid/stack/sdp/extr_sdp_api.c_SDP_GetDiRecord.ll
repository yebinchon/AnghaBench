; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_GetDiRecord.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_GetDiRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }

@SDP_NO_DI_RECORD_FOUND = common dso_local global i64 0, align 8
@UUID_SERVCLASS_PNP_INFORMATION = common dso_local global i32 0, align 4
@SDP_SUCCESS = common dso_local global i64 0, align 8
@ATTR_ID_CLIENT_EXE_URL = common dso_local global i32 0, align 4
@SDP_MAX_ATTR_LEN = common dso_local global i32 0, align 4
@ATTR_ID_SERVICE_DESCRIPTION = common dso_local global i32 0, align 4
@ATTR_ID_DOCUMENTATION_URL = common dso_local global i32 0, align 4
@ATTR_ID_SPECIFICATION_ID = common dso_local global i32 0, align 4
@SDP_ERR_ATTR_NOT_PRESENT = common dso_local global i64 0, align 8
@ATTR_ID_VENDOR_ID = common dso_local global i32 0, align 4
@ATTR_ID_VENDOR_ID_SOURCE = common dso_local global i32 0, align 4
@ATTR_ID_PRODUCT_ID = common dso_local global i32 0, align 4
@ATTR_ID_PRODUCT_VERSION = common dso_local global i32 0, align 4
@ATTR_ID_PRIMARY_RECORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SDP_GetDiRecord(i64 %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i64, i64* @SDP_NO_DI_RECORD_FOUND, align 8
  store i64 %11, i64* %7, align 8
  store i64 1, i64* %8, align 8
  store i32* null, i32** %9, align 8
  br label %12

12:                                               ; preds = %28, %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @UUID_SERVCLASS_PNP_INFORMATION, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call i32* @SDP_FindServiceInDb(i32* %13, i32 %14, i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* @SDP_SUCCESS, align 8
  store i64 %25, i64* %7, align 8
  br label %31

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %12, label %31

31:                                               ; preds = %28, %24
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @SDP_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %167

35:                                               ; preds = %31
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @ATTR_ID_CLIENT_EXE_URL, align 4
  %38 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %36, i32 %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %10, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %45 = call i32 @SDP_AttrStringCopy(i32 %42, %struct.TYPE_13__* %43, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @ATTR_ID_SERVICE_DESCRIPTION, align 4
  %48 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %46, i32 %47)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %55 = call i32 @SDP_AttrStringCopy(i32 %52, %struct.TYPE_13__* %53, i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* @ATTR_ID_DOCUMENTATION_URL, align 4
  %58 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %56, i32 %57)
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %64 = load i32, i32* @SDP_MAX_ATTR_LEN, align 4
  %65 = call i32 @SDP_AttrStringCopy(i32 %62, %struct.TYPE_13__* %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @ATTR_ID_SPECIFICATION_ID, align 4
  %68 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %66, i32 %67)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %10, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %35
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %81

79:                                               ; preds = %35
  %80 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %79, %71
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @ATTR_ID_VENDOR_ID, align 4
  %84 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %82, i32 %83)
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %10, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  br label %98

96:                                               ; preds = %81
  %97 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %96, %87
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* @ATTR_ID_VENDOR_ID_SOURCE, align 4
  %101 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %99, i32 %100)
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %10, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = icmp ne %struct.TYPE_13__* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  store i32 %109, i32* %112, align 8
  br label %115

113:                                              ; preds = %98
  %114 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %114, i64* %7, align 8
  br label %115

115:                                              ; preds = %113, %104
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* @ATTR_ID_PRODUCT_ID, align 4
  %118 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %116, i32 %117)
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %10, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %120 = icmp ne %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 4
  br label %132

130:                                              ; preds = %115
  %131 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %131, i64* %7, align 8
  br label %132

132:                                              ; preds = %130, %121
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @ATTR_ID_PRODUCT_VERSION, align 4
  %135 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %133, i32 %134)
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %10, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = icmp ne %struct.TYPE_13__* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  br label %149

147:                                              ; preds = %132
  %148 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %147, %138
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* @ATTR_ID_PRIMARY_RECORD, align 4
  %152 = call %struct.TYPE_13__* @SDP_FindAttributeInRec(i32* %150, i32 %151)
  store %struct.TYPE_13__* %152, %struct.TYPE_13__** %10, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %154 = icmp ne %struct.TYPE_13__* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  br label %166

164:                                              ; preds = %149
  %165 = load i64, i64* @SDP_ERR_ATTR_NOT_PRESENT, align 8
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %164, %155
  br label %167

167:                                              ; preds = %166, %31
  %168 = load i64, i64* %7, align 8
  ret i64 %168
}

declare dso_local i32* @SDP_FindServiceInDb(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @SDP_FindAttributeInRec(i32*, i32) #1

declare dso_local i32 @SDP_AttrStringCopy(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
