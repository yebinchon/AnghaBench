; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_context_destroy_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_context_destroy_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lpl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @stripes_context_destroy_horizontal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_context_destroy_horizontal_list(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %9 = call i64 @stripes_list_get_size(%struct.TYPE_8__* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %10
  store i8* null, i8** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.TYPE_7__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_8__* %16, i32 %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @file_list_get_at_offset(i32 %25, i32 %26, i8** %5, i32* null, i32* null, i32* null)
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strstr(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30, %22
  br label %42

35:                                               ; preds = %30
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @video_driver_texture_unload(i32* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @video_driver_texture_unload(i32* %40)
  br label %42

42:                                               ; preds = %35, %34, %21
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %10

45:                                               ; preds = %10
  ret void
}

declare dso_local i64 @stripes_list_get_size(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_7__* @stripes_get_userdata_from_horizontal_list(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @file_list_get_at_offset(i32, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
