; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_init_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_dir_init_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.rarch_dir_list = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@dir_shader_list = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@DIR_LIST_SHADERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s \22%s\22\0A\00", align 1
@MSG_FOUND_SHADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dir_init_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_init_shader() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rarch_dir_list*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.rarch_dir_list* bitcast (i32* @dir_shader_list to %struct.rarch_dir_list*), %struct.rarch_dir_list** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8, %0
  store i32 0, i32* %1, align 4
  br label %71

16:                                               ; preds = %8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @DIR_LIST_SHADERS, align 4
  %22 = call %struct.TYPE_10__* @dir_list_new_special(i32* %20, i32 %21, i32* null)
  %23 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %24 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %23, i32 0, i32 0
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %24, align 8
  %25 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %26 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %31 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %16
  %37 = call i32 (...) @dir_free_shader()
  store i32 0, i32* %1, align 4
  br label %71

38:                                               ; preds = %29
  %39 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %40 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %42 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = call i32 @dir_list_sort(%struct.TYPE_10__* %43, i32 0)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %67, %38
  %46 = load i32, i32* %2, align 4
  %47 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %48 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %46, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %45
  %54 = load i32, i32* @MSG_FOUND_SHADER, align 4
  %55 = call i32 @msg_hash_to_str(i32 %54)
  %56 = load %struct.rarch_dir_list*, %struct.rarch_dir_list** %3, align 8
  %57 = getelementptr inbounds %struct.rarch_dir_list, %struct.rarch_dir_list* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32, i32* %2, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %65)
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %2, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %45

70:                                               ; preds = %45
  store i32 1, i32* %1, align 4
  br label %71

71:                                               ; preds = %70, %36, %15
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_10__* @dir_list_new_special(i32*, i32, i32*) #1

declare dso_local i32 @dir_free_shader(...) #1

declare dso_local i32 @dir_list_sort(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
