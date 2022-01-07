; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_reverse.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_right.c_ipc_right_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@IOT_PORT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@IE_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@MACH_PORT_TYPE_RECEIVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MACH_PORT_TYPE_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_right_reverse(i64 %0, i64 %1, i64* %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @is_active(i64 %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = call i64 @io_otype(i64 %16)
  %18 = load i64, i64* @IOT_PORT, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %25 = call i32 @ip_lock(%struct.TYPE_10__* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = call i32 @ip_active(%struct.TYPE_10__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = call i32 @ip_unlock(%struct.TYPE_10__* %30)
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %5, align 4
  br label %111

33:                                               ; preds = %4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @MACH_PORT_NULL, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call %struct.TYPE_11__* @ipc_entry_lookup(i64 %48, i64 %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %12, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IE_NULL, align 8
  %53 = icmp ne %struct.TYPE_11__* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MACH_PORT_TYPE_RECEIVE, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_10__*
  %67 = icmp eq %struct.TYPE_10__* %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i64, i64* %11, align 8
  %71 = load i64*, i64** %8, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %73, align 8
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %111

75:                                               ; preds = %33
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %78 = ptrtoint %struct.TYPE_10__* %77 to i64
  %79 = load i64*, i64** %8, align 8
  %80 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %81 = call i64 @ipc_hash_lookup(i64 %76, i64 %78, i64* %79, %struct.TYPE_11__** %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %75
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %12, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IE_NULL, align 8
  %87 = icmp ne %struct.TYPE_11__* %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IE_BITS_TYPE(i32 %92)
  %94 = load i64, i64* @MACH_PORT_TYPE_SEND, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.TYPE_10__*
  %103 = icmp eq %struct.TYPE_10__* %98, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* @TRUE, align 4
  store i32 %106, i32* %5, align 4
  br label %111

107:                                              ; preds = %75
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %109 = call i32 @ip_unlock(%struct.TYPE_10__* %108)
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %83, %39, %29
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_active(i64) #1

declare dso_local i64 @io_otype(i64) #1

declare dso_local i32 @ip_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_10__*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @ipc_entry_lookup(i64, i64) #1

declare dso_local i64 @ipc_hash_lookup(i64, i64, i64*, %struct.TYPE_11__**) #1

declare dso_local i64 @IE_BITS_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
