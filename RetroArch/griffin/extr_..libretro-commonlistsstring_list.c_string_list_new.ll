; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @string_list_new() #0 {
  %1 = alloca %struct.string_list*, align 8
  %2 = alloca %struct.string_list*, align 8
  %3 = call i64 @calloc(i32 1, i32 4)
  %4 = inttoptr i64 %3 to %struct.string_list*
  store %struct.string_list* %4, %struct.string_list** %2, align 8
  %5 = load %struct.string_list*, %struct.string_list** %2, align 8
  %6 = icmp ne %struct.string_list* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.string_list* null, %struct.string_list** %1, align 8
  br label %17

8:                                                ; preds = %0
  %9 = load %struct.string_list*, %struct.string_list** %2, align 8
  %10 = call i32 @string_list_capacity(%struct.string_list* %9, i32 32)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load %struct.string_list*, %struct.string_list** %2, align 8
  %14 = call i32 @string_list_free(%struct.string_list* %13)
  store %struct.string_list* null, %struct.string_list** %1, align 8
  br label %17

15:                                               ; preds = %8
  %16 = load %struct.string_list*, %struct.string_list** %2, align 8
  store %struct.string_list* %16, %struct.string_list** %1, align 8
  br label %17

17:                                               ; preds = %15, %12, %7
  %18 = load %struct.string_list*, %struct.string_list** %1, align 8
  ret %struct.string_list* %18
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @string_list_capacity(%struct.string_list*, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
