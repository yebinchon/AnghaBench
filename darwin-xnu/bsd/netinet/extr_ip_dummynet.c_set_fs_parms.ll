; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_set_fs_parms.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_set_fs_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i32, i32, i32 }

@DN_QSIZE_IS_BYTES = common dso_local global i32 0, align 4
@DN_IS_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_flow_set*, %struct.dn_flow_set*)* @set_fs_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fs_parms(%struct.dn_flow_set* %0, %struct.dn_flow_set* %1) #0 {
  %3 = alloca %struct.dn_flow_set*, align 8
  %4 = alloca %struct.dn_flow_set*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %3, align 8
  store %struct.dn_flow_set* %1, %struct.dn_flow_set** %4, align 8
  %5 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %6 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %9 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %11 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %14 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %16 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %19 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %21 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %24 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %26 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DN_QSIZE_IS_BYTES, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %2
  %32 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %33 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 1048576
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %38 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %37, i32 0, i32 1
  store i32 1048576, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %42 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %47 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %46, i32 0, i32 1
  store i32 50, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %50 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 100
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %55 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %54, i32 0, i32 1
  store i32 50, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %59 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DN_IS_RED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %66 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %67 = call i32 @config_red(%struct.dn_flow_set* %65, %struct.dn_flow_set* %66)
  br label %68

68:                                               ; preds = %64, %57
  ret void
}

declare dso_local i32 @config_red(%struct.dn_flow_set*, %struct.dn_flow_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
