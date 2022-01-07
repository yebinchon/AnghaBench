; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.necp_session_action_args = type { i32, i32 }
%struct.necp_session = type { i32, i32, i64 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"necp_session_action find fd error (%d)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"necp_session_action unknown action (%u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_session_action(%struct.proc* %0, %struct.necp_session_action_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.necp_session_action_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.necp_session*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.necp_session_action_args* %1, %struct.necp_session_action_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.necp_session* null, %struct.necp_session** %10, align 8
  %13 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %14 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @necp_session_find_from_fd(i32 %15, %struct.necp_session** %10)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @NECPLOG(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %128

24:                                               ; preds = %3
  %25 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %26 = call i32 @NECP_SESSION_LOCK(%struct.necp_session* %25)
  %27 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %28 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = call i32 (...) @current_proc()
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @proc_getexecutableuuid(i32 %32, i32 %33, i32 4)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %37 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @uuid_compare(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* @EPERM, align 4
  store i32 %42, i32* %8, align 4
  br label %120

43:                                               ; preds = %31
  br label %54

44:                                               ; preds = %24
  %45 = call i32 (...) @current_proc()
  %46 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %47 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @proc_getexecutableuuid(i32 %45, i32 %48, i32 4)
  %50 = call i32 (...) @current_proc()
  %51 = call i32 @proc_pid(i32 %50)
  %52 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %53 = getelementptr inbounds %struct.necp_session, %struct.necp_session* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %44, %43
  %55 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %56 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  switch i32 %58, label %114 [
    i32 137, label %59
    i32 132, label %64
    i32 135, label %69
    i32 136, label %74
    i32 131, label %79
    i32 134, label %84
    i32 129, label %89
    i32 138, label %94
    i32 130, label %99
    i32 128, label %104
    i32 133, label %109
  ]

59:                                               ; preds = %54
  %60 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %61 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @necp_session_add_policy(%struct.necp_session* %60, %struct.necp_session_action_args* %61, i32* %62)
  store i32 %63, i32* %9, align 4
  br label %119

64:                                               ; preds = %54
  %65 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %66 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @necp_session_get_policy(%struct.necp_session* %65, %struct.necp_session_action_args* %66, i32* %67)
  store i32 %68, i32* %9, align 4
  br label %119

69:                                               ; preds = %54
  %70 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %71 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @necp_session_delete_policy(%struct.necp_session* %70, %struct.necp_session_action_args* %71, i32* %72)
  store i32 %73, i32* %9, align 4
  br label %119

74:                                               ; preds = %54
  %75 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %76 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @necp_session_apply_all(%struct.necp_session* %75, %struct.necp_session_action_args* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  br label %119

79:                                               ; preds = %54
  %80 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %81 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @necp_session_list_all(%struct.necp_session* %80, %struct.necp_session_action_args* %81, i32* %82)
  store i32 %83, i32* %9, align 4
  br label %119

84:                                               ; preds = %54
  %85 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %86 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @necp_session_delete_all(%struct.necp_session* %85, %struct.necp_session_action_args* %86, i32* %87)
  store i32 %88, i32* %9, align 4
  br label %119

89:                                               ; preds = %54
  %90 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %91 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @necp_session_set_session_priority(%struct.necp_session* %90, %struct.necp_session_action_args* %91, i32* %92)
  store i32 %93, i32* %9, align 4
  br label %119

94:                                               ; preds = %54
  %95 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %96 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @necp_session_lock_to_process(%struct.necp_session* %95, %struct.necp_session_action_args* %96, i32* %97)
  store i32 %98, i32* %9, align 4
  br label %119

99:                                               ; preds = %54
  %100 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %101 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @necp_session_register_service(%struct.necp_session* %100, %struct.necp_session_action_args* %101, i32* %102)
  store i32 %103, i32* %9, align 4
  br label %119

104:                                              ; preds = %54
  %105 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %106 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @necp_session_unregister_service(%struct.necp_session* %105, %struct.necp_session_action_args* %106, i32* %107)
  store i32 %108, i32* %9, align 4
  br label %119

109:                                              ; preds = %54
  %110 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %111 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @necp_session_dump_all(%struct.necp_session* %110, %struct.necp_session_action_args* %111, i32* %112)
  store i32 %113, i32* %9, align 4
  br label %119

114:                                              ; preds = %54
  %115 = load i32, i32* @LOG_ERR, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @NECPLOG(i32 %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @EINVAL, align 4
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %114, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59
  br label %120

120:                                              ; preds = %119, %41
  %121 = load %struct.necp_session*, %struct.necp_session** %10, align 8
  %122 = call i32 @NECP_SESSION_UNLOCK(%struct.necp_session* %121)
  %123 = load %struct.necp_session_action_args*, %struct.necp_session_action_args** %6, align 8
  %124 = getelementptr inbounds %struct.necp_session_action_args, %struct.necp_session_action_args* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @file_drop(i32 %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %120, %19
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @necp_session_find_from_fd(i32, %struct.necp_session**) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @NECP_SESSION_LOCK(%struct.necp_session*) #1

declare dso_local i32 @proc_getexecutableuuid(i32, i32, i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @uuid_compare(i32, i32) #1

declare dso_local i32 @proc_pid(i32) #1

declare dso_local i32 @necp_session_add_policy(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_get_policy(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_delete_policy(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_apply_all(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_list_all(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_delete_all(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_set_session_priority(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_lock_to_process(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_register_service(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_unregister_service(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @necp_session_dump_all(%struct.necp_session*, %struct.necp_session_action_args*, i32*) #1

declare dso_local i32 @NECP_SESSION_UNLOCK(%struct.necp_session*) #1

declare dso_local i32 @file_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
