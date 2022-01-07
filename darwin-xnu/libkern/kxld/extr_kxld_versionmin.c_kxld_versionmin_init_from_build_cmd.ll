; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_versionmin.c_kxld_versionmin_init_from_build_cmd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_versionmin.c_kxld_versionmin_init_from_build_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.build_version_command = type { i32, i32, i32, i32 }

@kKxldVersionMinMacOSX = common dso_local global i32 0, align 4
@kKxldVersionMiniPhoneOS = common dso_local global i32 0, align 4
@kKxldVersionMinAppleTVOS = common dso_local global i32 0, align 4
@kKxldVersionMinWatchOS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kxld_versionmin_init_from_build_cmd(%struct.build_version_command* %0, %struct.build_version_command* %1) #0 {
  %3 = alloca %struct.build_version_command*, align 8
  %4 = alloca %struct.build_version_command*, align 8
  store %struct.build_version_command* %0, %struct.build_version_command** %3, align 8
  store %struct.build_version_command* %1, %struct.build_version_command** %4, align 8
  %5 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %6 = call i32 @check(%struct.build_version_command* %5)
  %7 = load %struct.build_version_command*, %struct.build_version_command** %4, align 8
  %8 = call i32 @check(%struct.build_version_command* %7)
  %9 = load %struct.build_version_command*, %struct.build_version_command** %4, align 8
  %10 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %28 [
    i32 130, label %12
    i32 131, label %16
    i32 129, label %20
    i32 128, label %24
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @kKxldVersionMinMacOSX, align 4
  %14 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %15 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* @kKxldVersionMiniPhoneOS, align 4
  %18 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %19 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load i32, i32* @kKxldVersionMinAppleTVOS, align 4
  %22 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %23 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @kKxldVersionMinWatchOS, align 4
  %26 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %27 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %29

28:                                               ; preds = %2
  br label %38

29:                                               ; preds = %24, %20, %16, %12
  %30 = load %struct.build_version_command*, %struct.build_version_command** %4, align 8
  %31 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %34 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.build_version_command*, %struct.build_version_command** %3, align 8
  %37 = getelementptr inbounds %struct.build_version_command, %struct.build_version_command* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @check(%struct.build_version_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
