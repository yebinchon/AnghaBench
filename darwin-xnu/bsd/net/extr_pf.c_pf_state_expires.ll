; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_expires.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_state_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64* }
%struct.TYPE_7__ = type { i64 }
%struct.pf_state = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i64 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFTM_PURGE = common dso_local global i64 0, align 8
@PFTM_UNLINKED = common dso_local global i64 0, align 8
@PFTM_MAX = common dso_local global i64 0, align 8
@pf_default_rule = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PFTM_ADAPTIVE_START = common dso_local global i64 0, align 8
@PFTM_ADAPTIVE_END = common dso_local global i64 0, align 8
@pf_status = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pf_state_expires(%struct.pf_state* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pf_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pf_state* %0, %struct.pf_state** %3, align 8
  %8 = load i32, i32* @pf_lock, align 4
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32 %8, i32 %9)
  %11 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %12 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PFTM_PURGE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i64 (...) @pf_time_second()
  store i64 %17, i64* %2, align 8
  br label %128

18:                                               ; preds = %1
  %19 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %20 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PFTM_UNLINKED, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %27 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PFTM_MAX, align 8
  %30 = icmp ult i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %34 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %40 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %18
  %47 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_default_rule, i32 0, i32 0), align 8
  %48 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %49 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %4, align 8
  br label %53

53:                                               ; preds = %46, %18
  %54 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %55 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %53
  %66 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %67 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %6, align 8
  %75 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %76 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %7, align 8
  br label %91

81:                                               ; preds = %53
  %82 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_default_rule, i32 0, i32 0), align 8
  %83 = load i64, i64* @PFTM_ADAPTIVE_START, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %5, align 8
  %86 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pf_default_rule, i32 0, i32 0), align 8
  %87 = load i64, i64* @PFTM_ADAPTIVE_END, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pf_status, i32 0, i32 0), align 8
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %81, %65
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %108 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub nsw i64 %111, %112
  %114 = mul nsw i64 %110, %113
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %5, align 8
  %117 = sub nsw i64 %115, %116
  %118 = sdiv i64 %114, %117
  %119 = add nsw i64 %109, %118
  store i64 %119, i64* %2, align 8
  br label %128

120:                                              ; preds = %102
  %121 = call i64 (...) @pf_time_second()
  store i64 %121, i64* %2, align 8
  br label %128

122:                                              ; preds = %98, %94, %91
  %123 = load %struct.pf_state*, %struct.pf_state** %3, align 8
  %124 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %4, align 8
  %127 = add nsw i64 %125, %126
  store i64 %127, i64* %2, align 8
  br label %128

128:                                              ; preds = %122, %120, %106, %16
  %129 = load i64, i64* %2, align 8
  ret i64 %129
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i64 @pf_time_second(...) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
