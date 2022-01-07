; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_destroy_list.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_buffer_destroy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_list = type { %struct.buffer_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_list*)* @buffer_destroy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @buffer_destroy_list(%struct.buffer_list* %0) #0 {
  %2 = alloca %struct.buffer_list*, align 8
  %3 = alloca %struct.buffer_list*, align 8
  store %struct.buffer_list* %0, %struct.buffer_list** %2, align 8
  %4 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %5 = icmp ne %struct.buffer_list* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %8 = getelementptr inbounds %struct.buffer_list, %struct.buffer_list* %7, i32 0, i32 0
  %9 = load %struct.buffer_list*, %struct.buffer_list** %8, align 8
  store %struct.buffer_list* %9, %struct.buffer_list** %3, align 8
  %10 = load %struct.buffer_list*, %struct.buffer_list** %2, align 8
  %11 = call i32 @DELETE(%struct.buffer_list* %10)
  %12 = load %struct.buffer_list*, %struct.buffer_list** %3, align 8
  call void @buffer_destroy_list(%struct.buffer_list* %12)
  br label %13

13:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @DELETE(%struct.buffer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
