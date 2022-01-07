; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_get_requested_policy_spinlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_get_requested_policy_spinlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.thread_requested_policy }
%struct.thread_requested_policy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown policy_flavor %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @thread_get_requested_policy_spinlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_get_requested_policy_spinlocked(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread_requested_policy, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast %struct.thread_requested_policy* %10 to i8*
  %14 = bitcast %struct.thread_requested_policy* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 60, i1 false)
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %145 [
    i32 140, label %16
    i32 138, label %27
    i32 139, label %44
    i32 136, label %55
    i32 135, label %66
    i32 132, label %74
    i32 137, label %82
    i32 128, label %90
    i32 130, label %98
    i32 134, label %106
    i32 131, label %121
    i32 133, label %129
    i32 129, label %137
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %148

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @proc_tier_to_iopol(i32 %33, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %43

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @proc_tier_to_iopol(i32 %39, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %31
  br label %148

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %48
  br label %148

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  br label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %148

66:                                               ; preds = %4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  br label %148

74:                                               ; preds = %4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %148

82:                                               ; preds = %4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %148

90:                                               ; preds = %4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @assert(i32 %94)
  %96 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %9, align 4
  br label %148

98:                                               ; preds = %4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %9, align 4
  br label %148

106:                                              ; preds = %4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i32*, i32** %8, align 8
  %113 = icmp ne i32* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %9, align 4
  %118 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %8, align 8
  store i32 %119, i32* %120, align 4
  br label %148

121:                                              ; preds = %4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 12
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %9, align 4
  br label %148

129:                                              ; preds = %4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %132 = icmp eq i32 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 13
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %9, align 4
  br label %148

137:                                              ; preds = %4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = getelementptr inbounds %struct.thread_requested_policy, %struct.thread_requested_policy* %10, i32 0, i32 14
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %9, align 4
  br label %148

145:                                              ; preds = %4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %145, %137, %129, %121, %106, %98, %90, %82, %74, %66, %65, %54, %43, %26
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @proc_tier_to_iopol(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @panic(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
