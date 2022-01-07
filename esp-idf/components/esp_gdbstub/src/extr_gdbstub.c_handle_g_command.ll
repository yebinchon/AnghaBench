; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_handle_g_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_handle_g_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@s_scratch = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @handle_g_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_g_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_scratch, i32 0, i32 0), i32** %5, align 8
  %7 = call i32 (...) @esp_gdbstub_send_start()
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %13, align 4
  %16 = call i32 @gdbstub_hton(i32 %15)
  %17 = call i32 @esp_gdbstub_send_hex(i32 %16, i32 32)
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %8

21:                                               ; preds = %8
  %22 = call i32 (...) @esp_gdbstub_send_end()
  ret void
}

declare dso_local i32 @esp_gdbstub_send_start(...) #1

declare dso_local i32 @esp_gdbstub_send_hex(i32, i32) #1

declare dso_local i32 @gdbstub_hton(i32) #1

declare dso_local i32 @esp_gdbstub_send_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
