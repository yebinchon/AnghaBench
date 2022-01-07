; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_dir_list.c_dir_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_dir_list.c_dir_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @dir_list_new(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.string_list*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.string_list* null, %struct.string_list** %14, align 8
  %15 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %15, %struct.string_list** %14, align 8
  %16 = icmp ne %struct.string_list* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  store %struct.string_list* null, %struct.string_list** %7, align 8
  br label %33

18:                                               ; preds = %6
  %19 = load %struct.string_list*, %struct.string_list** %14, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @dir_list_append(%struct.string_list* %19, i8* %20, i8* %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct.string_list*, %struct.string_list** %14, align 8
  %30 = call i32 @string_list_free(%struct.string_list* %29)
  store %struct.string_list* null, %struct.string_list** %7, align 8
  br label %33

31:                                               ; preds = %18
  %32 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %32, %struct.string_list** %7, align 8
  br label %33

33:                                               ; preds = %31, %28, %17
  %34 = load %struct.string_list*, %struct.string_list** %7, align 8
  ret %struct.string_list* %34
}

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @dir_list_append(%struct.string_list*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
