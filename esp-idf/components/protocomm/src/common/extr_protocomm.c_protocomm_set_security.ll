; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_set_security.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_set_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64 (i32**)*, i32 (i32*)* }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@protocomm_common_security_handler = common dso_local global i32 0, align 4
@SEC_EP = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error adding security endpoint\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error initializing security\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Error allocating Proof of Possession\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @protocomm_set_security(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_8__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = icmp eq %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %4
  %20 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %20, i64* %5, align 8
  br label %122

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %27, i64* %5, align 8
  br label %122

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @protocomm_common_security_handler, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = bitcast %struct.TYPE_7__* %32 to i8*
  %34 = load i32, i32* @SEC_EP, align 4
  %35 = call i64 @protocomm_add_endpoint_internal(%struct.TYPE_7__* %29, i8* %30, i32 %31, i8* %33, i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %5, align 8
  br label %122

43:                                               ; preds = %28
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64 (i32**)*, i64 (i32**)** %45, align 8
  %47 = icmp ne i64 (i32**)* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64 (i32**)*, i64 (i32**)** %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = call i64 %51(i32** %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @ESP_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @protocomm_remove_endpoint(%struct.TYPE_7__* %61, i8* %62)
  %64 = load i64, i64* %10, align 8
  store i64 %64, i64* %5, align 8
  br label %122

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %120

72:                                               ; preds = %66
  %73 = call i32* @malloc(i32 4)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %72
  %81 = load i32, i32* @TAG, align 4
  %82 = call i32 @ESP_LOGE(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = icmp ne %struct.TYPE_8__* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32 (i32*)*, i32 (i32*)** %91, align 8
  %93 = icmp ne i32 (i32*)* %92, null
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32 (i32*)*, i32 (i32*)** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 %99(i32* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %107, align 8
  br label %108

108:                                              ; preds = %94, %87, %80
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @protocomm_remove_endpoint(%struct.TYPE_7__* %109, i8* %110)
  %112 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %112, i64* %5, align 8
  br label %122

113:                                              ; preds = %72
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = bitcast i32* %116 to i8*
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @memcpy(i8* %117, i32* %118, i32 4)
  br label %120

120:                                              ; preds = %113, %66
  %121 = load i64, i64* @ESP_OK, align 8
  store i64 %121, i64* %5, align 8
  br label %122

122:                                              ; preds = %120, %108, %58, %39, %26, %19
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local i64 @protocomm_add_endpoint_internal(%struct.TYPE_7__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @protocomm_remove_endpoint(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
