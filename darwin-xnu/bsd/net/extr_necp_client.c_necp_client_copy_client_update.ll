; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_copy_client_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_copy_client_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_fd_data = type { i32, i64, i32 }
%struct.necp_client_action_args = type { i32, i64, i32, i32 }
%struct.necp_client_update = type { i64, i32, i32* }

@NECP_OPEN_FLAG_PUSH_OBSERVER = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"NECP fd is not observer, cannot copy client update\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Client id invalid, cannot copy client update\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Buffer invalid, cannot copy client update\00", align 1
@chain = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"Copy client update copyout client id error (%d)\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Buffer size cannot hold update (%zu < %zu)\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Copy client update copyout error (%d)\00", align 1
@M_NECP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_fd_data*, %struct.necp_client_action_args*, i32*)* @necp_client_copy_client_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_copy_client_update(%struct.necp_fd_data* %0, %struct.necp_client_action_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.necp_fd_data*, align 8
  %6 = alloca %struct.necp_client_action_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.necp_client_update*, align 8
  store %struct.necp_fd_data* %0, %struct.necp_fd_data** %5, align 8
  store %struct.necp_client_action_args* %1, %struct.necp_client_action_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %12 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NECP_OPEN_FLAG_PUSH_OBSERVER, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @LOG_ERR, align 4
  %19 = call i32 @NECPLOG0(i32 %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %145

21:                                               ; preds = %3
  %22 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %23 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 4
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %29 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %21
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @NECPLOG0(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %145

36:                                               ; preds = %27
  %37 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %38 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %43 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = call i32 @NECPLOG0(i32 %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %145

50:                                               ; preds = %41
  %51 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %52 = call i32 @NECP_FD_LOCK(%struct.necp_fd_data* %51)
  %53 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %54 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %53, i32 0, i32 2
  %55 = call %struct.necp_client_update* @TAILQ_FIRST(i32* %54)
  store %struct.necp_client_update* %55, %struct.necp_client_update** %9, align 8
  %56 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %57 = icmp ne %struct.necp_client_update* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %50
  %59 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %60 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %59, i32 0, i32 2
  %61 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %62 = load i32, i32* @chain, align 4
  %63 = call i32 @TAILQ_REMOVE(i32* %60, %struct.necp_client_update* %61, i32 %62)
  %64 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %65 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %71 = getelementptr inbounds %struct.necp_fd_data, %struct.necp_fd_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %58, %50
  %75 = load %struct.necp_fd_data*, %struct.necp_fd_data** %5, align 8
  %76 = call i32 @NECP_FD_UNLOCK(%struct.necp_fd_data* %75)
  %77 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %78 = icmp ne %struct.necp_client_update* %77, null
  br i1 %78, label %79, label %141

79:                                               ; preds = %74
  %80 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %81 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %84 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @copyout(i32* %82, i32 %85, i32 4)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32, i32* @LOG_ERR, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %90, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  br label %137

93:                                               ; preds = %79
  %94 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %95 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %98 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load i32, i32* @LOG_ERR, align 4
  %103 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %104 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %108 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %106, i64 %109)
  %111 = load i32, i32* @EINVAL, align 4
  store i32 %111, i32* %8, align 4
  br label %136

112:                                              ; preds = %93
  %113 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %114 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %113, i32 0, i32 1
  %115 = load %struct.necp_client_action_args*, %struct.necp_client_action_args** %6, align 8
  %116 = getelementptr inbounds %struct.necp_client_action_args, %struct.necp_client_action_args* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %119 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @copyout(i32* %114, i32 %117, i32 %121)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load i32, i32* @LOG_ERR, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 (i32, i8*, i32, ...) @NECPLOG(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  br label %135

129:                                              ; preds = %112
  %130 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %131 = getelementptr inbounds %struct.necp_client_update, %struct.necp_client_update* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %125
  br label %136

136:                                              ; preds = %135, %101
  br label %137

137:                                              ; preds = %136, %89
  %138 = load %struct.necp_client_update*, %struct.necp_client_update** %9, align 8
  %139 = load i32, i32* @M_NECP, align 4
  %140 = call i32 @FREE(%struct.necp_client_update* %138, i32 %139)
  store %struct.necp_client_update* null, %struct.necp_client_update** %9, align 8
  br label %143

141:                                              ; preds = %74
  %142 = load i32, i32* @ENOENT, align 4
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %141, %137
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %46, %32, %17
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @NECP_FD_LOCK(%struct.necp_fd_data*) #1

declare dso_local %struct.necp_client_update* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.necp_client_update*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @NECP_FD_UNLOCK(%struct.necp_fd_data*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @FREE(%struct.necp_client_update*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
