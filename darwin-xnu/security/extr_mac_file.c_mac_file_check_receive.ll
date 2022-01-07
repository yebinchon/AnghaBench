; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_check_receive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_check_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.fileglob = type { i32 }

@file_check_receive = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_file_check_receive(%struct.ucred* %0, %struct.fileglob* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.fileglob*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.fileglob* %1, %struct.fileglob** %4, align 8
  %6 = load i32, i32* @file_check_receive, align 4
  %7 = load %struct.ucred*, %struct.ucred** %3, align 8
  %8 = load %struct.fileglob*, %struct.fileglob** %4, align 8
  %9 = load %struct.fileglob*, %struct.fileglob** %4, align 8
  %10 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MAC_CHECK(i32 %6, %struct.ucred* %7, %struct.fileglob* %8, i32 %11)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @MAC_CHECK(i32, %struct.ucred*, %struct.fileglob*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
