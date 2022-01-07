; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.necp_client_action_args = type { i32, i32 }
%struct.necp_fd_data = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"necp_client_action find fd error (%d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"necp_client_action unknown action (%u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_client_action(%struct.proc* %0, %struct.necp_client_action_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.necp_client_action_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.necp_fd_data*, align 8
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.necp_client_action_args* %1, %struct.necp_client_action_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.necp_fd_data* null, %struct.necp_fd_data** %10, align 8
  %12 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %13 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @necp_find_fd_data(i32 %14, %struct.necp_fd_data** %10)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @NECPLOG(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %95

23:                                               ; preds = %3
  %24 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %25 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %84 [
    i32 140, label %28
    i32 129, label %34
    i32 133, label %39
    i32 132, label %39
    i32 130, label %39
    i32 134, label %44
    i32 139, label %49
    i32 137, label %54
    i32 138, label %59
    i32 135, label %64
    i32 131, label %69
    i32 128, label %74
    i32 136, label %79
  ]

28:                                               ; preds = %23
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %31 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @necp_client_add(%struct.proc* %29, %struct.necp_fd_data* %30, %struct.necp_client_action_args* %31, i32* %32)
  store i32 %33, i32* %9, align 4
  br label %89

34:                                               ; preds = %23
  %35 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %36 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @necp_client_remove(%struct.necp_fd_data* %35, %struct.necp_client_action_args* %36, i32* %37)
  store i32 %38, i32* %9, align 4
  br label %89

39:                                               ; preds = %23, %23, %23
  %40 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %41 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @necp_client_copy(%struct.necp_fd_data* %40, %struct.necp_client_action_args* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  br label %89

44:                                               ; preds = %23
  %45 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %46 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @necp_client_list(%struct.necp_fd_data* %45, %struct.necp_client_action_args* %46, i32* %47)
  store i32 %48, i32* %9, align 4
  br label %89

49:                                               ; preds = %23
  %50 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %51 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @necp_client_agent_action(%struct.necp_fd_data* %50, %struct.necp_client_action_args* %51, i32* %52)
  store i32 %53, i32* %9, align 4
  br label %89

54:                                               ; preds = %23
  %55 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %56 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @necp_client_copy_agent(%struct.necp_fd_data* %55, %struct.necp_client_action_args* %56, i32* %57)
  store i32 %58, i32* %9, align 4
  br label %89

59:                                               ; preds = %23
  %60 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %61 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @necp_client_agent_use(%struct.necp_fd_data* %60, %struct.necp_client_action_args* %61, i32* %62)
  store i32 %63, i32* %9, align 4
  br label %89

64:                                               ; preds = %23
  %65 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %66 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @necp_client_copy_interface(%struct.necp_fd_data* %65, %struct.necp_client_action_args* %66, i32* %67)
  store i32 %68, i32* %9, align 4
  br label %89

69:                                               ; preds = %23
  %70 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %71 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @necp_client_copy_route_statistics(%struct.necp_fd_data* %70, %struct.necp_client_action_args* %71, i32* %72)
  store i32 %73, i32* %9, align 4
  br label %89

74:                                               ; preds = %23
  %75 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %76 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @necp_client_update_cache(%struct.necp_fd_data* %75, %struct.necp_client_action_args* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  br label %89

79:                                               ; preds = %23
  %80 = load %struct.necp_fd_data*, %struct.necp_fd_data** %10, align 8
  %81 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @necp_client_copy_client_update(%struct.necp_fd_data* %80, %struct.necp_client_action_args* %81, i32* %82)
  store i32 %83, i32* %9, align 4
  br label %89

84:                                               ; preds = %23
  %85 = load i32, i32* @LOG_ERR, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @NECPLOG(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %84, %79, %74, %69, %64, %59, %54, %49, %44, %39, %34, %28
  %90 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %91 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @file_drop(i32 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %89, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @necp_find_fd_data(i32, %struct.necp_fd_data**) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @necp_client_add(%struct.proc*, %struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_remove(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_copy(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_list(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_agent_action(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_copy_agent(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_agent_use(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_copy_interface(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_copy_route_statistics(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_update_cache(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @necp_client_copy_client_update(%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*) #1

declare dso_local i32 @file_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
