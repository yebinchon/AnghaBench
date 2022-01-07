; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemb.c_btmemb_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemb.c_btmemb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memb_blks = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btmemb_init(%struct.memb_blks* %0) #0 {
  %2 = alloca %struct.memb_blks*, align 8
  store %struct.memb_blks* %0, %struct.memb_blks** %2, align 8
  %3 = load %struct.memb_blks*, %struct.memb_blks** %2, align 8
  %4 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.memb_blks*, %struct.memb_blks** %2, align 8
  %7 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @MEM_ALIGN_SIZE(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 4
  %12 = load %struct.memb_blks*, %struct.memb_blks** %2, align 8
  %13 = getelementptr inbounds %struct.memb_blks, %struct.memb_blks* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %11, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @MEMSET(i32 %5, i32 0, i32 %17)
  ret void
}

declare dso_local i32 @MEMSET(i32, i32, i32) #1

declare dso_local i32 @MEM_ALIGN_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
