; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_get_src_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_get_src_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.socket = type { i32, i64, i32 }

@SOF_DELEGATED = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.TYPE_8__**)* @flow_divert_get_src_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_get_src_proc(%struct.socket* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SOF_DELEGATED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.socket*, %struct.socket** %3, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_8__* @proc_find(i64 %24)
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %26, align 8
  store i32 1, i32* %5, align 4
  br label %44

27:                                               ; preds = %12
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @uuid_compare(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_8__* @flow_divert_find_proc_by_uuid(i32 %40)
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %27
  br label %44

44:                                               ; preds = %43, %21
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  %49 = icmp eq %struct.TYPE_8__* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call %struct.TYPE_8__* (...) @current_proc()
  %52 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %52, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %44
  %55 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  %58 = icmp ne %struct.TYPE_8__* %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = call i32 @proc_rele(%struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %68, %65
  store i32 0, i32* %5, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PROC_NULL, align 8
  %74 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %74, align 8
  br label %75

75:                                               ; preds = %72, %59
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_8__* @proc_find(i64) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local %struct.TYPE_8__* @flow_divert_find_proc_by_uuid(i32) #1

declare dso_local %struct.TYPE_8__* @current_proc(...) #1

declare dso_local i32 @proc_rele(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
