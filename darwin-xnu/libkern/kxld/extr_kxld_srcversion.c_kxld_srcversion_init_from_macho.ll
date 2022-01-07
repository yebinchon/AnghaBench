; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_srcversion.c_kxld_srcversion_init_from_macho.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_srcversion.c_kxld_srcversion_init_from_macho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.source_version_command = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kxld_srcversion_init_from_macho(%struct.source_version_command* %0, %struct.source_version_command* %1) #0 {
  %3 = alloca %struct.source_version_command*, align 8
  %4 = alloca %struct.source_version_command*, align 8
  store %struct.source_version_command* %0, %struct.source_version_command** %3, align 8
  store %struct.source_version_command* %1, %struct.source_version_command** %4, align 8
  %5 = load %struct.source_version_command*, %struct.source_version_command** %3, align 8
  %6 = call i32 @check(%struct.source_version_command* %5)
  %7 = load %struct.source_version_command*, %struct.source_version_command** %4, align 8
  %8 = call i32 @check(%struct.source_version_command* %7)
  %9 = load %struct.source_version_command*, %struct.source_version_command** %4, align 8
  %10 = getelementptr inbounds %struct.source_version_command, %struct.source_version_command* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.source_version_command*, %struct.source_version_command** %3, align 8
  %13 = getelementptr inbounds %struct.source_version_command, %struct.source_version_command* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @TRUE, align 4
  %15 = load %struct.source_version_command*, %struct.source_version_command** %3, align 8
  %16 = getelementptr inbounds %struct.source_version_command, %struct.source_version_command* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @check(%struct.source_version_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
