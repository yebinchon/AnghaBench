; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_action_timed_out.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_action_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_info = type { %struct.TYPE_7__, %struct.TYPE_5__, %struct.cfil_entry* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.cfil_entry = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.timeval = type { i32 }

@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_info_action_timed_out(%struct.cfil_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfil_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfil_entry*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  store %struct.cfil_info* %0, %struct.cfil_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %11 = icmp eq %struct.cfil_info* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

13:                                               ; preds = %2
  %14 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %15 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %19 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %25 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %29 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %23, %13
  %34 = call i32 @microuptime(%struct.timeval* %7)
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %83, %33
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %41 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %40, i32 0, i32 2
  %42 = load %struct.cfil_entry*, %struct.cfil_entry** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %42, i64 %45
  store %struct.cfil_entry* %46, %struct.cfil_entry** %6, align 8
  %47 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %48 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %83

52:                                               ; preds = %39
  %53 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %54 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %58 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %56, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %64 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %68 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %66, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %62, %52
  %73 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %74 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %73, i32 0, i32 0
  %75 = call i32 @timersub(%struct.timeval* %7, i32* %74, %struct.timeval* %8)
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %88

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %51
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %35

86:                                               ; preds = %35
  br label %87

87:                                               ; preds = %86, %23
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %80, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @timersub(%struct.timeval*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
