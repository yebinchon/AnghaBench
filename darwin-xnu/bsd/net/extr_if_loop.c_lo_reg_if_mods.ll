; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_loop.c_lo_reg_if_mods.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_loop.c_lo_reg_if_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_INET = common dso_local global i32 0, align 4
@APPLE_IF_FAM_LOOPBACK = common dso_local global i32 0, align 4
@lo_attach_proto = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"proto_register_plumber failed for AF_INET error=%d\0A\00", align 1
@PF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"proto_register_plumber failed for AF_INET6 error=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lo_reg_if_mods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_reg_if_mods() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @PF_INET, align 4
  %3 = load i32, i32* @APPLE_IF_FAM_LOOPBACK, align 4
  %4 = load i32, i32* @lo_attach_proto, align 4
  %5 = call i32 @proto_register_plumber(i32 %2, i32 %3, i32 %4, i32* null)
  store i32 %5, i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, i32* @PF_INET6, align 4
  %12 = load i32, i32* @APPLE_IF_FAM_LOOPBACK, align 4
  %13 = load i32, i32* @lo_attach_proto, align 4
  %14 = call i32 @proto_register_plumber(i32 %11, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @proto_register_plumber(i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
