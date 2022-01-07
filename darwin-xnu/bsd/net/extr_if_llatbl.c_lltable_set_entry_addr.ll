; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_lltable_set_entry_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_lltable_set_entry_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.llentry = type { i32, i32, i32 }

@LLE_VALID = common dso_local global i32 0, align 4
@RLLE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lltable_set_entry_addr(%struct.ifnet* %0, %struct.llentry* %1, i8* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.llentry*, align 8
  %6 = alloca i8*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.llentry* %1, %struct.llentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.llentry*, %struct.llentry** %5, align 8
  %9 = getelementptr inbounds %struct.llentry, %struct.llentry* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bcopy(i8* %7, i32* %9, i32 %12)
  %14 = load i32, i32* @LLE_VALID, align 4
  %15 = load %struct.llentry*, %struct.llentry** %5, align 8
  %16 = getelementptr inbounds %struct.llentry, %struct.llentry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @RLLE_VALID, align 4
  %20 = load %struct.llentry*, %struct.llentry** %5, align 8
  %21 = getelementptr inbounds %struct.llentry, %struct.llentry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  ret void
}

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
