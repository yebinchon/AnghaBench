; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_result_add_ip.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_result_add_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@IPADDR_TYPE_V4 = common dso_local global i64 0, align 8
@IPADDR_TYPE_V6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_15__*)* @_mdns_result_add_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_result_add_ip(%struct.TYPE_23__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %8, %struct.TYPE_24__** %5, align 8
  br label %9

9:                                                ; preds = %65, %2
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %11 = icmp ne %struct.TYPE_24__* %10, null
  br i1 %11, label %12, label %69

12:                                               ; preds = %9
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %12
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPADDR_TYPE_V4, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %84

42:                                               ; preds = %28, %21
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPADDR_TYPE_V6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcmp(i32 %55, i32 %60, i32 16)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  br label %84

64:                                               ; preds = %49, %42
  br label %65

65:                                               ; preds = %64, %12
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  store %struct.TYPE_24__* %68, %struct.TYPE_24__** %5, align 8
  br label %9

69:                                               ; preds = %9
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = call %struct.TYPE_24__* @_mdns_result_addr_create_ip(%struct.TYPE_15__* %70)
  store %struct.TYPE_24__* %71, %struct.TYPE_24__** %5, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %73 = icmp ne %struct.TYPE_24__* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %84

75:                                               ; preds = %69
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %80, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %83, align 8
  br label %84

84:                                               ; preds = %75, %74, %63, %41
  ret void
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @_mdns_result_addr_create_ip(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
