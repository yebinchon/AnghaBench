; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_get_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfileconfig_file.c_config_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_entry_list = type { i32, %struct.config_entry_list* }
%struct.TYPE_3__ = type { %struct.config_entry_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_entry_list* (%struct.TYPE_3__*, i8*, %struct.config_entry_list**)* @config_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_entry_list* @config_get_entry(%struct.TYPE_3__* %0, i8* %1, %struct.config_entry_list** %2) #0 {
  %4 = alloca %struct.config_entry_list*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.config_entry_list**, align 8
  %8 = alloca %struct.config_entry_list*, align 8
  %9 = alloca %struct.config_entry_list*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.config_entry_list** %2, %struct.config_entry_list*** %7, align 8
  store %struct.config_entry_list* null, %struct.config_entry_list** %8, align 8
  %10 = load %struct.config_entry_list**, %struct.config_entry_list*** %7, align 8
  %11 = icmp ne %struct.config_entry_list** %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.config_entry_list**, %struct.config_entry_list*** %7, align 8
  %14 = load %struct.config_entry_list*, %struct.config_entry_list** %13, align 8
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi %struct.config_entry_list* [ %14, %12 ], [ null, %15 ]
  store %struct.config_entry_list* %17, %struct.config_entry_list** %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.config_entry_list*, %struct.config_entry_list** %19, align 8
  store %struct.config_entry_list* %20, %struct.config_entry_list** %8, align 8
  br label %21

21:                                               ; preds = %35, %16
  %22 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %23 = icmp ne %struct.config_entry_list* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %27 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @string_is_equal(i8* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  store %struct.config_entry_list* %32, %struct.config_entry_list** %4, align 8
  br label %46

33:                                               ; preds = %24
  %34 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  store %struct.config_entry_list* %34, %struct.config_entry_list** %9, align 8
  br label %35

35:                                               ; preds = %33
  %36 = load %struct.config_entry_list*, %struct.config_entry_list** %8, align 8
  %37 = getelementptr inbounds %struct.config_entry_list, %struct.config_entry_list* %36, i32 0, i32 1
  %38 = load %struct.config_entry_list*, %struct.config_entry_list** %37, align 8
  store %struct.config_entry_list* %38, %struct.config_entry_list** %8, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.config_entry_list**, %struct.config_entry_list*** %7, align 8
  %41 = icmp ne %struct.config_entry_list** %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.config_entry_list*, %struct.config_entry_list** %9, align 8
  %44 = load %struct.config_entry_list**, %struct.config_entry_list*** %7, align 8
  store %struct.config_entry_list* %43, %struct.config_entry_list** %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  store %struct.config_entry_list* null, %struct.config_entry_list** %4, align 8
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.config_entry_list*, %struct.config_entry_list** %4, align 8
  ret %struct.config_entry_list* %47
}

declare dso_local i64 @string_is_equal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
