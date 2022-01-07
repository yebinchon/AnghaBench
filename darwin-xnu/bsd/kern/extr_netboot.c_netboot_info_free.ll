; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_netboot_info_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_netboot.c_netboot_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netboot_info = type { i32, i32, i32, i32, %struct.netboot_info*, %struct.netboot_info*, %struct.netboot_info*, %struct.netboot_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netboot_info**)* @netboot_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netboot_info_free(%struct.netboot_info** %0) #0 {
  %2 = alloca %struct.netboot_info**, align 8
  %3 = alloca %struct.netboot_info*, align 8
  store %struct.netboot_info** %0, %struct.netboot_info*** %2, align 8
  %4 = load %struct.netboot_info**, %struct.netboot_info*** %2, align 8
  %5 = load %struct.netboot_info*, %struct.netboot_info** %4, align 8
  store %struct.netboot_info* %5, %struct.netboot_info** %3, align 8
  %6 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %7 = icmp ne %struct.netboot_info* %6, null
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %10 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %9, i32 0, i32 7
  %11 = load %struct.netboot_info*, %struct.netboot_info** %10, align 8
  %12 = icmp ne %struct.netboot_info* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %15 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %14, i32 0, i32 7
  %16 = load %struct.netboot_info*, %struct.netboot_info** %15, align 8
  %17 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %18 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(%struct.netboot_info* %16, i32 %19)
  br label %21

21:                                               ; preds = %13, %8
  %22 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %23 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %22, i32 0, i32 6
  %24 = load %struct.netboot_info*, %struct.netboot_info** %23, align 8
  %25 = icmp ne %struct.netboot_info* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %28 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %27, i32 0, i32 6
  %29 = load %struct.netboot_info*, %struct.netboot_info** %28, align 8
  %30 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %31 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(%struct.netboot_info* %29, i32 %32)
  br label %34

34:                                               ; preds = %26, %21
  %35 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %36 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %35, i32 0, i32 5
  %37 = load %struct.netboot_info*, %struct.netboot_info** %36, align 8
  %38 = icmp ne %struct.netboot_info* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %41 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %40, i32 0, i32 5
  %42 = load %struct.netboot_info*, %struct.netboot_info** %41, align 8
  %43 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %44 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @kfree(%struct.netboot_info* %42, i32 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %49 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %48, i32 0, i32 4
  %50 = load %struct.netboot_info*, %struct.netboot_info** %49, align 8
  %51 = icmp ne %struct.netboot_info* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %54 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %53, i32 0, i32 4
  %55 = load %struct.netboot_info*, %struct.netboot_info** %54, align 8
  %56 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %57 = getelementptr inbounds %struct.netboot_info, %struct.netboot_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @kfree(%struct.netboot_info* %55, i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.netboot_info*, %struct.netboot_info** %3, align 8
  %62 = call i32 @kfree(%struct.netboot_info* %61, i32 48)
  br label %63

63:                                               ; preds = %60, %1
  %64 = load %struct.netboot_info**, %struct.netboot_info*** %2, align 8
  store %struct.netboot_info* null, %struct.netboot_info** %64, align 8
  ret void
}

declare dso_local i32 @kfree(%struct.netboot_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
