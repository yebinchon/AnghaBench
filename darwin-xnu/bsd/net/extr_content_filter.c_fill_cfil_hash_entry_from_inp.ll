; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_cfil_hash_entry_from_inp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_fill_cfil_hash_entry_from_inp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_hash_entry = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.inpcb = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfil_hash_entry*, i32, %struct.inpcb*)* @fill_cfil_hash_entry_from_inp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_cfil_hash_entry_from_inp(%struct.cfil_hash_entry* %0, i32 %1, %struct.inpcb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfil_hash_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inpcb*, align 8
  store %struct.cfil_hash_entry* %0, %struct.cfil_hash_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inpcb* %2, %struct.inpcb** %7, align 8
  %8 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %9 = icmp eq %struct.cfil_hash_entry* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %12 = icmp eq %struct.inpcb* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %104

15:                                               ; preds = %10
  %16 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @INP_IPV4, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %28 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %31 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %33 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %37 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  br label %56

41:                                               ; preds = %22
  %42 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %46 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %48 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %52 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %41, %26
  %57 = load i32, i32* @AF_INET, align 4
  %58 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %59 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  br label %104

61:                                               ; preds = %15
  %62 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %63 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INP_IPV6, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %74 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %77 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %79 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %82 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  br label %96

84:                                               ; preds = %68
  %85 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %86 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %89 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %91 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %94 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %72
  %97 = load i32, i32* @AF_INET6, align 4
  %98 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %5, align 8
  %99 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %4, align 4
  br label %104

101:                                              ; preds = %61
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %96, %56, %13
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
