; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.necp_fd_data = type { i32, i32, i32 }
%struct.necp_client_action_args = type { i32, i64, i32, i32 }
%struct.necp_client = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }

@NECP_OPEN_FLAG_PUSH_OBSERVER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"NECP client observers with push enabled may not add their own clients\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NECP_MAX_CLIENT_PARAMETERS_SIZE = common dso_local global i32 0, align 4
@M_NECP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"necp_client_add parameters copyin error (%d)\00", align 1
@necp_fd_mtx_grp = common dso_local global i32 0, align 4
@necp_fd_mtx_attr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"necp_client_add client_id copyout error (%d)\00", align 1
@_necp_client_tree = common dso_local global i32 0, align 4
@necp_client_count = common dso_local global i32 0, align 4
@_necp_client_global_tree = common dso_local global i32 0, align 4
@necp_client_global_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.necp_fd_data*, %struct.necp_client_action_args*, i32*)* @necp_client_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_add(%struct.proc* %0, %struct.necp_fd_data* %1, %struct.necp_client_action_args* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.necp_fd_data*, align 8
  %8 = alloca %struct.necp_client_action_args*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.necp_client*, align 8
  store %struct.proc* %0, %struct.proc** %6, align 8
  store %struct.necp_fd_data* %1, %struct.necp_fd_data** %7, align 8
  store %struct.necp_client_action_args* %2, %struct.necp_client_action_args** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.necp_client* null, %struct.necp_client** %11, align 8
  %12 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %13 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NECP_OPEN_FLAG_PUSH_OBSERVER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @NECPLOG0(i32 %19, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %181

22:                                               ; preds = %4
  %23 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %24 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %29 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %35 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %40 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NECP_MAX_CLIENT_PARAMETERS_SIZE, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %38
  %45 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %46 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %38, %33, %27, %22
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %181

51:                                               ; preds = %44
  %52 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %53 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 48, %55
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @M_NECP, align 4
  %59 = load i32, i32* @M_WAITOK, align 4
  %60 = load i32, i32* @M_ZERO, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.necp_client* @_MALLOC(i32 %57, i32 %58, i32 %61)
  store %struct.necp_client* %62, %struct.necp_client** %11, align 8
  %63 = icmp eq %struct.necp_client* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %51
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %10, align 4
  br label %166

66:                                               ; preds = %51
  %67 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %68 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %71 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %74 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @copyin(i64 %69, i32 %72, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* @LOG_ERR, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @NECPLOG(i32 %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %166

83:                                               ; preds = %66
  %84 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %85 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %84, i32 0, i32 8
  %86 = load i32, i32* @necp_fd_mtx_grp, align 4
  %87 = load i32, i32* @necp_fd_mtx_attr, align 4
  %88 = call i32 @lck_mtx_init(i32* %85, i32 %86, i32 %87)
  %89 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %90 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %89, i32 0, i32 7
  %91 = load i32, i32* @necp_fd_mtx_grp, align 4
  %92 = load i32, i32* @necp_fd_mtx_attr, align 4
  %93 = call i32 @lck_mtx_init(i32* %90, i32 %91, i32 %92)
  %94 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %95 = call i32 @necp_client_retain(%struct.necp_client* %94)
  %96 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %97 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %100 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %102 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %105 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %107 = bitcast %struct.necp_fd_data* %106 to i8*
  %108 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %109 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %108, i32 0, i32 4
  store i8* %107, i8** %109, align 8
  %110 = load %struct.proc*, %struct.proc** %6, align 8
  %111 = call i64 @csproc_get_platform_binary(%struct.proc* %110)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 0, i32 1
  %115 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %116 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %118 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @necp_generate_client_id(i32 %119, i32 0)
  %121 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %122 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %121, i32 0, i32 3
  %123 = call i32 @LIST_INIT(i32* %122)
  %124 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %125 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %124, i32 0, i32 2
  %126 = call i32 @RB_INIT(i32* %125)
  %127 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %128 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %8, align 8
  %131 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @copyout(i32 %129, i32 %132, i32 4)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %83
  %137 = load i32, i32* @LOG_ERR, align 4
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @NECPLOG(i32 %137, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %166

140:                                              ; preds = %83
  %141 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %142 = call i32 @necp_client_update_observer_add(%struct.necp_client* %141)
  %143 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %144 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %143)
  %145 = load i32, i32* @_necp_client_tree, align 4
  %146 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %147 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %146, i32 0, i32 1
  %148 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %149 = call i32 @RB_INSERT(i32 %145, i32* %147, %struct.necp_client* %148)
  %150 = call i32 @OSIncrementAtomic(i32* @necp_client_count)
  %151 = call i32 (...) @NECP_CLIENT_TREE_LOCK_EXCLUSIVE()
  %152 = load i32, i32* @_necp_client_global_tree, align 4
  %153 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %154 = call i32 @RB_INSERT(i32 %152, i32* @necp_client_global_tree, %struct.necp_client* %153)
  %155 = call i32 (...) @NECP_CLIENT_TREE_UNLOCK()
  %156 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %157 = call i32 @NECP_CLIENT_LOCK(%struct.necp_client* %156)
  %158 = call i32 (...) @current_proc()
  %159 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %160 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %161 = call i32 @necp_update_client_result(i32 %158, %struct.necp_fd_data* %159, %struct.necp_client* %160, i32* null)
  %162 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %163 = call i32 @NECP_CLIENT_UNLOCK(%struct.necp_client* %162)
  %164 = load %struct.necp_fd_data*, %struct.necp_fd_data** %7, align 8
  %165 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %164)
  br label %166

166:                                              ; preds = %140, %136, %79, %64
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %171 = icmp ne %struct.necp_client* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.necp_client*, %struct.necp_client** %11, align 8
  %174 = load i32, i32* @M_NECP, align 4
  %175 = call i32 @FREE(%struct.necp_client* %173, i32 %174)
  store %struct.necp_client* null, %struct.necp_client** %11, align 8
  br label %176

176:                                              ; preds = %172, %169
  br label %177

177:                                              ; preds = %176, %166
  %178 = load i32, i32* %10, align 4
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %49, %18
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local %struct.necp_client* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @copyin(i64, i32, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @necp_client_retain(%struct.necp_client*) #1

declare dso_local i64 @csproc_get_platform_binary(%struct.proc*) #1

declare dso_local i32 @necp_generate_client_id(i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

declare dso_local i32 @necp_client_update_observer_add(%struct.necp_client*) #1

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.necp_client*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @NECP_CLIENT_TREE_LOCK_EXCLUSIVE(...) #1

declare dso_local i32 @NECP_CLIENT_TREE_UNLOCK(...) #1

declare dso_local i32 @NECP_CLIENT_LOCK(%struct.necp_client*) #1

declare dso_local i32 @necp_update_client_result(i32, %struct.necp_fd_data*, %struct.necp_client*, i32*) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @NECP_CLIENT_UNLOCK(%struct.necp_client*) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @FREE(%struct.necp_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
