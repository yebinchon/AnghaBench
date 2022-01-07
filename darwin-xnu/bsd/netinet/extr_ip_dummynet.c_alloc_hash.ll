; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_alloc_hash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_dummynet.c_alloc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_flow_set = type { i32, i32, i64, i32* }

@DN_HAVE_FLOW_MASK = common dso_local global i32 0, align 4
@dn_hash_size = common dso_local global i32 0, align 4
@DN_MAX_HASH_SIZE = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dummynet: sorry, cannot allocate queue\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_flow_set*, %struct.dn_flow_set*)* @alloc_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_hash(%struct.dn_flow_set* %0, %struct.dn_flow_set* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_flow_set*, align 8
  %5 = alloca %struct.dn_flow_set*, align 8
  %6 = alloca i32, align 4
  store %struct.dn_flow_set* %0, %struct.dn_flow_set** %4, align 8
  store %struct.dn_flow_set* %1, %struct.dn_flow_set** %5, align 8
  %7 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %8 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @DN_HAVE_FLOW_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.dn_flow_set*, %struct.dn_flow_set** %5, align 8
  %15 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @dn_hash_size, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 4, i32* %6, align 4
  br label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DN_MAX_HASH_SIZE, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @DN_MAX_HASH_SIZE, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %35 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %38 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %41 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 8
  %46 = trunc i64 %45 to i32
  %47 = load i32, i32* @M_DUMMYNET, align 4
  %48 = load i32, i32* @M_DONTWAIT, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call i32* @_MALLOC(i32 %46, i32 %47, i32 %50)
  %52 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %53 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %55 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOSPC, align 4
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %39
  %62 = load %struct.dn_flow_set*, %struct.dn_flow_set** %4, align 8
  %63 = getelementptr inbounds %struct.dn_flow_set, %struct.dn_flow_set* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
