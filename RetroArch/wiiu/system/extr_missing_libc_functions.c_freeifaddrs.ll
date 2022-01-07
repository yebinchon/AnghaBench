; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_freeifaddrs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_missing_libc_functions.c_freeifaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { %struct.ifaddrs*, %struct.ifaddrs*, %struct.ifaddrs*, %struct.ifaddrs* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeifaddrs(%struct.ifaddrs* %0) #0 {
  %2 = alloca %struct.ifaddrs*, align 8
  store %struct.ifaddrs* %0, %struct.ifaddrs** %2, align 8
  %3 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %4 = icmp ne %struct.ifaddrs* %3, null
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %7 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %6, i32 0, i32 3
  %8 = load %struct.ifaddrs*, %struct.ifaddrs** %7, align 8
  %9 = icmp ne %struct.ifaddrs* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %12 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %11, i32 0, i32 3
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %14 = call i32 @free(%struct.ifaddrs* %13)
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %16 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %15, i32 0, i32 3
  store %struct.ifaddrs* null, %struct.ifaddrs** %16, align 8
  br label %17

17:                                               ; preds = %10, %5
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 2
  %20 = load %struct.ifaddrs*, %struct.ifaddrs** %19, align 8
  %21 = icmp ne %struct.ifaddrs* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 2
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %24, align 8
  %26 = call i32 @free(%struct.ifaddrs* %25)
  %27 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %28 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %27, i32 0, i32 2
  store %struct.ifaddrs* null, %struct.ifaddrs** %28, align 8
  br label %29

29:                                               ; preds = %22, %17
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %31 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %30, i32 0, i32 1
  %32 = load %struct.ifaddrs*, %struct.ifaddrs** %31, align 8
  %33 = icmp ne %struct.ifaddrs* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 1
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %36, align 8
  %38 = call i32 @free(%struct.ifaddrs* %37)
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %40 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %39, i32 0, i32 1
  store %struct.ifaddrs* null, %struct.ifaddrs** %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %43 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %42, i32 0, i32 0
  %44 = load %struct.ifaddrs*, %struct.ifaddrs** %43, align 8
  %45 = icmp ne %struct.ifaddrs* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %48 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %47, i32 0, i32 0
  %49 = load %struct.ifaddrs*, %struct.ifaddrs** %48, align 8
  %50 = call i32 @free(%struct.ifaddrs* %49)
  %51 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %52 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %51, i32 0, i32 0
  store %struct.ifaddrs* null, %struct.ifaddrs** %52, align 8
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %55 = call i32 @free(%struct.ifaddrs* %54)
  br label %56

56:                                               ; preds = %53, %1
  ret void
}

declare dso_local i32 @free(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
