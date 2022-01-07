; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_main.c_CG_RegisterClients.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_main.c_CG_RegisterClients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_RegisterClients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_RegisterClients() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %4 = call i32 @CG_LoadingClient(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %6 = call i32 @CG_NewClientInfo(i32 %5)
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %31, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @MAX_CLIENTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cg, i32 0, i32 0), align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %31

16:                                               ; preds = %11
  %17 = load i32, i32* @CS_PLAYERS, align 4
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i8* @CG_ConfigString(i32 %19)
  store i8* %20, i8** %2, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @CG_LoadingClient(i32 %27)
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @CG_NewClientInfo(i32 %29)
  br label %31

31:                                               ; preds = %26, %25, %15
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %7

34:                                               ; preds = %7
  %35 = call i32 (...) @CG_BuildSpectatorString()
  ret void
}

declare dso_local i32 @CG_LoadingClient(i32) #1

declare dso_local i32 @CG_NewClientInfo(i32) #1

declare dso_local i8* @CG_ConfigString(i32) #1

declare dso_local i32 @CG_BuildSpectatorString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
