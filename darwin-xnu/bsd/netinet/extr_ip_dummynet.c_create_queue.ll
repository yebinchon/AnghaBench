; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_create_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_create_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_queue = type { i32, i64, i64, %struct.dn_flow_queue*, %struct.dn_flow_set* }
%struct.dn_flow_set = type { i32, i32, %struct.dn_flow_queue** }

@dn_max_ratio = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"dummynet: sorry, cannot allocate queue for new flow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dn_flow_queue* (%struct.dn_flow_set*, i32)* @create_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dn_flow_queue* @create_queue(%struct.dn_flow_set* %0, i32 %1) #0 {
  %3 = alloca %struct.dn_flow_queue*, align 8
  %4 = alloca %struct.dn_flow_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_flow_queue*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %8 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %11 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @dn_max_ratio, align 4
  %14 = mul nsw i32 %12, %13
  %15 = icmp sgt i32 %9, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %18 = call i64 @expire_queues(%struct.dn_flow_set* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %22 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %25 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %24, i32 0, i32 2
  %26 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %26, i64 %28
  %30 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %29, align 8
  %31 = icmp ne %struct.dn_flow_queue* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %34 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %33, i32 0, i32 2
  %35 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %35, i64 %37
  %39 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %38, align 8
  store %struct.dn_flow_queue* %39, %struct.dn_flow_queue** %3, align 8
  br label %85

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40, %16, %2
  %42 = load i32, i32* @M_DUMMYNET, align 4
  %43 = load i32, i32* @M_DONTWAIT, align 4
  %44 = load i32, i32* @M_ZERO, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.dn_flow_queue* @_MALLOC(i32 40, i32 %42, i32 %45)
  store %struct.dn_flow_queue* %46, %struct.dn_flow_queue** %6, align 8
  %47 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %48 = icmp eq %struct.dn_flow_queue* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store %struct.dn_flow_queue* null, %struct.dn_flow_queue** %3, align 8
  br label %85

51:                                               ; preds = %41
  %52 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %53 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %54 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %53, i32 0, i32 4
  store %struct.dn_flow_set* %52, %struct.dn_flow_set** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %57 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %59 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %58, i32 0, i32 2
  %60 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %60, i64 %62
  %64 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %63, align 8
  %65 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %66 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %65, i32 0, i32 3
  store %struct.dn_flow_queue* %64, %struct.dn_flow_queue** %66, align 8
  %67 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %68 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %72 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  %74 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %75 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %74, i32 0, i32 2
  %76 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %76, i64 %78
  store %struct.dn_flow_queue* %73, %struct.dn_flow_queue** %79, align 8
  %80 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %81 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %6, align 8
  store %struct.dn_flow_queue* %84, %struct.dn_flow_queue** %3, align 8
  br label %85

85:                                               ; preds = %51, %49, %32
  %86 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %3, align 8
  ret %struct.dn_flow_queue* %86
}

declare dso_local i64 @expire_queues(%struct.dn_flow_set*) #1

declare dso_local %struct.dn_flow_queue* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
