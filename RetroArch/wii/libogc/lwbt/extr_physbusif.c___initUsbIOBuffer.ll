; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___initUsbIOBuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___initUsbIOBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memb_blks = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memb_blks*, i32, i32)* @__initUsbIOBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__initUsbIOBuffer(%struct.memb_blks* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memb_blks*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.memb_blks* %0, %struct.memb_blks** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @MEM_ALIGN_SIZE(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %13, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = call i32 (...) @SYS_GetArena2Hi()
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = call i64 @ROUNDDOWN32(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 (...) @SYS_GetArena2Lo()
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 -4, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @SYS_SetArena2Hi(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.memb_blks*, %struct.memb_blks** %5, align 8
  %33 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.memb_blks*, %struct.memb_blks** %5, align 8
  %36 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.memb_blks*, %struct.memb_blks** %5, align 8
  %39 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.memb_blks*, %struct.memb_blks** %5, align 8
  %41 = call i32 @btmemb_init(%struct.memb_blks* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %28, %27
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @MEM_ALIGN_SIZE(i32) #1

declare dso_local i64 @ROUNDDOWN32(i32) #1

declare dso_local i32 @SYS_GetArena2Hi(...) #1

declare dso_local i32 @SYS_GetArena2Lo(...) #1

declare dso_local i32 @SYS_SetArena2Hi(i32*) #1

declare dso_local i32 @btmemb_init(%struct.memb_blks*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
