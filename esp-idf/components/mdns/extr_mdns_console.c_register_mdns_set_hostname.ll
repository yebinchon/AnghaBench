; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_register_mdns_set_hostname.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns_console.c_register_mdns_set_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"<hostname>\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Hostname that the server will advertise\00", align 1
@mdns_set_hostname_args = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mdns_set_hostname\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Set MDNS Server hostname\00", align 1
@cmd_mdns_set_hostname = common dso_local global i32 0, align 4
@__const.register_mdns_set_hostname.cmd_set_hostname = private unnamed_addr constant %struct.TYPE_4__ { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), %struct.TYPE_5__* @mdns_set_hostname_args, i32* @cmd_mdns_set_hostname, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_mdns_set_hostname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_mdns_set_hostname() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @arg_str1(i32* null, i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mdns_set_hostname_args, i32 0, i32 1), align 4
  %3 = call i32 @arg_end(i32 2)
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mdns_set_hostname_args, i32 0, i32 0), align 4
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_4__* @__const.register_mdns_set_hostname.cmd_set_hostname to i8*), i64 40, i1 false)
  %5 = call i32 @esp_console_cmd_register(%struct.TYPE_4__* %1)
  %6 = call i32 @ESP_ERROR_CHECK(i32 %5)
  ret void
}

declare dso_local i32 @arg_str1(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
