; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_dom_reader_state_pop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_dom_reader_state_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32 }
%struct.dom_reader_state = type { i64, %struct.rmsgpack_dom_value** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rmsgpack_dom_value* (%struct.dom_reader_state*)* @dom_reader_state_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rmsgpack_dom_value* @dom_reader_state_pop(%struct.dom_reader_state* %0) #0 {
  %2 = alloca %struct.dom_reader_state*, align 8
  %3 = alloca %struct.rmsgpack_dom_value*, align 8
  store %struct.dom_reader_state* %0, %struct.dom_reader_state** %2, align 8
  %4 = load %struct.dom_reader_state*, %struct.dom_reader_state** %2, align 8
  %5 = getelementptr inbounds %struct.dom_reader_state, %struct.dom_reader_state* %4, i32 0, i32 1
  %6 = load %struct.rmsgpack_dom_value**, %struct.rmsgpack_dom_value*** %5, align 8
  %7 = load %struct.dom_reader_state*, %struct.dom_reader_state** %2, align 8
  %8 = getelementptr inbounds %struct.dom_reader_state, %struct.dom_reader_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %6, i64 %9
  %11 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %10, align 8
  store %struct.rmsgpack_dom_value* %11, %struct.rmsgpack_dom_value** %3, align 8
  %12 = load %struct.dom_reader_state*, %struct.dom_reader_state** %2, align 8
  %13 = getelementptr inbounds %struct.dom_reader_state, %struct.dom_reader_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %3, align 8
  ret %struct.rmsgpack_dom_value* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
