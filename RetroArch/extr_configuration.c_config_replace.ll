; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_replace.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_config_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_BLOCK_CONFIG_READ = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_replace(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %10 = call i8* @path_get(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @string_is_equal(i8* %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %21 = call i32 @path_is_empty(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @config_save_file(i8* %24)
  br label %26

26:                                               ; preds = %23, %19, %16
  %27 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @path_set(i32 %27, i8* %28)
  %30 = load i32, i32* @RARCH_CTL_UNSET_BLOCK_CONFIG_READ, align 4
  %31 = call i32 @rarch_ctl(i32 %30, i32* null)
  %32 = load i32, i32* @RARCH_PATH_CORE, align 4
  %33 = call i32 @path_clear(i32 %32)
  %34 = call i32 @task_push_start_dummy_core(%struct.TYPE_3__* %6)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @path_get(i32) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @path_is_empty(i32) #2

declare dso_local i32 @config_save_file(i8*) #2

declare dso_local i32 @path_set(i32, i8*) #2

declare dso_local i32 @rarch_ctl(i32, i32*) #2

declare dso_local i32 @path_clear(i32) #2

declare dso_local i32 @task_push_start_dummy_core(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
