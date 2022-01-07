; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_policy_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_policy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.task_requested_policy }
%struct.task_requested_policy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_INTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown task policy: %d %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32)* @proc_set_task_policy_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_set_task_policy_locked(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.task_requested_policy, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = bitcast %struct.task_requested_policy* %13 to i8*
  %17 = bitcast %struct.task_requested_policy* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 64, i1 false)
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %155 [
    i32 137, label %19
    i32 134, label %30
    i32 135, label %47
    i32 132, label %58
    i32 136, label %69
    i32 129, label %79
    i32 138, label %87
    i32 131, label %95
    i32 128, label %103
    i32 141, label %111
    i32 140, label %119
    i32 130, label %127
    i32 139, label %135
    i32 133, label %145
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %161

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @proc_iopol_to_tier(i32 %31, i32* %11, i32* %12)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  %38 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 3
  store i32 %39, i32* %40, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load i32, i32* %11, align 4
  %43 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 4
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 5
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %161

47:                                               ; preds = %5
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 4
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %161

58:                                               ; preds = %5
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  br label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %161

69:                                               ; preds = %5
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @proc_iopol_to_tier(i32 %75, i32* %11, i32* %12)
  %77 = load i32, i32* %11, align 4
  %78 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 6
  store i32 %77, i32* %78, align 4
  br label %161

79:                                               ; preds = %5
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 7
  store i32 %85, i32* %86, align 4
  br label %161

87:                                               ; preds = %5
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 8
  store i32 %93, i32* %94, align 4
  br label %161

95:                                               ; preds = %5
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 9
  store i32 %101, i32* %102, align 4
  br label %161

103:                                              ; preds = %5
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 10
  store i32 %109, i32* %110, align 4
  br label %161

111:                                              ; preds = %5
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 11
  store i32 %117, i32* %118, align 4
  br label %161

119:                                              ; preds = %5
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 12
  store i32 %125, i32* %126, align 4
  br label %161

127:                                              ; preds = %5
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 13
  store i32 %133, i32* %134, align 4
  br label %161

135:                                              ; preds = %5
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 11
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %10, align 4
  %144 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 12
  store i32 %143, i32* %144, align 4
  br label %161

145:                                              ; preds = %5
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %148 = icmp eq i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 14
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = getelementptr inbounds %struct.task_requested_policy, %struct.task_requested_policy* %13, i32 0, i32 15
  store i32 %153, i32* %154, align 4
  br label %161

155:                                              ; preds = %5
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %155, %145, %135, %127, %119, %111, %103, %95, %87, %79, %69, %68, %57, %46, %29
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = bitcast %struct.task_requested_policy* %163 to i8*
  %165 = bitcast %struct.task_requested_policy* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 64, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @proc_iopol_to_tier(i32, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @panic(i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
