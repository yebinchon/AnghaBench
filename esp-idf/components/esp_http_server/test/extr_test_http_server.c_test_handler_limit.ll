; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/test/extr_test_http_server.c_test_handler_limit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/test/extr_test_http_server.c_test_handler_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@HTTPD_TEST_MAX_URI_HANDLERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@basic_sanity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_handler_limit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %13 = call i32 @num_digits(i32 %12)
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = mul nuw i64 %11, %15
  %18 = alloca i8, i64 %17, align 16
  store i64 %11, i64* %5, align 8
  store i64 %15, i64* %6, align 8
  %19 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = alloca %struct.TYPE_4__, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %46, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = mul nsw i64 %30, %15
  %32 = getelementptr inbounds i8, i8* %18, i64 %31
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %36
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = mul nsw i64 %39, %15
  %41 = getelementptr inbounds i8, i8* %18, i64 %40
  %42 = call i64 @handler_limit_uri(i8* %41)
  %43 = bitcast %struct.TYPE_4__* %8 to i64*
  store i64 %42, i64* %43, align 4
  %44 = bitcast %struct.TYPE_4__* %37 to i8*
  %45 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 4 %45, i64 8, i1 false)
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %23

49:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %57
  %59 = call i64 @httpd_register_uri_handler(i32 %55, %struct.TYPE_4__* %58)
  %60 = load i64, i64* @ESP_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @TEST_ASSERT(i32 %62)
  br label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %50

67:                                               ; preds = %50
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %70
  %72 = call i64 @httpd_register_uri_handler(i32 %68, %struct.TYPE_4__* %71)
  %73 = load i64, i64* @ESP_OK, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @TEST_ASSERT(i32 %75)
  %77 = load i32, i32* %2, align 4
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = call i64 @httpd_unregister_uri_handler(i32 %77, i32 %80, i32 %83)
  %85 = load i64, i64* @ESP_OK, align 8
  %86 = icmp eq i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @TEST_ASSERT(i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 16
  %96 = call i64 @httpd_unregister_uri_handler(i32 %89, i32 %92, i32 %95)
  %97 = load i64, i64* @ESP_OK, align 8
  %98 = icmp ne i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @TEST_ASSERT(i32 %99)
  %101 = load i32, i32* %2, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %103 = call i64 @httpd_register_uri_handler(i32 %101, %struct.TYPE_4__* %102)
  %104 = load i64, i64* @ESP_OK, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @TEST_ASSERT(i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 0
  %110 = call i64 @httpd_register_uri_handler(i32 %108, %struct.TYPE_4__* %109)
  %111 = load i64, i64* @ESP_OK, align 8
  %112 = icmp ne i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @TEST_ASSERT(i32 %113)
  %115 = load i32, i32* %2, align 4
  %116 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %117
  %119 = call i64 @httpd_register_uri_handler(i32 %115, %struct.TYPE_4__* %118)
  %120 = load i64, i64* @ESP_OK, align 8
  %121 = icmp ne i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @TEST_ASSERT(i32 %122)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %145, %67
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @HTTPD_TEST_MAX_URI_HANDLERS, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %148

128:                                              ; preds = %124
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @httpd_unregister_uri_handler(i32 %129, i32 %134, i32 %139)
  %141 = load i64, i64* @ESP_OK, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @TEST_ASSERT(i32 %143)
  br label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %3, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %3, align 4
  br label %124

148:                                              ; preds = %124
  store i32 0, i32* @basic_sanity, align 4
  %149 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

declare dso_local i32 @num_digits(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @handler_limit_uri(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @httpd_register_uri_handler(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @httpd_unregister_uri_handler(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
