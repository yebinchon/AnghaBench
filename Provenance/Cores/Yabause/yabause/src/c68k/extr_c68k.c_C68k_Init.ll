; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/c68k/extr_c68k.c_C68k_Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/c68k/extr_c68k.c_C68k_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }

@C68k_Read_Dummy = common dso_local global i32 0, align 4
@C68k_Write_Dummy = common dso_local global i32 0, align 4
@C68k_Interrupt_Ack_Dummy = common dso_local global i32* null, align 8
@C68k_Reset_Dummy = common dso_local global i32 0, align 4
@C68K_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @C68k_Init(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = call i32 @memset(%struct.TYPE_9__* %5, i32 0, i32 16)
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @C68k_Read_Dummy, align 4
  %9 = call i32 @C68k_Set_ReadB(%struct.TYPE_9__* %7, i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = load i32, i32* @C68k_Read_Dummy, align 4
  %12 = call i32 @C68k_Set_ReadW(%struct.TYPE_9__* %10, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load i32, i32* @C68k_Write_Dummy, align 4
  %15 = call i32 @C68k_Set_WriteB(%struct.TYPE_9__* %13, i32 %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = load i32, i32* @C68k_Write_Dummy, align 4
  %18 = call i32 @C68k_Set_WriteW(%struct.TYPE_9__* %16, i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** @C68k_Interrupt_Ack_Dummy, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @C68k_Reset_Dummy, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @C68K_DISABLE, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = call i32 @C68k_Exec(%struct.TYPE_9__* %38, i32 0)
  %40 = load i32, i32* @C68K_DISABLE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @C68k_Set_ReadB(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @C68k_Set_ReadW(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @C68k_Set_WriteB(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @C68k_Set_WriteW(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @C68k_Exec(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
