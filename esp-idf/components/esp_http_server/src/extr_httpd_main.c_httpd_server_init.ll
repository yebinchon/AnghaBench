; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_server_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.httpd_data = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i32 }
%struct.sockaddr = type { i32 }

@PF_INET6 = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error in socket (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@IN6ADDR_ANY_INIT = common dso_local global %struct.in6_addr zeroinitializer, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"error enabling SO_REUSEADDR (%d)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"error in bind (%d)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"error in listen (%d)\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"error in creating ctrl socket (%d)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"error in creating msg socket (%d)\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.httpd_data*)* @httpd_server_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_server_init(%struct.httpd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.in6_addr, align 4
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  %11 = load i32, i32* @PF_INET6, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i32 @socket(i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @ESP_LOGE(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @ESP_FAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %120

22:                                               ; preds = %1
  %23 = bitcast %struct.in6_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.in6_addr* @IN6ADDR_ANY_INIT to i8*), i64 4, i1 false)
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %25 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %26 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @htons(i32 %28)
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  %31 = bitcast %struct.in6_addr* %30 to i8*
  %32 = bitcast %struct.in6_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 2
  %34 = load i32, i32* @PF_INET6, align 4
  store i32 %34, i32* %33, align 4
  store i32 1, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SOL_SOCKET, align 4
  %37 = load i32, i32* @SO_REUSEADDR, align 4
  %38 = call i64 @setsockopt(i32 %35, i32 %36, i32 %37, i32* %7, i32 4)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 @LOG_FMT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @ESP_LOGW(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %22
  %46 = load i32, i32* %4, align 4
  %47 = bitcast %struct.sockaddr_in6* %6 to %struct.sockaddr*
  %48 = call i32 @bind(i32 %46, %struct.sockaddr* %47, i32 12)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 @LOG_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @ESP_LOGE(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* @ESP_FAIL, align 4
  store i32 %58, i32* %2, align 4
  br label %120

59:                                               ; preds = %45
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %62 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @listen(i32 %60, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @ESP_LOGE(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* @ESP_FAIL, align 4
  store i32 %75, i32* %2, align 4
  br label %120

76:                                               ; preds = %59
  %77 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %78 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cs_create_ctrl_sock(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i32, i32* @TAG, align 4
  %86 = call i32 @LOG_FMT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @ESP_LOGE(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i32, i32* @ESP_FAIL, align 4
  store i32 %91, i32* %2, align 4
  br label %120

92:                                               ; preds = %76
  %93 = load i32, i32* @AF_INET, align 4
  %94 = load i32, i32* @SOCK_DGRAM, align 4
  %95 = load i32, i32* @IPPROTO_UDP, align 4
  %96 = call i32 @socket(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 @LOG_FMT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32, i32* @errno, align 4
  %103 = call i32 @ESP_LOGE(i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @close(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @close(i32 %106)
  %108 = load i32, i32* @ESP_FAIL, align 4
  store i32 %108, i32* %2, align 4
  br label %120

109:                                              ; preds = %92
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %112 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %115 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %118 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @ESP_OK, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %109, %99, %84, %68, %51, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @cs_create_ctrl_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
