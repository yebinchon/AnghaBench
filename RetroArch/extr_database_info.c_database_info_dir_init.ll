; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_dir_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_dir_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, %struct.string_list* }
%struct.string_list = type { i32 }
%struct.TYPE_7__ = type { i32* }

@DATABASE_STATUS_ITERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @database_info_dir_init(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.string_list*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store %struct.string_list* null, %struct.string_list** %11, align 8
  %13 = call i64 @calloc(i32 1, i32 24)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %12, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %52

18:                                               ; preds = %4
  %19 = call i32 @core_info_get_list(%struct.TYPE_7__** %10)
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32* [ %26, %23 ], [ null, %27 ]
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.string_list* @dir_list_new(i8* %20, i32* %29, i32 0, i32 %30, i32 0, i32 1)
  store %struct.string_list* %31, %struct.string_list** %11, align 8
  %32 = load %struct.string_list*, %struct.string_list** %11, align 8
  %33 = icmp ne %struct.string_list* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = call i32 @free(%struct.TYPE_6__* %35)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %52

37:                                               ; preds = %28
  %38 = load %struct.string_list*, %struct.string_list** %11, align 8
  %39 = call i32 @dir_list_prioritize(%struct.string_list* %38)
  %40 = load %struct.string_list*, %struct.string_list** %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store %struct.string_list* %40, %struct.string_list** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @DATABASE_STATUS_ITERATE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %5, align 8
  br label %52

52:                                               ; preds = %37, %34, %17
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %53
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @core_info_get_list(%struct.TYPE_7__**) #1

declare dso_local %struct.string_list* @dir_list_new(i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @dir_list_prioritize(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
