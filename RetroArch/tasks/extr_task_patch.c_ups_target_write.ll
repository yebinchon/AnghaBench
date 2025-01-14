; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_ups_target_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_patch.c_ups_target_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ups_data = type { i64, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ups_data*, i32)* @ups_target_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ups_target_write(%struct.ups_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ups_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ups_data* %0, %struct.ups_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %6 = icmp ne %struct.ups_data* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %9 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %12 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %18 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %21 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %16, i32* %23, align 4
  %24 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %25 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = xor i32 %26, -1
  %28 = call i32 @encoding_crc32(i32 %27, i32* %4, i32 1)
  %29 = xor i32 %28, -1
  %30 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %31 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %15, %7, %2
  %33 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %34 = icmp ne %struct.ups_data* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.ups_data*, %struct.ups_data** %3, align 8
  %37 = getelementptr inbounds %struct.ups_data, %struct.ups_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @encoding_crc32(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
