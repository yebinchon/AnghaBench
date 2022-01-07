; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_expire_queues.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_expire_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i64, i32, %struct.dn_flow_queue** }
%struct.dn_flow_queue = type { i64, i64, %struct.dn_flow_queue*, i32* }
%struct.timeval = type { i64 }

@M_DUMMYNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_flow_set*)* @expire_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expire_queues(%struct.dn_flow_set* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_flow_set*, align 8
  %4 = alloca %struct.dn_flow_queue*, align 8
  %5 = alloca %struct.dn_flow_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.dn_flow_queue*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %3, align 8
  %10 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %11 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = call i32 @getmicrotime(%struct.timeval* %8)
  %14 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %15 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %25 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %92, %21
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %29 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sle i32 %27, %30
  br i1 %31, label %32, label %95

32:                                               ; preds = %26
  store %struct.dn_flow_queue* null, %struct.dn_flow_queue** %5, align 8
  %33 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %34 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %33, i32 0, i32 3
  %35 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %35, i64 %37
  %39 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %38, align 8
  store %struct.dn_flow_queue* %39, %struct.dn_flow_queue** %4, align 8
  br label %40

40:                                               ; preds = %90, %32
  %41 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %42 = icmp ne %struct.dn_flow_queue* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  %44 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %45 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %50 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %53 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = icmp ne i64 %51, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48, %43
  %58 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  store %struct.dn_flow_queue* %58, %struct.dn_flow_queue** %5, align 8
  %59 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %60 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %59, i32 0, i32 2
  %61 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %60, align 8
  store %struct.dn_flow_queue* %61, %struct.dn_flow_queue** %4, align 8
  br label %90

62:                                               ; preds = %48
  %63 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  store %struct.dn_flow_queue* %63, %struct.dn_flow_queue** %9, align 8
  %64 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %5, align 8
  %65 = icmp ne %struct.dn_flow_queue* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %68 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %67, i32 0, i32 2
  %69 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %68, align 8
  store %struct.dn_flow_queue* %69, %struct.dn_flow_queue** %4, align 8
  %70 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %5, align 8
  %71 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %70, i32 0, i32 2
  store %struct.dn_flow_queue* %69, %struct.dn_flow_queue** %71, align 8
  br label %82

72:                                               ; preds = %62
  %73 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %4, align 8
  %74 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %73, i32 0, i32 2
  %75 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %74, align 8
  store %struct.dn_flow_queue* %75, %struct.dn_flow_queue** %4, align 8
  %76 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %77 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %76, i32 0, i32 3
  %78 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %78, i64 %80
  store %struct.dn_flow_queue* %75, %struct.dn_flow_queue** %81, align 8
  br label %82

82:                                               ; preds = %72, %66
  %83 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %84 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %9, align 8
  %88 = load i32, i32* @M_DUMMYNET, align 4
  %89 = call i32 @FREE(%struct.dn_flow_queue* %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %57
  br label %40

91:                                               ; preds = %40
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %26

95:                                               ; preds = %26
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %98 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 %96, %99
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %95, %20
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @FREE(%struct.dn_flow_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
