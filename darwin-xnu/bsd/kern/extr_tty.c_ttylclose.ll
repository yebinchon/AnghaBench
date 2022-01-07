; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttylclose.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty.c_ttylclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@FNONBLOCK = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttylclose(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tty*, %struct.tty** %3, align 8
  %6 = call i32 @TTY_LOCK_OWNED(%struct.tty* %5)
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FNONBLOCK, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.tty*, %struct.tty** %3, align 8
  %13 = call i64 @ttywflush(%struct.tty* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %2
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = load i32, i32* @FREAD, align 4
  %18 = load i32, i32* @FWRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ttyflush(%struct.tty* %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %11
  ret i32 0
}

declare dso_local i32 @TTY_LOCK_OWNED(%struct.tty*) #1

declare dso_local i64 @ttywflush(%struct.tty*) #1

declare dso_local i32 @ttyflush(%struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
