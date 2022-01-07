; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_validate_document.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_libretrodb.c_libretrodb_validate_document.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value }

@RDT_MAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RDT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmsgpack_dom_value*)* @libretrodb_validate_document to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libretrodb_validate_document(%struct.rmsgpack_dom_value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmsgpack_dom_value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmsgpack_dom_value, align 8
  %6 = alloca %struct.rmsgpack_dom_value, align 8
  %7 = alloca i32, align 4
  store %struct.rmsgpack_dom_value* %0, %struct.rmsgpack_dom_value** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %3, align 8
  %9 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RDT_MAP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %96

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %91, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %3, align 8
  %20 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %17
  %26 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %3, align 8
  %27 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast %struct.rmsgpack_dom_value* %5 to i8*
  %36 = bitcast %struct.rmsgpack_dom_value* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 40, i1 false)
  %37 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %3, align 8
  %38 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = bitcast %struct.rmsgpack_dom_value* %6 to i8*
  %47 = bitcast %struct.rmsgpack_dom_value* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 40, i1 false)
  %48 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RDT_STRING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %25
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %96

55:                                               ; preds = %25
  %56 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %96

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %5, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 36
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %96

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RDT_MAP, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %91

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @libretrodb_validate_document(%struct.rmsgpack_dom_value* %6)
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %96

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %81
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %17

94:                                               ; preds = %17
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %88, %73, %61, %52, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
