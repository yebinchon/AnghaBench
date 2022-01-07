; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_mdns_console_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_mdns_console_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdns_console_register() #0 {
  %1 = call i32 (...) @register_mdns_init()
  %2 = call i32 (...) @register_mdns_free()
  %3 = call i32 (...) @register_mdns_set_hostname()
  %4 = call i32 (...) @register_mdns_set_instance()
  %5 = call i32 (...) @register_mdns_service_add()
  %6 = call i32 (...) @register_mdns_service_remove()
  %7 = call i32 (...) @register_mdns_service_instance_set()
  %8 = call i32 (...) @register_mdns_service_port_set()
  %9 = call i32 (...) @register_mdns_service_txt_replace()
  %10 = call i32 (...) @register_mdns_service_txt_set()
  %11 = call i32 (...) @register_mdns_service_txt_remove()
  %12 = call i32 (...) @register_mdns_service_remove_all()
  %13 = call i32 (...) @register_mdns_query_a()
  %14 = call i32 (...) @register_mdns_query_aaaa()
  %15 = call i32 (...) @register_mdns_query_txt()
  %16 = call i32 (...) @register_mdns_query_srv()
  %17 = call i32 (...) @register_mdns_query_ptr()
  %18 = call i32 (...) @register_mdns_query_ip()
  %19 = call i32 (...) @register_mdns_query_svc()
  ret void
}

declare dso_local i32 @register_mdns_init(...) #1

declare dso_local i32 @register_mdns_free(...) #1

declare dso_local i32 @register_mdns_set_hostname(...) #1

declare dso_local i32 @register_mdns_set_instance(...) #1

declare dso_local i32 @register_mdns_service_add(...) #1

declare dso_local i32 @register_mdns_service_remove(...) #1

declare dso_local i32 @register_mdns_service_instance_set(...) #1

declare dso_local i32 @register_mdns_service_port_set(...) #1

declare dso_local i32 @register_mdns_service_txt_replace(...) #1

declare dso_local i32 @register_mdns_service_txt_set(...) #1

declare dso_local i32 @register_mdns_service_txt_remove(...) #1

declare dso_local i32 @register_mdns_service_remove_all(...) #1

declare dso_local i32 @register_mdns_query_a(...) #1

declare dso_local i32 @register_mdns_query_aaaa(...) #1

declare dso_local i32 @register_mdns_query_txt(...) #1

declare dso_local i32 @register_mdns_query_srv(...) #1

declare dso_local i32 @register_mdns_query_ptr(...) #1

declare dso_local i32 @register_mdns_query_ip(...) #1

declare dso_local i32 @register_mdns_query_svc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
