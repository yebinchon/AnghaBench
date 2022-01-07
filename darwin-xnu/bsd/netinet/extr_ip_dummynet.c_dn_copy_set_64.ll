; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dn_copy_set_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_dn_copy_set_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i32, %struct.dn_flow_queue** }
%struct.dn_flow_queue = type { i32, %struct.dn_flow_set*, %struct.dn_flow_queue* }
%struct.dn_flow_queue_64 = type { i8*, i8*, i8*, i8* }

@dn_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dummynet: ++ at %d: wrong slot (have %d, should be %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"dummynet: ++ at %d: wrong fs ptr (have 0x%llx, should be 0x%llx)\0A\00", align 1
@USER_ADDR_NULL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"dummynet: ++ wrong count, have %d should be %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dn_flow_set*, i8*)* @dn_copy_set_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dn_copy_set_64(%struct.dn_flow_set* %0, i8* %1) #0 {
  %3 = alloca %struct.dn_flow_set*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_flow_queue*, align 8
  %8 = alloca %struct.dn_flow_queue_64*, align 8
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.dn_flow_queue_64*
  store %struct.dn_flow_queue_64* %10, %struct.dn_flow_queue_64** %8, align 8
  %11 = load i32, i32* @dn_mutex, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32 %11, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %85, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %17 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %88

20:                                               ; preds = %14
  %21 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %22 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %21, i32 0, i32 2
  %23 = load %struct.dn_flow_queue**, %struct.dn_flow_queue*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dn_flow_queue*, %struct.dn_flow_queue** %23, i64 %25
  %27 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %26, align 8
  store %struct.dn_flow_queue* %27, %struct.dn_flow_queue** %7, align 8
  br label %28

28:                                               ; preds = %78, %20
  %29 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %30 = icmp ne %struct.dn_flow_queue* %29, null
  br i1 %30, label %31, label %84

31:                                               ; preds = %28
  %32 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %33 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %40 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %46 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %45, i32 0, i32 1
  %47 = load %struct.dn_flow_set*, %struct.dn_flow_set** %46, align 8
  %48 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %49 = icmp ne %struct.dn_flow_set* %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %53 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %52, i32 0, i32 1
  %54 = load %struct.dn_flow_set*, %struct.dn_flow_set** %53, align 8
  %55 = call i64 @VM_KERNEL_ADDRPERM(%struct.dn_flow_set* %54)
  %56 = trunc i64 %55 to i32
  %57 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %58 = call i64 @VM_KERNEL_ADDRPERM(%struct.dn_flow_set* %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %50, %44
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %65 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %66 = call i32 @cp_queue_to_64_user(%struct.dn_flow_queue* %64, %struct.dn_flow_queue_64* %65)
  %67 = load i8*, i8** @USER_ADDR_NULL, align 8
  %68 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %69 = getelementptr inbounds %struct.dn_flow_queue_64, %struct.dn_flow_queue_64* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @USER_ADDR_NULL, align 8
  %71 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %72 = getelementptr inbounds %struct.dn_flow_queue_64, %struct.dn_flow_queue_64* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %74 = getelementptr inbounds %struct.dn_flow_queue_64, %struct.dn_flow_queue_64* %73, i32 0, i32 2
  store i8* %70, i8** %74, align 8
  %75 = load i8*, i8** @USER_ADDR_NULL, align 8
  %76 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %77 = getelementptr inbounds %struct.dn_flow_queue_64, %struct.dn_flow_queue_64* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %61
  %79 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %7, align 8
  %80 = getelementptr inbounds %struct.dn_flow_queue, %struct.dn_flow_queue* %79, i32 0, i32 2
  %81 = load %struct.dn_flow_queue*, %struct.dn_flow_queue** %80, align 8
  store %struct.dn_flow_queue* %81, %struct.dn_flow_queue** %7, align 8
  %82 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %83 = getelementptr inbounds %struct.dn_flow_queue_64, %struct.dn_flow_queue_64* %82, i32 1
  store %struct.dn_flow_queue_64* %83, %struct.dn_flow_queue_64** %8, align 8
  br label %28

84:                                               ; preds = %28
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %14

88:                                               ; preds = %14
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %91 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.dn_flow_set*, %struct.dn_flow_set** %3, align 8
  %97 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.dn_flow_queue_64*, %struct.dn_flow_queue_64** %8, align 8
  %102 = bitcast %struct.dn_flow_queue_64* %101 to i8*
  ret i8* %102
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.dn_flow_set*) #1

declare dso_local i32 @cp_queue_to_64_user(%struct.dn_flow_queue*, %struct.dn_flow_queue_64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
