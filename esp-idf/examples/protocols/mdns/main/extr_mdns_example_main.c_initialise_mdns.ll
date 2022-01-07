; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/mdns/main/extr_mdns_example_main.c_initialise_mdns.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/mdns/main/extr_mdns_example_main.c_initialise_mdns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mdns hostname set to: [%s]\00", align 1
@EXAMPLE_MDNS_INSTANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"board\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"esp32\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ESP32-WebServer\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_http\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"_tcp\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"/foobar\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialise_mdns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialise_mdns() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [3 x %struct.TYPE_3__], align 16
  %3 = call i8* (...) @generate_hostname()
  store i8* %3, i8** %1, align 8
  %4 = call i32 (...) @mdns_init()
  %5 = call i32 @ESP_ERROR_CHECK(i32 %4)
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @mdns_hostname_set(i8* %6)
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  %9 = load i32, i32* @TAG, align 4
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @EXAMPLE_MDNS_INSTANCE, align 4
  %13 = call i32 @mdns_instance_name_set(i32 %12)
  %14 = call i32 @ESP_ERROR_CHECK(i32 %13)
  %15 = bitcast [3 x %struct.TYPE_3__]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 48, i1 false)
  %16 = bitcast i8* %15 to [3 x %struct.TYPE_3__]*
  %17 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %16, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %22, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %16, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %2, i64 0, i64 0
  %27 = call i32 @mdns_service_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 80, %struct.TYPE_3__* %26, i32 3)
  %28 = call i32 @ESP_ERROR_CHECK(i32 %27)
  %29 = call i32 @mdns_service_txt_item_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %30 = call i32 @ESP_ERROR_CHECK(i32 %29)
  %31 = call i32 @mdns_service_txt_item_set(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %32 = call i32 @ESP_ERROR_CHECK(i32 %31)
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 @free(i8* %33)
  ret void
}

declare dso_local i8* @generate_hostname(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @mdns_init(...) #1

declare dso_local i32 @mdns_hostname_set(i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*) #1

declare dso_local i32 @mdns_instance_name_set(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mdns_service_add(i8*, i8*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mdns_service_txt_item_set(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
