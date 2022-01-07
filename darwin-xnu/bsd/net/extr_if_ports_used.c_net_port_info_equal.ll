; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ports_used.c_net_port_info_equal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_ports_used.c_net_port_info_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_port_info = type { i64, i64, i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_port_info*, %struct.net_port_info*)* @net_port_info_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_port_info_equal(%struct.net_port_info* %0, %struct.net_port_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_port_info*, align 8
  %5 = alloca %struct.net_port_info*, align 8
  store %struct.net_port_info* %0, %struct.net_port_info** %4, align 8
  store %struct.net_port_info* %1, %struct.net_port_info** %5, align 8
  %6 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %7 = icmp ne %struct.net_port_info* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %10 = icmp ne %struct.net_port_info* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %16 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %19 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %11
  %23 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %24 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %27 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %22
  %31 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %32 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %35 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %30
  %39 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %40 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %43 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %38
  %47 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %48 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %51 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %46
  %55 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %56 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %59 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %64 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %63, i32 0, i32 7
  %65 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %66 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %65, i32 0, i32 7
  %67 = call i64 @memcmp(i32* %64, i32* %66, i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.net_port_info*, %struct.net_port_info** %4, align 8
  %71 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %70, i32 0, i32 6
  %72 = load %struct.net_port_info*, %struct.net_port_info** %5, align 8
  %73 = getelementptr inbounds %struct.net_port_info, %struct.net_port_info* %72, i32 0, i32 6
  %74 = call i64 @memcmp(i32* %71, i32* %73, i32 4)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %69, %62, %54, %46, %38, %30, %22, %11
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
