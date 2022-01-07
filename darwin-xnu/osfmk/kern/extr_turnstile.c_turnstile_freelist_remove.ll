; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_freelist_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_freelist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@ts_free_elm = common dso_local global i32 0, align 4
@TURNSTILE_STATE_FREELIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.turnstile* (%struct.turnstile*)* @turnstile_freelist_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.turnstile* @turnstile_freelist_remove(%struct.turnstile* %0) #0 {
  %2 = alloca %struct.turnstile*, align 8
  %3 = alloca %struct.turnstile*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %2, align 8
  %4 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  store %struct.turnstile* %4, %struct.turnstile** %3, align 8
  %5 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %6 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %5, i32 0, i32 0
  %7 = call i32 @SLIST_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = call %struct.turnstile* @SLIST_FIRST(i32* %13)
  store %struct.turnstile* %14, %struct.turnstile** %3, align 8
  %15 = load %struct.turnstile*, %struct.turnstile** %2, align 8
  %16 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %15, i32 0, i32 0
  %17 = load i32, i32* @ts_free_elm, align 4
  %18 = call i32 @SLIST_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %20 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %21 = icmp ne %struct.turnstile* %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %25 = load i32, i32* @TURNSTILE_STATE_FREELIST, align 4
  %26 = call i32 @turnstile_state_remove(%struct.turnstile* %24, i32 %25)
  %27 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %28 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %27, i32 0, i32 0
  %29 = call i32 @SLIST_INIT(i32* %28)
  %30 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  ret %struct.turnstile* %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.turnstile* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @turnstile_state_remove(%struct.turnstile*, i32) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
