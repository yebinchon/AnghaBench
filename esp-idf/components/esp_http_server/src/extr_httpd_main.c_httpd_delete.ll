; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_delete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.httpd_data*, %struct.httpd_data*, %struct.httpd_data*, %struct.httpd_req_aux }
%struct.httpd_req_aux = type { %struct.httpd_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.httpd_data*)* @httpd_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpd_delete(%struct.httpd_data* %0) #0 {
  %2 = alloca %struct.httpd_data*, align 8
  %3 = alloca %struct.httpd_req_aux*, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %2, align 8
  %4 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %5 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %4, i32 0, i32 3
  store %struct.httpd_req_aux* %5, %struct.httpd_req_aux** %3, align 8
  %6 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %7 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %6, i32 0, i32 2
  %8 = load %struct.httpd_data*, %struct.httpd_data** %7, align 8
  %9 = call i32 @free(%struct.httpd_data* %8)
  %10 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %3, align 8
  %11 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %10, i32 0, i32 0
  %12 = load %struct.httpd_data*, %struct.httpd_data** %11, align 8
  %13 = call i32 @free(%struct.httpd_data* %12)
  %14 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %15 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %14, i32 0, i32 1
  %16 = load %struct.httpd_data*, %struct.httpd_data** %15, align 8
  %17 = call i32 @free(%struct.httpd_data* %16)
  %18 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %19 = call i32 @httpd_unregister_all_uri_handlers(%struct.httpd_data* %18)
  %20 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %21 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %20, i32 0, i32 0
  %22 = load %struct.httpd_data*, %struct.httpd_data** %21, align 8
  %23 = call i32 @free(%struct.httpd_data* %22)
  %24 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %25 = call i32 @free(%struct.httpd_data* %24)
  ret void
}

declare dso_local i32 @free(%struct.httpd_data*) #1

declare dso_local i32 @httpd_unregister_all_uri_handlers(%struct.httpd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
