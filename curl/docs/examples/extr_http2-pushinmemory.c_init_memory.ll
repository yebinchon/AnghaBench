; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_init_memory.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_http2-pushinmemory.c_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Memory = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Memory*)* @init_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_memory(%struct.Memory* %0) #0 {
  %2 = alloca %struct.Memory*, align 8
  store %struct.Memory* %0, %struct.Memory** %2, align 8
  %3 = call i32 @malloc(i32 1)
  %4 = load %struct.Memory*, %struct.Memory** %2, align 8
  %5 = getelementptr inbounds %struct.Memory, %struct.Memory* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load %struct.Memory*, %struct.Memory** %2, align 8
  %7 = getelementptr inbounds %struct.Memory, %struct.Memory* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  ret void
}

declare dso_local i32 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
