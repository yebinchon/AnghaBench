; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_flush_ts_streams.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_flush_ts_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @flush_ts_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @flush_ts_streams(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32* @hb_buffer_list_clear(i32* %3)
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @generate_output_data(%struct.TYPE_6__* %15, i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @hb_buffer_list_append(i32* %3, i32* %18)
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %7
  %24 = call i32* @hb_buffer_list_clear(i32* %3)
  ret i32* %24
}

declare dso_local i32* @hb_buffer_list_clear(i32*) #1

declare dso_local i32* @generate_output_data(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @hb_buffer_list_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
